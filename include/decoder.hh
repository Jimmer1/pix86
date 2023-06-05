#ifndef DECODER_HH
#define DECODER_HH

#include "cpu.hh"
#include "memory.hh"
#include "util.hh"
#include "generic_reference.hh"

#include <cstdint>
#include <tuple>
#include <cassert>
#include <string>
#include <iostream>

template <std::uint8_t Opcode>
struct is8bit {
    static constexpr bool value = !(Opcode & 1);
};

template <std::uint8_t Opcode>
static constexpr bool is8bit_v = is8bit<Opcode>::value;

template <std::uint8_t Opcode>
struct isRegDest {
    static constexpr bool value = Opcode & 2;
};

template <std::uint8_t Opcode>
static constexpr bool isRegDest_v = isRegDest<Opcode>::value;

std::tuple<unsigned int, unsigned int, unsigned int> split_modregrm(std::uint8_t);
std::tuple<unsigned int, unsigned int, unsigned int> split_sib(std::uint8_t);

std::string reg_str(unsigned int reg);
std::string reg_str_8(unsigned int reg, bool);

struct Operands {
    struct RM {
        std::uint32_t displacement = 0;
        unsigned int reg;
        unsigned int scale = 1;
        unsigned int base;
        unsigned int index;
        bool is_ptr = false;
        bool reg_field = false;
        bool has_base = false;
        bool has_index = false;
        bool has_scale = false;
        bool reg_high_8bit = false;
    } rm;

    unsigned int reg;
    bool reg_high_8bit = false;

// LCOV_EXCL_START
    friend std::ostream& operator<<(std::ostream& os, const Operands& ops) {
        os << "{rm field: ";
        if (ops.rm.is_ptr) {
            if (ops.rm.displacement && !ops.rm.reg_field && !ops.rm.has_base && !ops.rm.has_index && !ops.rm.has_scale) {
                os << '[' << std::hex << ops.rm.displacement << ']';
            } else if (ops.rm.displacement && ops.rm.reg_field && !ops.rm.has_base && !ops.rm.has_index && !ops.rm.has_scale) {
                os << '[' << std::hex << ops.rm.displacement << " + " << reg_str(ops.rm.reg) << ']';
            } else if (!ops.rm.displacement && ops.rm.reg_field && !ops.rm.has_base && !ops.rm.has_index && !ops.rm.has_scale) {
                os << '[' << reg_str(ops.rm.reg) << ']';
            } else if (ops.rm.displacement && !ops.rm.reg_field && !ops.rm.has_base && ops.rm.has_index && ops.rm.has_scale) {
                os << '[' << std::hex << ops.rm.displacement << " + " << ops.rm.scale << '*' << reg_str(ops.rm.index) << ']';
            } else if (ops.rm.displacement && !ops.rm.reg_field && ops.rm.has_base && ops.rm.has_index && ops.rm.has_scale) {
                os << '[' << std::hex << ops.rm.displacement << " + " << ops.rm.scale << '*' << reg_str(ops.rm.index) << " + " << reg_str(ops.rm.base) << ']';
            } else if (!ops.rm.displacement && !ops.rm.reg_field && ops.rm.has_base && ops.rm.has_index && ops.rm.has_scale) {
                os << '[' << ops.rm.scale << '*' << reg_str(ops.rm.index) << " + " << reg_str(ops.rm.base) << ']';
            }
        } else {
            if (ops.rm.reg_high_8bit) {
                os << reg_str_8(ops.rm.reg, true);
            } else {
                os << reg_str(ops.rm.reg);
            }
        }
        os << ", reg field: ";
        if (ops.reg_high_8bit) {
            os << reg_str_8(ops.reg, true);
        } else {
            os << reg_str(ops.reg);
        }
        os << '}';
        return os;
        // What has my life become!
    }
};
// LCOV_EXCL_STOP

std::tuple<Operands, unsigned int> decode_modregrm(std::uint8_t, Memory&, unsigned long int, bool);

template <typename I>
struct StructuredUnaryOperands {
    struct {
        GenericRegisterReference<std::uint32_t, I> r;
        GenericMemoryReference<I> m;
    } rm;
    bool is_rm_ptr;

    operator I&() {
        if (is_rm_ptr) {
            return static_cast<I&>(rm.m);
        } else {
            return static_cast<I&>(rm.r);
        }
    }

    operator const I&() const {
        if (is_rm_ptr) {
            return static_cast<I&>(rm.m);
        } else {
            return static_cast<I&>(rm.r);
        }
    }
};

template <typename I>
struct StructuredOperands {
    struct {
        GenericRegisterReference<std::uint32_t, I> r;
        GenericMemoryReference<I> m;
    } rm;
    bool is_rm_ptr;
    GenericRegisterReference<std::uint32_t, I> reg;

    I& reg_access() {
        return static_cast<I&>(reg);
    }

    I& rm_r_access() {
        assert(!is_rm_ptr);
        return static_cast<I&>(rm.r);
    }

    I& rm_m_access() {
        assert(is_rm_ptr);
        return static_cast<I&>(rm.m);
    }
};

// Fuck's sake, somehow I knew that there would be excessive template twattery somewhere
// in this fucking codebase!
// Like genuinely in an earlier attempt at this fucking ridiculous undertaking which I am
// nowhere near experienced to do, I wrote the entirety of the modregrm decoding code using
// templates which went as about as well as invading the Soviet fucking Union and still
// being there in the fucking winter.
template <typename I>
StructuredOperands<I> structure_operands(std::uint32_t (&R)[8], Memory& mem, const Operands& op) {
    StructuredOperands<I> so;

    if constexpr (std::is_same_v<I, std::uint8_t>) {      
        if (op.reg_high_8bit) {
            so.reg = GenericRegisterReference(&R[op.reg], get_low_word_high_byte, grh_set_low_word_high_byte);
        } else {
            so.reg = GenericRegisterReference(&R[op.reg], get_low_byte, grh_set_low_byte);
        }
    } else if constexpr (std::is_same_v<I, std::uint16_t>) {
        so.reg = GenericRegisterReference(&R[op.reg], get_low_word, grh_set_low_word);
    } else {
        so.reg = GenericRegisterReference(&R[op.reg], null_getter, grh_null_setter);
    }
    if (op.rm.is_ptr) {
        so.is_rm_ptr = true;
        std::uint32_t address = op.rm.displacement;
        if (op.rm.reg_field) {
            // Implies that there is no SIB bollockery.
            address += R[op.rm.reg];
        } else {
            // Here there be the cursed SIB bollockery.
            if (op.rm.has_base) {
                address += R[op.rm.base];
            }
            address += op.rm.scale*R[op.rm.index];
        }
        so.rm.m = GenericMemoryReference<I>(&mem[address]);
    } else {
        // Implies direct register access.
        so.is_rm_ptr = false;
        if constexpr (std::is_same_v<I, std::uint8_t>) {
            if (op.rm.reg_high_8bit) {
                so.rm.r = GenericRegisterReference(&R[op.rm.reg], get_low_word_high_byte, grh_set_low_word_high_byte);
            } else {
                so.rm.r = GenericRegisterReference(&R[op.rm.reg], get_low_byte, grh_set_low_byte);
            }
        } else if constexpr (std::is_same_v<I, std::uint16_t> ) {
            so.rm.r = GenericRegisterReference(&R[op.rm.reg], get_low_word, grh_set_low_word);
        } else {
            so.rm.r = GenericRegisterReference(&R[op.rm.reg], null_getter, grh_null_setter);
        }

    }
    return so;
}

template <typename I>
StructuredUnaryOperands<I> structure_unary_operands(std::uint32_t (&R)[8], Memory& mem, const Operands& op) {
    StructuredUnaryOperands<I> so;

    if (op.rm.is_ptr) {
        so.is_rm_ptr = true;
        std::uint32_t address = op.rm.displacement;
        if (op.rm.reg_field) {
            // Implies that there is no SIB bollockery.
            address += R[op.rm.reg];
        } else {
            // Here there be the cursed SIB bollockery.
            if (op.rm.has_base) {
                address += R[op.rm.base];
            }
            address += op.rm.scale*R[op.rm.index];
        }
        so.rm.m = GenericMemoryReference<I>(&mem[address]);
    } else {
        // Implies direct register access.
        so.is_rm_ptr = false;
        if constexpr (std::is_same_v<I, std::uint8_t>) {
            if (op.rm.reg_high_8bit) {
                so.rm.r = GenericRegisterReference(&R[op.rm.reg], get_low_word_high_byte, grh_set_low_word_high_byte);
            } else {
                so.rm.r = GenericRegisterReference(&R[op.rm.reg], get_low_byte, grh_set_low_byte);
            }
        } else if constexpr (std::is_same_v<I, std::uint16_t> ) {
            so.rm.r = GenericRegisterReference(&R[op.rm.reg], get_low_word, grh_set_low_word);
        } else {
            so.rm.r = GenericRegisterReference(&R[op.rm.reg], null_getter, grh_null_setter);
        }
    }
    return so;
}

#endif