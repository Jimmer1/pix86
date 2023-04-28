#include <algorithm>
#include <array>
#include <bit>
#include <cmath>
#include <cstdint>
#include <format>
#include <numbers>
#include <stdexcept>

static constexpr auto CPU_HALT = 0XDEADBEEF;

void set_low_byte(std::uint32_t& n, std::uint8_t v) {
    n = (n & 0xFFFFFF00) | v;
}

std::uint8_t get_low_byte(std::uint32_t n) {
    return n & 0xFF;
}

void set_low_word(std::uint32_t& n, std::uint16_t v) {
    n = (n & 0xFFFF0000) | v;
}

std::uint16_t get_low_word(std::uint32_t n) {
    return n & 0xFFFF;
}

void set_low_word_high_byte(std::uint32_t& n, std::uint8_t v) {
    n = (n & 0xFFFFFF00FF) | (v << 8);
}

std::uint8_t get_low_word_high_byte(std::uint32_t n) {
    return (n & 0xFF00) >> 8;
}

std::uint32_t high_dword(std::uint64_t n) {
    return (n & (0xFFFF << 16)) >> 16;
}

std::uint32_t low_dword(std::uint64_t n) {
    return n & 0xFFFFFFFF;
}

std::uint32_t smask(std::uint32_t n) {
    return (std::int32_t(n) < 0) ? 0xFFFFFFFF : 0;
}

std::uint16_t smask(std::uint16_t n) {
    return (std::int16_t(n) < 0) ? 0xFFFF : 0;
}

std::uint32_t sext(std::int16_t n) {
    return (n < 0) ? (0xFFFF << 16) | n : n;
}

std::uint32_t sext(std::int8_t n) {
    return (n < 0) ? 0xFFFFFF00 | n : n;
}

class ByteReference {
private:
    void *(destructor_)(std::uint32_t&, std::uint8_t);

    std::uint32_t& parent_;
    std::uint8_t value_;
public:
    ByteRegisterReference(std::uint8_t (*constructor)(std::uint32_t), void *(destructor)(std::uint32_t&, std::uint8_t), parent) {
        value_ = constructor(parent_);
        destructor_ = destructor;
    }

    ~ByteRegisterReference() {
        destructor_(parent_, value_);
    }
};

template <typename I>
I mread(unsigned char* sptr) {
    I rv;
    auto* dptr = reinterpret_cast<unsigned char*>(&rv);
    std::reverse_copy(sptr, sptr + sizeof(I), dptr);
    return rv;
}

template <typename I>
void mwrite(unsigned char* dptr, I value) {
    const auto* sptr = reinterpret_cast<unsigned char*>(&value);
    std::reverse_copy(sptr, sptr + sizeof(I), dptr);
}

class FPU {
private:
    std::array<long double, 8> v;
    int top = 7;
    std::array<int, 8> tagvals;
    unsigned int c3 = 0, c2 = 0, c1 = 0, c0 = 0;

    bool& carry;
    bool& zero;
    bool& parity;
public:
    long double& st(int i) {
        return v.at(top - i);
    }

    void stack_pop() {
        ++top;
    }

    void stack_push(long double x) {
        v.at(top--) = x;
    }

    int& tag(unsigned int i) {
        return tagvals[top - i]
    }
public:

    void f2xm1() {
        st(0) = std::exp2(st(0)) - 1;
    }

    void fabs() {
        st(0) = std::abs(st(0));
    }

    void fadd(unsigned int i) {
        st(0) += st(i);
    }

    void fadd_r(unsigned int i) {
        st(i) += st(0);
    }

    void faddp(unsigned int i) {
        st(i) += st(0);
        stack_pop();
    }

    void fchs() {
        st(0) = -st(0);
    }

    void fcmovb(unsigned int i) {
        if (carry) {
            st(0) = st(i);
        }
    }
    
    void fcmovbe(unsigned int i) {
        if (carry || zero) {
            st(0) = st(i);
        }
    }

    void fcmove(unsigned int i) {
        if (zero) {
            st(0) = st(i);
        }
    }

    void fcmovnb(unsigned int i) {
        if (! carry) {
            st(0) = st(i);
        }
    }

    void fcmovnbe(unsigned int i) {
        if (!carry && !zero) {
            st(0) = st(i);
        }
    }

    void fcmovne(unsigned int i) {
        if (! zero) {
            st(0) = st(i);
        }
    }

    void fcmovnu(unsigned int i) {
        if (! parity) {
            st(0) = st(i);
        }
    }

    void fcmovu(unsigned int i) {
        if (parity) {
            st(0) = st(i);
        }
    }

    void fcom(unsigned int i) {
        if (st(0) > st(i)) {
            c3 = c2 = c0 = 0;
        } else if (st(0) < st(i)) {
            c3 = c2 = 0;
            c0 = 1;
        } else if (st(0) == st(i)) {
            c3 = 1;
            c2 = c0 = 0;
        } else {
            c3 = c2 = c0 = 1;
        }
    }

    void fcomp(unsigned int i) {
        fcom(i);
        stack_pop();
    }

    void fcos() {
        st(0) = std::cos(st(0));
    }

    void fdecstp() {
        if (top == 0) {
            top = 7;
        } else {
            --top;
        }
    }

    void fdiv(unsigned int i) {
        st(0) /= st(i);
    }

    void fdiv_r(unsigned int i) {
        st(i) /= st(0);
    }

    void fdivp(unsigned int i) {
        st(i) /= st(0);
        stack_pop();
    }

    void fdivr(unsigned int i) {
        st(0) = st(i) / st(0);
    }

    void fdivr_R(unsigned int i) {
        st(i) = st(0) / st(i);
    }

    void fdivrp(unsigned int i) {
        st(i) = st(0) / st(i);
        stack_pop();
    }

    void ffree(unsigned int i) {
        tag(i) = 3;
    }

    void fincstp() {
        if (top == 7) {
            top = 0;
        } else {
            ++top;
        }
    }

    void fld(long double x) {
        stack_push(x);
    }

    void fld1() {
        stack_push(1.0L);
    }

    void fldl2e() {
        stack_push(std::log2(std::numbers::pi));
    }

    void fldl2t() {
        stack_push(std::log2(10.0L));
    }

    void fldlg2() {
        stack_push(std::log10(2.0L));
    }

    void fldln2() {
        stack_push(std::log(2.0L));
    }

    void fldpi() {
        stack_push(std::numbers::pi);
    }

    void fldz() {
        stack_push(0.0L);
    }

    void fmul(unsigned int i) {
        st(0) *= st(i);
    }

    void fmul_r(unsigned int i) {
        st(i) *= st(0);
    }

    void fmulp(unsigned int i) {
        st(i) *= st(0);
        stack_pop();
    }

    void fnop() {
        //
    }

    void fpatan() {
        st(1) = std::atan(st(1) / st(0));
        stack_pop();
    }

    void fptan() {
        st(0) = std::tan(st(0));
        stack_push(1.0L);
    }

    void fprem() {
        st(0) = std::fmod(st(0) / st(1));
    }

    void fprem1() {
        st(0) = std::fmod(st(0) / st(1));
    }

    void frndint() {
        st(0) = std::round(st(0));
    }

    void fscale() {
        st(0) = st(0) * std::exp2(std::trunc(st(1)));
    }

    void fsin() {
        st(0) = std::sin(st(0));
    }

    void fsincos() {
        auto tmp = std::cos(st(0));
        st(0) = std::sin(st(0));
        stack_push(tmp);
    }

    void fsqrt() {
        st(0) = std::sqrt(st(0));
    }

    void fst(unsigned int i) {
        st(i) = st(0);
    }

    void fstp(unsigned int i) {
        st(i) = st(0);
        stack_pop();
    }

    void fsub(unsigned int i) {
        st(0) -= st(i);
    }

    void fsub_r(unsigned int i) {
        st(i) -= st(0);
    }

    void fsubp(unsigned int i) {
        st(i) -= st(0);
        stack_pop();
    }

    void fsubr(unsigned int i) {
        st(0) = st(i) - st(0);
    }

    void fsubr_r(unsigned int i) {
        st(i) = st(0) - st(i);
    }

    void fsubrp(unsigned int i) {
        st(i) = st(0) - st(i);
        stack_pop();
    }

    void fxam() {
        c1 = std::signbit(st(0));
        switch (std::fpclassify(st(0))) {
            case FP_INFINITE: {
                c3 = 0;
                c2 = c0 = 1;
            } break;

            case FP_ZERO: {
                c2 = c0 = 0;
                c3 = 1;
            } break;

            case FP_SUBNORMAL: {
                c3 = c2 = 1;
                c0 = 0;
            } break;

            case FP_NAN: {
                c3 = c2 = 0;
                c0 = 1;
            } break;

            case FP_NORMAL: {
                if (tag(0) == 3) {
                    c3 = 1;
                    c2 = c0 = 0;
                } else {
                    c2 = 1;
                    c3 = c0 = 0;
                }
            } break;

            default: {
                c3 = c2 = c0 = 0;
            } break;
        }

    }

    void fxch(long double& sti) {
        std::swap(st(0), sti);
    }

    void fxtract() {
        int exp;
        long double mant = std::frexp(st(0), &exp);
        st(0) = mant;
        stack_push(static_cast<long double>(exp));
    }

    void fyl2x() {
        st(1) = st(1) * std::log2(st(0));
        stack_pop();
    }

    void fyl2xp1() {
        st(1) = st(1) * std::log2(st(0) + 1.0L);
        stack_pop();
    }
};

class Operand {
public:
};

class CPU {
public:
    bool carry = false;
    bool direction = false;
    bool parity = false;
    bool adjust = false;
    bool zero = false;
    bool sign = false;

    std::uint16_t cs = 0, ss = 0, ds = 0, es = 0, fs = 0, gs = 0;

    std::uint64_t cycle_counter = 0;
    std::uint32_t eax = 0, ecx = 0, edx = 0, ebx = 0, esp = 0, ebp = 0, esi = 0, edi = 0;

    // struct reg {
    //     struct {
    //         union {
    //             std::uint32_t eax;
    //             struct {
    //                 union {
    //                     std::uint16_t ax;
    //                     struct {
    //                         std::uint8_t al;
    //                         std::uint8_t ah;
    //                     };
    //                 };
    //                 std::uint16_t pad0;
    //             };
    //         };
    //     };
    //     struct {
    //         union {
    //             std::uint32_t ecx;
    //             struct {
    //                 union {
    //                     std::uint16_t cx;
    //                     struct {
    //                         std::uint8_t cl;
    //                         std::uint8_t ch;
    //                     };
    //                 };
    //                 std::uint16_t pad1;
    //             };
    //         };
    //     };
    //     struct {
    //         union {
    //             std::uint32_t edx;
    //             struct {
    //                 union {
    //                     std::uint16_t dx;
    //                     struct {
    //                         std::uint8_t dl;
    //                         std::uint8_t dh;
    //                     };
    //                 };
    //                 std::uint16_t pad2;
    //             };
    //         };
    //     };
    //     struct {
    //         union {
    //             std::uint32_t ebx;
    //             struct {
    //                 union {
    //                     std::uint16_t bx;
    //                     struct {
    //                         std::uint8_t bl;
    //                         std::uint8_t bh;
    //                     };
    //                 };
    //                 std::uint16_t pad3;
    //             };
    //         };
    //     };
    //     struct {
    //         union {
    //             std::uint32_t esp;
    //             struct {
    //                 std::uint16_t sp;
    //                 std::uint16_t pad4;
    //             };
    //         };
    //     };
    //     struct {
    //         union {
    //             std::uint32_t ebp;
    //             struct {
    //                 std::uint16_t bp;
    //                 std::uint16_t pad5;
    //             };
    //         };
    //     };
    //     struct {
    //         union {
    //             std::uint32_t esi;
    //             struct {
    //                 std::uint16_t si;
    //                 std::uint16_t pad6;
    //             };
    //         };
    //     };
    //     struct {
    //         union {
    //             std::uint32_t edi;
    //             struct {
    //                 std::uint16_t di;
    //                 std::uint16_t pad7;
    //             };
    //         };
    //     };
    // };

    std::uint8_t* mem;
    // data access helper functions.
    std::uint32_t& regat(int index) {
        switch (index) {
            case 0: return eax;
            case 1: return ecx;
            case 2: return edx;
            case 3: return ebx;
            case 4: return esp;
            case 5: return ebp;
            case 6: return esi;
            case 7: return edi;

            default: {
                throw std::domain_error(std::format("regat index value {} out of bounds.", index));
            } break;
        }
    }

    std::uint16_t& segregat(int index) {
        switch (index) {
            case 0: return cs;
            case 1: return ss;
            case 2: return ds;
            case 3: return es;
            case 4: return fs;
            case 5: return gs;

            default: {
                throw std::domain_error(std::format("segregat index value {} out of bounds.", index));
            } break;
        }
    }

    std::uint8_t stack_pop8() {
        return mem[esp++];
    }

    std::uint16_t stack_pop16() {
        auto tmp = mread<std::uint16_t>(&mem[esp]);
        esp += sizeof(std::uint16_t);
        return tmp;
    }

    std::uint32_t stack_pop32() {
        auto tmp = mread<std::uint32_t>(&mem[esp]);
        esp += sizeof(std::uint32_t);
        return tmp;
    }

    void stack_push8(std::uint8_t v) {
        mem[esp--] = v;
    }

    void stack_push16(std::uint16_t v) {
        mwrite<std::uint16_t>(&mem[esp], v);
        esp -= sizeof(std::uint16_t);
    }

    void stack_push32(std::uint32_t v) {
        mwrite<std::uint32_t>(&mem[esp], v);
        esp -= sizeof(std::uint32_t);
    }

    void set_add_flags(std::uint32_t lhs, std::uint32_t rhs, std::uint32_t rv) {
    }

    void set_or_flags(std::uint32_t lhs, std::uint32_t rhs, std::uint32_t rv) {
    }

    enum class OperandType {
        REGISTER,
        POINTER
    };

std::tuple<ByteReference, ByteReference, int> decode_modregrm8(std::uint8_t mrr, unsigned long int pc, bool rm_dest) {
        int mod = (mrr & (0b11 << 5)) >> 5;
        int reg = (mrr & (0b111 << 3)) >> 3;
        int rm = mrr & 0b111;

        int i = 0;
        std::uint32_t dest, src;

        switch (mod) {
            case 0b11: {
                if (0 <= rm && rm < 4) {
                    dest = rm;
                } else {
                    dest = rm - 4;
                }
                if (0 <= reg && reg < 4) {
                    src = reg;
                } else {
                    src = reg - 4;
                }
                if (!rm_dest) {
                    std::swap(dest, src);
                }
                return {ByteReference() 0};
            } break;

            default: {
                throw std::logic_error(std::format("Unimplemented memory addressing mode!"));
            } break;
        }
    }

public:

    void aad(std::uint8_t imm8) {
        std::uint8_t tmpAl = get_low_byte(eax);
        std::uint8_t tmpAh = get_low_word_high_byte(eax);

        set_low_byte(eax, (tmpAl + (tmpAh * imm8)) & 0xFF);
        set_low_word_high_byte(eax, 0);
    }

    void aam(std::uint8_t imm8) {
        std::uint8_t tmp = tmpAl = get_low_byte(eax);
        set_low_word_high_byte(eax, tmpAl / imm8);
        set_low_byte(eax, tmpAl % imm8);
    }

    std::uint8_t add8(std::uint8_t lhs, std::uint8_t rhs) {
        std::uint8_t tmp = lhs + rhs;
        set_add_flags(sext(lhs), sext(rhs), sext(tmp));
        return tmp;
    }

    std::uint16_t add16(std::uint16_t lhs, std::uint16_t rhs) {
        std::uint16_t tmp = lhs + rhs;
        set_add_flags(sext(lhs), sext(rhs), sext(tmp));
        return tmp;
    }

    std::uint32_t add32(std::uint32_t lhs, std::uint32_t rhs) {
        std::uint32_t tmp = lhs + rhs;
        set_add_flags(lhs, rhs, tmp);
        return tmp;
    }

    void bswap(std::uint32_t& reg) {
        reg = std::byteswap(reg);
    }

    void cbw() {
        set_low_word(eax, sext(get_low_byte(eax)));
    }

    void cdq() {
        edx = smask(eax);
    }

    void clc() {
        carry = false;
    }

    void cld() {
        direction = false;
    }

    void cmc() {
        carry ^= true;
    }

    void cwd() {
        set_low_word(edx, smask(get_low_word(eax)));
    }

    void cwde() {
        eax = sext(get_low_word(eax));
    }

    void hlt() {
        throw CPU_HALT;
    }

    void inc

    void lahf() {
        std::uint8_t tmp = (sign << 7)
            | (zero << 6)
            | (adjust << 4)
            | (parity << 2)
            | 0x2
            | carry;

        set_low_word_high_byte(eax, tmp);
    }

    void mov(std::uint32_t& reg, std::uint8_t imm8, bool high_byte) {
        if (high_byte) {
            set_low_word_high_byte(reg, imm8);
        } else {
            set_low_byte(reg, imm8);
        }
    }

    std::uint8_t or8(std::uint8_t lhs, std::uint8_t rhs) {
        std::uint8_t tmp = lhs | rhs;
        set_or_flags(sext(lhs), sext(rhs), sext(tmp));
        return tmp;
    }

    std::uint16_t or16(std::uint16_t lhs, std::uint16_t rhs) {
        std::uint16_t tmp = lhs | rhs;
        set_or_flags(sext(lhs), sext(rhs), sext(tmp));
        return tmp;
    }

    std::uint32_t or32(std::uint32_t lhs, std::uint32_t rhs) {
        std::uint32_t tmp = lhs | rhs;
        set_or_flags(lhs, rhs, tmp);
        return tmp;
    }

    void popa() {
        for (int i = 0; i < 8; ++i) {
            if (i == 4) {
                esp += 2;
            } else {
                set_low_word(regat(i), stack_pop16());
            }
        }
    }

    void popad() {
        for (int i = 0; i < 8; ++i) {
            if (i == 4) {
                esp += 4;
            } else {
                regat(i) = stack_pop32();
            }
        }
    }

    void push8(std::uint8_t v) {
        stack_push8(v);
    }

    void push16(std::uint16_t v) {
        stack_push16(v);
    }

    void push32(std::uint32_t v) {
        stack_push32(v);
    }

    void pusha() {
        auto tmp = get_low_word(esp);
        for (int i = 0; i < 8; ++i) {
            if (i == 4) {
                stack_push16(tmp);
            } else {
                stack_push16(get_low_word(regat(i)));
            }
        }
    }

    void pushad() {
        auto tmp = esp;
        for (int i = 0; i < 8; ++i) {
            if (i == 4) {
                stack_push32(tmp);
            } else {
                stack_push32(regat(i));
            }
        }
    }

    void sahf() {
        std::uint8_t ah = get_low_byte(eax);
        sign = ah & (1 << 7);
        zero = ah & (1 << 6);
        adjust = ah & (1 << 4);
        parity = ah & (1 << 2);
        carry = ah & 1;
    }

    void salc() {
        set_low_byte(eax, carry ? 0xFF : 0);
    }

    void stc() {
        carry = true;
    }

    void std() {
        direction = true;
    }

    void rdtsc() {
        edx = high_dword(cycle_counter);
        eax = low_dword(cycle_counter);
    }

    void xchg(std::uint32_t& reg) {
        std::swap(eax, reg);
    }

    void xlat() {
        set_low_byte(eax, mem[get_low_byte(eax) + ebx]);
    }
};

class SSE {
    union {
        std::uint64_t u64[2];
        std::uint32_t u32[4];
        std::uint16_t u16[8];
        std::uint8_t u8[16];
        double f64[2];
        float f32[4];
    } reg[8];
};

void execute() {
    CPU cpu{};
    FPU fpu{};

    unsigned long int pc = 0;
    bool is_16_bit_mode = false;
    while (true) {
        switch (std::uint8_t opcode = cpu.mem[pc]; opcode) {

            case 0x4: {
                std::uint8_t imm8 = cpu.mem[pc + 1];
                set_low_byte(eax, cpu.add(get_low_byte(eax), imm8));
                pc += 1 + sizeof(std::uint8_t);
            } break;

            case 0x5: {
                if (is_16_bit_mode) {
                    std::uint16_t imm16 = mread<std::uint16_t>(&cpu.mem[pc + 1]);
                    set_low_word(eax, cpu.add16(get_low_word(eax), imm16));
                    pc += 1 + sizeof(std::uint16_t);
                } else {
                    std::uint32_t imm32 = mread<std::uint32_t>(&cpu.mem[pc + 1]);
                    eax = cpu.add32(eax, imm32);
                    pc += 1 + sizeof(std::uint32_t);
                }
            } break;

            case 0x6: {
                cpu.push16(cpu.es);
                ++pc;
            } break;

            case 0x7: {
                cpu.es = cpu.pop16();
                ++pc;
            } break;

            case 0xC: {
                std::uint8_t imm8 = cpu.mem[pc + 1];
                set_low_byte(eax, cpu.or8(get_low_byte(eax), imm8));
                pc += 1 + sizeof(std::uint8_t);
            } break;

            case 0xD: {
                if (is_16_bit_mode) {
                    std::uint16_t imm16 = mread<std::uint16_t>(&cpu.mem[pc + 1]);
                    set_low_word(eax, cpu.or16(get_low_word(eax), imm16));
                    pc += 1 + sizeof(std::uint16_t);
                } else {
                    std::uint32_t imm32 = mread<std::uint32_t>(&cpu.mem[pc + 1]);
                    eax = cpu.or32(eax, imm32);
                    pc += 1 + sizeof(std::uint32_t);
                }
            } break;

            case 0xE: {
                cpu.push16(cpu.cs);
                ++pc;
            } break;

            case 0xF: {
                switch (std::uint8_t sOpcode = cpu.mem[pc + 1]; sOpcode) {
                    case 0x31: {
                        cpu.rdtsc();
                        ++pc;
                    } break;

                    case 0xA0: {
                        cpu.push16(cpu.fs);
                        pc += 2;
                    } break;

                    case 0xA2: {
                        // cpu.cpuid();
                        ++pc;
                    } break;

                    case 0xA8: {
                        cpu.push16(cpu.gs);
                        pc += 2;
                    } break;

                    case 0xC8 ... 0xCF: {
                        cpu.bswap(cpu.regat(sOpcode - 0xC8));
                        ++pc;
                    } break;
                }
            } break;

            case 0x16: {
                cpu.push16(cpu.ss);
                ++pc;
            } break;

            case 0x17: {
                cpu.ss = cpu.pop16();
                ++pc;
            } break;

            case 0x1E: {
                cpu.push16(cpu.ds);
                ++pc;
            } break;

            case 0x1F: {
                cpu.ds = cpu.pop16();
                ++pc;
            } break;

            case 0x40 ... 0x47: {
                std::uint32_t& reg = cpu.regat(opcode - 0x40);
                if (is_16_bit_mode) {
                    set_low_word(reg, cpu.inc(reg));
                } else {
                    reg = cpu.inc(reg);
                }
                ++pc;
            } break;

            case 0x48 ... 0x4F: {
                std::uint32_t& reg = cpu.regat(opcode - 0x40);
                if (is_16_bit_mode) {
                    set_low_word(reg, cpu.dec(reg));
                } else {
                    reg = cpu.dec(reg);
                }
                ++pc;
            } break;
            
            case 0x50 ... 0x57: {
                const auto reg = cpu.regat(opcode - 0x50);
                if (is_16_bit_mode) {
                    cpu.push16(get_low_word(reg));
                } else {
                    cpu.push32(reg);
                }
                ++pc;
            } break;

            case 0x58 ... 0x5F: {
                cpu.pop(cpu.regat(opcode - 0x58));
                ++pc;
            } break;
            
            case 0x60: {
                if (is_16_bit_mode) {
                    cpu.pusha();
                } else {
                    cpu.pushad();
                }
                ++pc;
            } break;

            case 0x61: {
                if (is_16_bit_mode) {
                    cpu.popa();
                } else {
                    cpu.popad();
                }
                ++pc;
            } break;

            case 0x68: {
                if (is_16_bit_mode) {
                    std::uint16_t imm16 = mread<std::uint16_t>(&cpu.mem[pc + 1]);
                    cpu.push16(imm16);
                    pc += 1 + sizeof(std::uint16_t);
                } else {
                    std::uint32_t imm32 = mread<std::uint32_t>(&cpu.mem[pc + 1]);
                    cpu.push32(imm32);
                    pc += 1 + sizeof(std::uint32_t);
                }
            } break;

            case 0x6A: {
                std::uint8_t imm8 = cpu.mem[pc + 1];
                cpu.push8(imm8);
                pc += 2;
            } break;

            case 0x90 ... 0x97: {
                cpu.xchg(cpu.regat(opcode - 0x90));
                ++pc;
            } break;

            case 0x98: {
                if (is_16_bit_mode) {
                    cpu.cbw();
                } else {
                    cpu.cwde();
                }
                ++pc;
            } break;

            case 0x99: {
                if (is_16_bit_mode) {
                    cpu.cwd();
                } else {
                    cpu.cdq();
                }
                ++pc;
            } break;

            case 0x9C: {
                if (is_16_bit_mode) {
                    cpu.pushf();
                } else {
                    cpu.pushfd();
                }
                ++pc;
            } break;

            case 0x9E: {
                cpu.sahf();
                ++pc;
            } break;

            case 0x9F: {
                cpu.lahf();
                ++pc;
            } break;

            case 0xB0 ... 0xB3: {
                std::uint8_t imm8 = cpu.mem[pc + 1];
                cpu.mov(cpu.regat(opcode - 0xB0), imm8, false);
                pc += 1 + sizeof(std::uint8_t);
            } break;

            case 0xB4 ... 0xB7: {
                std::uint8_t imm8 = cpu.mem[pc + 1];
                cpu.mov(cpu.regat(opcode - 0xB4), imm8, true);
                pc += 1 + sizeof(std::uint8_t);
            } break;

            case 0xB8 ... 0xBF: {
                if (is_16_bit_mode) {
                    std::uint16_t v16 = mread<std::uint16_t>(&cpu.mem[pc + 1]);
                    pc += 1 + sizeof(std::uint16_t);
                } else {
                    std::uint32_t v32 = mread<std::uint32_t>(&cpu.mem[pc + 1]);
                    pc += 1 + sizeof(std::uint32_t);
                }
            } break;

            case 0xD4 : {
                std::uint8_t imm8 = cpu.mem[pc + 1];
                cpu.aam(imm8);
                pc += 1 + sizeof(std::uint8_t);
            } break;

            case 0xD5: {
                std::uint8_t imm8 = cpu.mem[pc + 1];
                cpu.aad(imm8);
                pc += 1 + sizeof(std::uint8_t);
            } break;

            case 0xD6: {
                cpu.salc();
                ++pc;
            } break;

            case 0xD7: {
                cpu.xlat();
                ++pc;
            } break;

            case 0xD8: {
                switch (std::uint8_t mrr = cpu.mem[pc + 1]; mrr) {

                    // case 0x00 ... 0xBF: break;

                    case 0xC0 ... 0xC7: {
                        fpu.fadd(mrr - 0xC0);
                        pc += 2;
                    } break;

                    case 0xC8 ... 0xCF: {
                        fpu.fmul(mrr - 0xC8);
                        pc += 2;
                    } break;

                    case 0xD0 ... 0xD7: {
                        fpu.fcom(mrr - 0xD0);
                        pc += 2;
                    } break;

                    case 0xD8 ... 0xDF: {
                        fpu.fcomp(mrr - 0xD8);
                        pc += 2;
                    } break;

                    case 0xE0 ... 0xE7: {
                        fpu.fsub(mrr - 0xE0);
                        pc += 2;
                    } break;

                    case 0xE8 ... 0xEF: {
                        fpu.fsubr(mrr - 0xE8);
                        pc += 2;
                    } break;

                    case 0xF0 ... 0xF7: {
                        fpu.fdiv(mrr - 0xF0);
                        pc += 2;
                    } break;

                    case 0xF8 ... 0xFf: {
                        fpu.fdivr(mrr - 0xF8);
                        pc += 2;
                    } break;

                    default: {
                        throw std::logic_error(std::format("Unhandled opcode 0xD8 with mod/reg/rm {}.", modregrm));
                    } break;
                }
            } break;

            case 0xD9: {
                switch (std::uint8_t mrr = cpu.mem[pc + 1]; mrr) {

                    // case 0x00 ... 0xBF: break;

                    case 0xC0 ... 0xC7: {
                        fpu.fld(fpu.st(mrr - 0xC0));
                        pc += 2;
                    } break;

                    case 0xC8 ... 0xCF: {
                        fpu.fxch(fpu.st(mrr - 0xC8));
                        pc += 2;
                    } break;

                    case 0xD0: {
                        fpu.fnop();
                        pc += 2;
                    } break;

                    case 0xE1: {
                        fpu.fabs();
                        pc += 2;
                    } break;

                    case 0xE5: {
                        fpu.fxam();
                        pc += 2;
                    } break;

                    case 0xE8: {
                        fpu.fld1();
                        pc += 2;
                    } break;

                    case 0xE9: {
                        fpu.fldl2t();
                        pc += 2;
                    } break;

                    case 0xEA: {
                        fpu.fldl2e();
                        pc += 2;
                    } break;

                    case 0xEB: {
                        fpu.fldpi();
                        pc += 2;
                    } break;

                    case 0xEC: {
                        fpu.fldlg2();
                        pc += 2;
                    } break;

                    case 0xED: {
                        fpu.fldln2();
                        pc += 2;
                    } break;

                    case 0xEE: {
                        fpu.fldz();
                        pc += 2;
                    } break;

                    case 0xF0: {
                        fpu.f2xm1();
                        pc += 2;
                    } break;

                    case 0xF1: {
                        fpu.fyl2x();
                        pc += 2;
                    } break;

                    case 0xF2: {
                        fpu.fptan();
                        pc += 2;
                    } break;

                    case 0xF3: {
                        fpu.fpatan();
                        pc += 2;
                    } break;

                    case 0xF4: {
                        fpu.fxtract();
                        pc += 2;
                    } break;

                    case 0xF5: {
                        fpu.fprem1();
                        pc += 2;
                    } break;

                    case 0xF6: {
                        fpu.fdecstp();
                        pc += 2;
                    } break;

                    case 0xF7: {
                        fpu.fincstp();
                        pc += 2;
                    } break;

                    case 0xF8: {
                        fpu.fprem();
                        pc += 2;
                    } break;

                    case 0xF9: {
                        fpu.fyl2xp1();
                        pc += 2;
                    } break;

                    case 0xFA: {
                        fpu.fsqrt();
                        pc += 2;
                    } break;

                    case 0xFB: {
                        fpu.fsincos();
                        pc += 2;
                    } break;

                    case 0xFC: {
                        fpu.frndint();
                        pc += 2;
                    } break;

                    case 0xFD: {
                        fpu.fscale();
                        pc += 2;
                    } break;

                    case 0xFE: {
                        fpu.fsin();
                        pc += 2;
                    } break;

                    case 0xFF: {
                        fpu.fcos();
                        pc += 2;
                    } break;

                    default: {
                        throw std::logic_error(std::format("Unhandled opcode {} with mod/reg/rm {}.", opcode, mrr));
                    } break;
                }
            } break;

            case 0xDA: {
                switch (std::uint8_t mrr = cpu.mem[pc + 1]; mrr) {

                    case 0xC0 ... 0xC7: {
                        fpu.fcmovb(mrr - 0xC0);
                        pc += 2;
                    } break;

                    case 0xC8 ... 0xCF: {
                        fpu.fcmove(mrr - 0xC8);
                        pc += 2;
                    } break;

                    case 0xD0 ... 0xD7: {
                        fpu.fcmovbe(mrr - 0xD0);
                        pc += 2;
                    } break;

                    case 0xD8 ... 0xDF: {
                        fpu.fcmovu(mrr - 0xD8);
                        pc += 2;
                    } break;

                    default: {
                        throw std::logic_error(std::format("Unhandled opcode {} with mod/reg/rm {}.", opcode, mrr));
                    } break;
                }
            } break;

            case 0xDB: {
                switch (std::uint8_t mrr = cpu.mem[pc + 1]; mrr) {

                    case 0xC0 ... 0xC7: {
                        fpu.fcmovnb(mrr - 0xC0);
                        pc += 2;
                    } break;

                    case 0xC8 ... 0xCF: {
                        fpu.fcmovne(mrr - 0xC8);
                        pc += 2;
                    } break;

                    case 0xD0 ... 0xD7: {
                        fpu.fcmovnbe(mrr - 0xD0);
                        pc += 2;
                    } break;

                    case 0xD8 .. 0xDF: {
                        fpu.fcmovnu(mrr - 0xD8);
                        pc += 2;
                    } break;

                    default: {
                        throw std::logic_error(std::format("Unhandled opcode {} with mod/reg/rm {}.", opcode, mrr));
                    } break;
                }
            } break;

            case 0xDC: {
                switch (std::uint8_t mrr = cpu.mem[pc + 1]; mrr) {

                    // case 0x00 ... 0xBF: break;

                    case 0xC0 ... 0xC7: {
                        fpu.fadd_r(mrr - 0xC0);
                        pc += 2;
                    } break;

                    case 0xC8 ... 0xCF: {
                        fpu.fmul_r(mrr - 0xC8);
                        pc += 2;
                    } break;

                    case 0xE0 ... 0xE7: {
                        fpu.fsubr_r(mrr - 0xE0);
                        pc += 2;
                    } break;

                    case 0xE8 ... 0xEF: {
                        fpu.fsub_r(mrr - 0xE8);
                        pc += 2;
                    } break;

                    case 0xF0 ... 0xF7: {
                        fpu.fdivr_r(mrr - 0xF0);
                        pc += 2;
                    } break;

                    case 0xF8 ... 0xFF: {
                        fpu.fdiv_r(mrr - 0xF8);
                        pc += 2;
                    } break;

                    default: {
                        throw std::logic_error(std::format("Unhandled opcode {} with mod/reg/rm {}.", opcode, mrr));
                    } break;
                }
            } break;

            case 0xDD: {
                switch (std::uint8_t mrr = cpu.mem[pc + 1]; mrr) {
                    // case 0x00 ... 0xBF: break;

                    case 0xC0 ... 0xC7: {
                        fpu.ffree(mrr - 0xC0);
                        pc += 2;
                    } break;

                    case 0xD0 ... 0xD7: {
                        fpu.fst(mrr - 0xD0);
                        pc += 2;
                    } break;

                    case 0xD8 ... 0xDF: {
                        fpu.fstp(mrr - 0xD8);
                        pc += 2;
                    } break;
                }
            } break;

            case 0xDE: {
                switch (std::uint8_t mrr = cpu.mem[pc + 1]; mrr) {
                    // case 0x00 ... 0xBF: break;

                    case 0xC0 ... 0xC7: {
                        fpu.faddp(mrr - 0xC0);
                        pc += 2;
                    } break;

                    case 0xC8 ... 0xCF: {
                        fpu.fmulp(mrr - 0xC8);
                        pc += 2;
                    } break;

                    case 0xE0 ... 0xE7: {
                        fpu.fsubrp(mrr - 0xE0);
                        pc += 2;
                    } break;

                    case 0xE8 ... 0xEF: {
                        fpu.fsubp(mrr - 0xE8);
                        pc += 2;
                    } break;

                    case 0xF0 ... 0xF7: {
                        fpu.fdivrp(mrr - 0xF0);
                        pc += 2;
                    } break;

                    case 0xF8 ... 0xFF: {
                        fpu.fdivp(mrr - 0xF8);
                        pc += 2;
                    } break;
                }
            } break;

            case 0xF3: {
                if (cpu.mem[pc + 1] == 0xF) {
                    switch (std::uint8_t sOpcode = cpu.mem[pc + 2]; sOpcode) {

                    }
                } else {
                    // Rep prefix.
                }
            } break;

            case 0xF4: {
                cpu.hlt();
                ++pc;
            } break;

            case 0xF5: {
                cpu.cmc();
                ++pc;
            } break;
            case 0xF8: {
                cpu.clc();
                ++pc;
            } break;
            case 0xF9: {
                cpu.stc();
                ++pc;
            } break;

            case 0xFC: {
                cpu.cld();
                ++pc;
            } break;
            case 0xFD: {
                cpu.std();
                ++pc;
            } break;

            default: {
                throw std::logic_error(std::format("Unhandled opcode {}."), opcode);
            } break;
        }
    }
}

int main(int argc, char** argv) {
    const auto filename = argv[1];
    execute();
}