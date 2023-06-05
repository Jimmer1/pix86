#pragma once

#include "constants.hh"
#include "flags.hh"
#include "memory.hh"
#include "stack.hh"

#include <cstddef>
#include <cstdint>

struct CPU_HALT {unsigned int x;};

class CPU {
public:
    Memory mem;
    Stack stack;
    Flags flags;

    std::uint16_t cs = 0, ss = 0, ds = 0, es = 0, fs = 0, gs = 0;
    std::uint64_t cycle_counter = 0;
    std::uint32_t R[8] = {0, 0, 0, 0, 0, 0, 0, 0};

    CPU(std::size_t mem_size=1_mb);
    CPU(std::size_t mem_size, std::size_t stack_size);

    // data access helper functions.
    std::uint32_t& regat(int index);
    std::uint16_t& segregat(int index);
public:

    void reset();

    // BCD instructions.
    void aaa();
    void aad(std::uint8_t);
    void aam(std::uint8_t);
    void aas();
    void daa();
    void das();

    std::uint16_t arpl16(std::uint16_t, std::uint16_t);
    std::uint32_t arpl32(std::uint32_t, std::uint32_t);

    // Flag Register instructions
    void clc();
    void cld();
    void cmc();
    void lahf();
    void sahf();
    void stc();
    void std();

    std::uint8_t cmp8(std::uint8_t, std::uint8_t);
    std::uint16_t cmp16(std::uint16_t, std::uint16_t);
    std::uint32_t cmp32(std::uint32_t, std::uint32_t);

    // Data Conversion instructions.
    std::uint32_t bswap(std::uint32_t);
    void cbw();
    void cdq();
    void cwd();
    void cwde();

    std::uint8_t adc8(std::uint8_t, std::uint8_t);
    std::uint16_t adc16(std::uint16_t, std::uint16_t);
    std::uint32_t adc32(std::uint32_t, std::uint32_t);
    std::uint8_t add8(std::uint8_t, std::uint8_t);
    std::uint16_t add16(std::uint16_t, std::uint16_t);
    std::uint32_t add32(std::uint32_t, std::uint32_t);
    std::uint8_t and8(std::uint8_t, std::uint8_t);
    std::uint16_t and16(std::uint16_t, std::uint16_t);
    std::uint32_t and32(std::uint32_t, std::uint32_t);
    std::uint8_t dec8(std::uint8_t);
    std::uint16_t dec16(std::uint16_t);
    std::uint32_t dec32(std::uint32_t);
    std::uint8_t inc8(std::uint8_t);
    std::uint16_t inc16(std::uint16_t);
    std::uint32_t inc32(std::uint32_t);
    std::uint8_t or8(std::uint8_t, std::uint8_t);
    std::uint16_t or16(std::uint16_t, std::uint16_t);
    std::uint32_t or32(std::uint32_t, std::uint32_t);
    std::uint8_t sbb8(std::uint8_t, std::uint8_t);
    std::uint16_t sbb16(std::uint16_t, std::uint16_t);
    std::uint32_t sbb32(std::uint32_t, std::uint32_t);
    std::uint8_t sub8(std::uint8_t, std::uint8_t);
    std::uint16_t sub16(std::uint16_t, std::uint16_t);
    std::uint32_t sub32(std::uint32_t, std::uint32_t);
    std::uint8_t xor8(std::uint8_t, std::uint8_t);
    std::uint16_t xor16(std::uint16_t, std::uint16_t);
    std::uint32_t xor32(std::uint32_t, std::uint32_t);

    std::uint8_t imul8(std::uint8_t, std::uint8_t);
    std::uint16_t imul16(std::uint16_t, std::uint16_t);
    std::uint32_t imul32(std::uint32_t, std::uint32_t);

    std::uint32_t imul16_s(std::uint16_t, std::uint16_t);
    std::uint64_t imul32_s(std::uint32_t, std::uint32_t);

    std::uint16_t sar16(std::uint16_t, std::uint16_t=1);
    std::uint32_t sar32(std::uint32_t, std::uint32_t=1);
    std::uint16_t sar16_u(std::uint16_t);
    std::uint32_t sar32_u(std::uint32_t);

    void hlt();

    std::uint16_t lea16(std::uint16_t, std::uint32_t);
    std::uint32_t lea32(std::uint32_t, std::uint32_t);
    
    std::uint8_t mov8(std::uint8_t, std::uint8_t);
    std::uint16_t mov16(std::uint16_t, std::uint16_t);
    std::uint32_t mov32(std::uint32_t, std::uint32_t);


    // Stack manipulation instruction.
    std::uint8_t pop8();
    std::uint16_t pop16();
    std::uint32_t pop32();
    void popa();
    void popad();
    void push8(std::uint8_t);
    void push16(std::uint16_t);
    void push32(std::uint32_t);
    void pusha();
    void pushad();

    // I don't know how to categorise this fucker.
    void salc();

    void rdtsc();

    void test8(std::uint8_t, std::uint8_t);

    void xchg(std::uint32_t&);

    void xlat();
public:
// LCOV_EXCL_START
    friend std::ostream& operator<<(std::ostream& os, const CPU& cpu) {
        os << '{';
        os << "  Registers: {";
        for (int i = 0; i < 8; ++i) {
            os << " R[" << i << "]: " << std::hex << cpu.R[i];
        }
        os << "}\n";
        os << "  Flags: " << cpu.flags << '\n';
        os << "  Segment: {";
        os << "cs: " << std::hex << cpu.cs << ", ";
        os << "ss: " << std::hex << cpu.ss << ", ";
        os << "ds: " << std::hex << cpu.ds << ", ";
        os << "es: " << std::hex << cpu.es << ", ";
        os << "fs: " << std::hex << cpu.fs << ", ";
        os << "gs: " << std::hex << cpu.gs;
        os << '}' << '\n';

        os << cpu.mem << '\n';
        os << '}';
        return os;
    }
// LCOV_EXCL_STOP
};



