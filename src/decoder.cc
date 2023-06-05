#include "memory.hh"
#include "decoder.hh"
#include "generic_reference.hh"

#include <cassert>
#include <cstdint>
#include <tuple>

std::tuple<unsigned int, unsigned int, unsigned int> split_modregrm(std::uint8_t mrr) {
    return {(mrr & 0xC0) >> 6, (mrr & 0x38) >> 3, mrr & 0x7};
}

std::tuple<unsigned int, unsigned int, unsigned int> split_sib(std::uint8_t sib) {
    return split_modregrm(sib); // They use the same encoding.
}

std::tuple<Operands, unsigned int> decode_modregrm(std::uint8_t mrr, Memory& mem, unsigned long int pc, bool is8bit) {
    // A function that splits a modregrm byte into the required operands.
    // operands split into pointers.
    Operands op;
    const auto [mod, reg, rm] = split_modregrm(mrr);
    unsigned int skip = 2; // Skip both the opcode and modregrm.
    op.reg = reg;
    if (is8bit) {
        if (op.reg > 3) {
            op.reg_high_8bit = true;
            op.reg -= 4;
        }
    }
    if (mod == 3) {
        op.rm.reg = rm;
        op.rm.reg_field = true;
        if (is8bit) {
            if (rm > 3) {
                op.rm.reg = rm - 4;
                op.rm.reg_high_8bit = true;
            }
        }
    } else {
        op.rm.is_ptr = true;
        if (rm == 4) {
            // SIB indexing mode.
            std::uint8_t sib = mem[pc + 2]; // pc refers to the pc of the opcode so add 2 to skip opcode and mrr.
            const auto [scale, index, base] = split_sib(sib);
            ++skip; // add the sib byte to the skip.
            if (mod == 0) {
                if (base == 5) {
                    op.rm.displacement = mread<std::uint32_t>(mem.begin() + pc+3);
                    op.rm.scale = 1 << scale;
                    op.rm.has_scale = true;
                    op.rm.index = index;
                    op.rm.has_index = true;
                    skip += sizeof(std::uint32_t);
                } else {
                    op.rm.scale = 1 << scale;
                    op.rm.has_scale = true;
                    op.rm.index = index;
                    op.rm.has_index = true;
                    op.rm.base = base;
                    op.rm.has_base = true;
                }
            } else if (mod == 1) {
                op.rm.displacement = sext(mread<std::uint8_t>(mem.begin() + pc+3));
                op.rm.scale = 1 << scale;
                op.rm.has_scale = true;
                op.rm.index = index;
                op.rm.has_index = true;
                op.rm.base = base;
                op.rm.has_base = true;

                skip += sizeof(std::uint8_t);
            } else {
                op.rm.displacement = mread<std::uint32_t>(mem.begin() + pc+3);
                op.rm.scale = 1 << scale;
                op.rm.has_scale = true;
                op.rm.index = index;
                op.rm.has_index = true;
                op.rm.base = base;
                op.rm.has_base = true;
                skip += sizeof(std::uint32_t);
            }
        } else {
            if (mod == 0) {
                if (rm == 5) {
                    // 32 bit displacement only.
                    op.rm.displacement = mread<std::uint32_t>(mem.begin() + pc+2);
                    skip += sizeof(std::uint32_t);
                } else {
                    op.rm.reg_field = true;
                    op.rm.reg = rm;
                }
            } else if (mod == 1) {
                op.rm.displacement = sext(mread<std::uint8_t>(mem.begin() + pc+2));
                op.rm.reg_field = true;
                op.rm.reg = rm;
                skip += sizeof(std::uint8_t);
            } else { // mod == 2
                op.rm.displacement = mread<std::uint32_t>(mem.begin() + pc+2);
                op.rm.reg_field = true;
                op.rm.reg = rm;
                skip += sizeof(std::uint32_t);
            }
        }
    }
    // As it turns out, decoding memory operands by hand is a complete bastard!
    return {op, skip};
}


std::string reg_str(const unsigned int reg) {
    assert(reg < 8);
    static const std::string reg_strings[] = {"eax", "ecx", "edx", "ebx", "esp", "ebp", "esi", "edi"};
    return reg_strings[reg];
}

std::string reg_str_8(unsigned int reg, bool high) {
    assert(reg < 4);
    if (high) {
        static const std::string reg_strings[] = {"ah", "ch", "dh", "bh"};
        return reg_strings[reg];
    } else {
        static const std::string reg_strings[] = {"al", "cl", "dl", "bl"};
        return reg_strings[reg];
    }
}