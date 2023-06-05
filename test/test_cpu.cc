#include "constants.hh"
#include "cpu.hh"

#include <algorithm>
#include <cassert>
#include <cstdint>
#include <chrono>
#include <iostream>

void test_cpu_constructor() {
    CPU cpu(1024, 1024);
    bool t = cpu.R[ESP] == 1023;
    assert(t);
}

void test_regat() {
    CPU cpu;
    cpu.R[EAX] = 0xDEADBEEF;
    const bool t = cpu.regat(EAX) == 0xDEADBEEF;
    assert(t);
}

void test_segregat() {
    CPU cpu;
    cpu.cs = 0xBEEF;
    cpu.ss = 0xDEAD;
    cpu.ds = 0xB00B;
    cpu.es = 0x1234;
    cpu.fs = 0xABCD;
    cpu.gs = 0xAAAA;

    bool t = cpu.segregat(0) == 0xBEEF
        && cpu.segregat(1) == 0xDEAD
        && cpu.segregat(2) == 0xB00B
        && cpu.segregat(3) == 0x1234
        && cpu.segregat(4) == 0xABCD
        && cpu.segregat(5) == 0xAAAA;

    bool t2 = false;
    try {
        [[maybe_unused]] auto _ = cpu.segregat(6);
    } catch (const std::domain_error& de) {
        t2 = true;
    }

    t = t && t2;
    assert(t);
}

void test_aaa() {
    CPU cpu;
    set_low_byte(cpu.R[EAX], 11);
    cpu.aaa();
    const bool t1 = get_low_word_high_byte(cpu.R[EAX]) == 1
        && get_low_byte(cpu.R[EAX]) == 1
        && cpu.flags.carry
        && cpu.flags.adjust;
    assert(t1);
    CPU cpu2;
    set_low_byte(cpu2.R[EAX], 9);
    cpu2.aaa();
    const bool t2 = get_low_word_high_byte(cpu2.R[EAX]) == 0
        && get_low_byte(cpu2.R[EAX]) == 9
        && !cpu2.flags.carry
        && !cpu2.flags.adjust;
    assert(t2);
}

void test_aad() {
    CPU cpu;
    set_low_word(cpu.R[EAX], 0x505);
    cpu.aad(10);
    const bool t = get_low_byte(cpu.R[EAX]) == 55
        && get_low_word_high_byte(cpu.R[EAX]) == 0;
    assert(t);
}

void test_aam() {
    CPU cpu;
    set_low_byte(cpu.R[EAX], 55);
    cpu.aam(10);
    const bool t = get_low_byte(cpu.R[EAX]) == 5
        && get_low_word_high_byte(cpu.R[EAX]) == 5;
    assert(t);
}

void test_aas() {
    CPU cpu1;
    set_low_word(cpu1.R[EAX], 0x11C);
    cpu1.aas();
    const bool t1 = get_low_word_high_byte(cpu1.R[EAX]) == 0
        && get_low_byte(cpu1.R[EAX]) == 0x6
        && cpu1.flags.adjust
        && cpu1.flags.carry;
    assert(t1);

    CPU cpu2;
    set_low_word(cpu2.R[EAX], 0x216);
    cpu2.aas();
    const bool t2 = get_low_word_high_byte(cpu2.R[EAX]) == 2
        && get_low_byte(cpu2.R[EAX]) == 6
        && !cpu2.flags.adjust
        && !cpu2.flags.carry;
    assert(t2);
}

void test_adc8() {
    CPU cpu;
    cpu.flags.carry = false;
    bool t = cpu.adc8(0xF, 0xF) == 0x1E;
    cpu.flags.carry = true;
    t = t && cpu.adc8(0xFF, 0xFF) == 0xFF;
    assert(t);
}

void test_adc16() {
    CPU cpu;
    cpu.flags.carry = false;
    bool t = cpu.adc16(0x1FF, 0x3FF) == 0x5FE;
    cpu.flags.carry = true;
    t = t &&  cpu.adc16(0x8FF, 0x8FF) == 0x11FF;
    assert(t);
}

void test_adc32() {
    CPU cpu;
    cpu.flags.carry = false;
    bool t = cpu.adc32(0xDEADBEEF, 0xBEEFBABE) == 0x9D9D79AD;
    cpu.flags.carry = true;
    t = t && cpu.adc32(0xDEADBEEF, 0xBEEFBABE) == 0x9D9D79AE;
    assert(t);
}

void test_add8() {
    CPU cpu;
    const auto rv = cpu.add8(0xF, 0xF);
    const bool t = rv == 0x1E;
    assert(t);
}

void test_add16() {
    CPU cpu;
    const auto rv = cpu.add16(0xFF, 0xFF);
    const bool t = rv == 0x1FE;
    assert(t);
}

void test_add32() {
    CPU cpu;
    const auto rv = cpu.add32(0xDEADBEEF, 0xBEEFBABE);
    const bool t = rv == 0x9D9D79AD;
    assert(t);
}

void test_and8() {
    CPU cpu;
    const auto rv = cpu.and8(0xA8, 0xF1);
    const bool t = rv == 0xA0;
    assert(t);
}

void test_and16() {
    CPU cpu;
    const auto rv = cpu.and16(0xA839, 0xF1C3);
    const bool t = rv == 0xA001;
    assert(t);
}

void test_and32() {
    CPU cpu;
    const auto rv = cpu.and32(0xA839FF12, 0xF1C36645);
    const bool t = rv == 0xa0016600;
    assert(t);
}

void test_arpl16() {
    CPU cpu;
    const auto rv1 = cpu.arpl16(0xC1, 0xA2);
    const bool t1 = rv1 == 0xA2 && cpu.flags.zero;
    assert(t1);
    const auto rv2 = cpu.arpl16(0xC3, 0x11);
    const bool t2 = rv2 == 0xC3 && !cpu.flags.zero;
    assert(t2);
}

// std::uint32_t CPU::arpl32(std::uint32_t lhs, [[maybe_unused]] std::uint32_t rhs) {
//     return lhs;
// }

void test_arpl32() {
    CPU cpu;
    const bool t = cpu.arpl32(0xBEEFBABE, 0xDEADBEEF) == 0xBEEFBABE;
    assert(t);
}

void test_bswap() {
    CPU cpu;
    const bool t = cpu.bswap(0xDEADBEEF) == 0xEFBEADDE;
    assert(t);
}

void test_cbw() {
    CPU cpu;
    set_low_byte(cpu.R[EAX], 0x1F);
    cpu.cbw();
    bool t = get_low_word(cpu.R[EAX]) == 0x001F_u16;
    set_low_byte(cpu.R[EAX], 0xFF);
    cpu.cbw();
    t = t && get_low_word(cpu.R[EAX]) == 0xFFFF_u16;
    assert(t);
}

void test_cdq() {
    CPU cpu;
    cpu.R[EAX] = 0x0EADBEEF;
    cpu.cdq();
    bool t = cpu.R[EDX] == 0;
    cpu.R[EAX] = 0xDEADBEEF;
    cpu.cdq();
    t = t && cpu.R[EDX] == 0xFFFFFFFF;
    assert(t);
}

void test_clc() {
    CPU cpu;
    cpu.flags.carry = true;
    cpu.clc();
    const bool t = !cpu.flags.carry;
    assert(t);
}

void test_cld() {
    CPU cpu;
    cpu.flags.direction = true;
    cpu.cld();
    const bool t = !cpu.flags.direction;
    assert(t);
}

void test_cmc() {
    CPU cpu;
    cpu.flags.carry = false;
    cpu.cmc();
    const bool t1 = cpu.flags.carry;
    assert(t1);
    cpu.flags.carry = true;
    cpu.cmc();
    const bool t2 = !cpu.flags.carry;
    assert(t2);
}

void test_cmp8() {
    CPU cpu;
    const bool t = cpu.cmp8(0xAA, 0xBB) == 0xAA;
    assert(t);
}

void test_cmp16() {
    CPU cpu;
    const bool t = cpu.cmp16(0xAAAA, 0xBBBB) == 0xAAAA;
    assert(t);
}

void test_cmp32() {
    CPU cpu;
    const bool t = cpu.cmp32(0xDEADBEEF, 0xBEEFBABE) == 0xDEADBEEF;
    assert(t);
}

void test_cwd() {
    CPU cpu;
    set_low_word(cpu.R[EAX], 1);
    cpu.cwd();
    const bool t1 = cpu.R[EDX] == 0
        && cpu.R[EAX] == 1;
    assert(t1);
    set_low_word(cpu.R[EAX], 0xFFFF);
    cpu.cwd();
    const bool t2 = get_low_word(cpu.R[EDX]) == 0xFFFF
        && get_low_word(cpu.R[EAX]) == 0xFFFF;
    assert(t2);
}

void test_cwde() {
    CPU cpu;
    set_low_word(cpu.R[EAX], 0);
    cpu.cwde();
    const bool t1 = cpu.R[EAX] == 0;
    assert(t1);
    set_low_word(cpu.R[EAX], 0xFFFF);
    cpu.cwde();
    const bool t2 = cpu.R[EAX] == 0xFFFFFFFF;
    assert(t2);
}

// void CPU::daa() {
//     std::uint8_t old_al = get_low_byte(R[EAX]);
//     bool old_cf = flags.carry;
//     flags.carry = 0;
//     if ((old_al & 0xF) > 9 || flags.adjust == 1) {
//         set_low_byte(R[EAX], old_al + 6);
//         flags.carry = old_cf || (get_low_byte(R[EAX]) < old_al);
//         flags.adjust = 1;
//     } else {
//         flags.adjust = 0;
//     }
//     if (old_al > 0x99 || old_cf == 1) {
//         set_low_byte(R[EAX], get_low_byte(R[EAX]) + 0x60);
//         flags.carry = 1;
//     } else {
//         flags.carry = 0;
//     }
// }
// void test_daa() {
//     CPU cpu;
//     set_low_byte(cpu.R[EAX], 0x5C);
//     cpu.daa();
//     const bool t = get_low_byte(cpu.R[EAX]) == 0x62
//         && ;

// }

void test_dec8() {
    CPU cpu;
    const bool t = cpu.dec8(0xAA) == 0xA9;
    assert(t);
}

void test_dec16() {
    CPU cpu;
    const bool t = cpu.dec16(0xAAAA) == 0xAAA9;
    assert(t);
}

void test_dec32() {
    CPU cpu;
    const bool t = cpu.dec32(0xDEADBEEF) == 0xDEADBEEE;
    assert(t);
}

void test_inc8() {
    CPU cpu;
    const bool t = cpu.inc8(0xAA) == 0xAB;
    assert(t);
}

void test_inc16() {
    CPU cpu;
    const bool t = cpu.inc16(0xAAAA) == 0xAAAB;
    assert(t);
}

void test_inc32() {
    CPU cpu;
    const bool t = cpu.inc32(0xDEADBEEF) == 0xDEADBEF0;
    assert(t);
}

void test_hlt() {
    CPU cpu;
    bool t = false;
    try {
        cpu.hlt();
    } catch (CPU_HALT& ch) {
        t = true;
    }
    assert(t);
}

void test_lahf() {
    CPU cpu;
    cpu.flags.sign = true;
    cpu.flags.zero = true;
    cpu.flags.carry = true;
    cpu.lahf();
    const bool t = get_low_word_high_byte(cpu.R[EAX]) == 0xC3;
    assert(t);
}

void test_lea16() {
    CPU cpu;
    const bool t = cpu.lea16(0xAAAA, 0xBBBB) == 0xBBBB;
    assert(t);
}

void test_lea32() {
    CPU cpu;
    const bool t = cpu.lea32(0xDEADBEEF, 0xBEEFBABE) == 0xBEEFBABE;
    assert(t);
}

void test_mov8() {
    CPU cpu;
    const bool t = cpu.mov8(0xAA, 0xBB) == 0xBB;
    assert(t);
}

void test_mov16() {
    CPU cpu;
    const bool t = cpu.mov16(0xAAAA, 0xBBBB) == 0xBBBB;
    assert(t);
}

void test_mov32() {
    CPU cpu;
    const bool t = cpu.mov32(0xAAAAAAAA, 0xBBBBBBBB) == 0xBBBBBBBB;
    assert(t);
}

void test_or8() {
    CPU cpu;
    const bool t = cpu.or8(0xDE, 0x64) == 0xFE;
    assert(t);
}

void test_or16() {
    CPU cpu;
    const bool t = cpu.or16(0xDEAD, 0x1234) == 0xDEBD;
    assert(t);
}

void test_or32() {
    CPU cpu;
    const bool t = cpu.or32(0xDEADBEEF, 0x12345678) == 0xDEBDFEFF;
    assert(t);
}

void test_sahf() {
    CPU cpu;
    set_low_byte(cpu.R[EAX], 0x17);
    cpu.sahf();
    const bool t = !cpu.flags.sign
        && !cpu.flags.zero
        && cpu.flags.adjust
        && cpu.flags.parity
        && cpu.flags.carry;
    assert(t);
}

void test_salc() {
    CPU cpu;
    cpu.flags.carry = false;
    cpu.salc();
    bool t = get_low_byte(cpu.R[EAX]) == 0;
    cpu.flags.carry = true;
    cpu.salc();
    t = t && get_low_byte(cpu.R[EAX]) == 0xFF;
    assert(t);
}

void test_sar16() {
    CPU cpu;
    const bool t1 = cpu.sar16(0xDEAD, 2) == 0xf7ab;
    assert(t1);
    const bool t2 = cpu.sar16(0x7EAD, 2) == 0x1FAB;
    assert(t2);
}

void test_sar32() {
    CPU cpu;
    const bool t1 = cpu.sar32(0xDEADBEEF, 2) == 0xF7AB6FBB;
    assert(t1);
    const bool t2 = cpu.sar32(0x7EADBEEF, 2) == 0x1FAB6FBB;
    assert(t2);
}

void test_sar16_u() {
    CPU cpu;
    const bool t1 = cpu.sar16_u(0xDEAD) == 0xEF56;
    assert(t1);
    const bool t2 = cpu.sar16_u(0x7EAD) == 0x3F56;
    assert(t2);
}

void test_sar32_u() {
    CPU cpu;
    const bool t1 = cpu.sar32_u(0xDEADBEEF) == 0xEF56DF77;
    assert(t1);
    const bool t2 = cpu.sar32_u(0x7EADBEEF) == 0x3F56DF77;
    assert(t2);
}

void test_sbb8() {
    CPU cpu;
    cpu.flags.carry = false;
    const bool t1 = cpu.sbb8(0xDE, 0xAD) == 0x31;
    assert(t1);
    cpu.flags.carry = true;
    const bool t2 = cpu.sbb8(0xDE, 0xAD) == 0x30;
    assert(t2);
}

void test_sbb16() {
    CPU cpu;
    cpu.flags.carry = false;
    const bool t1 = cpu.sbb16(0xDEAD, 0xBEEF) == 0x1FBE;
    assert(t1);
    cpu.flags.carry = true;
    const bool t2 = cpu.sbb16(0xDEAD, 0xBEEF) == 0x1FBD;
    assert(t2);
}

void test_sbb32() {
    CPU cpu;
    cpu.flags.carry = false;
    const bool t1 = cpu.sbb32(0xDEADBEEF, 0xBEEFBABE) == 0x1FBE0431;
    assert(t1);
    cpu.flags.carry = true;
    const bool t2 = cpu.sbb32(0xDEADBEEf, 0xBEEFBABE) == 0x1FBE0430;
    assert(t2);
}

// std::uint8_t CPU::sub8(std::uint8_t lhs, std::uint8_t rhs) {
//     std::uint8_t tmp = lhs - rhs;
//     flags.set_sub_flags(sext(lhs), sext(rhs), sext(tmp));
//     return tmp;
// }

// std::uint16_t CPU::sub16(std::uint16_t lhs, std::uint16_t rhs) {
//     std::uint16_t tmp = lhs - rhs;
//     flags.set_sub_flags(sext(lhs), sext(rhs), sext(tmp));
//     return tmp;
// }

// std::uint32_t CPU::sub32(std::uint32_t lhs, std::uint32_t rhs) {
//     std::uint32_t tmp = lhs - rhs;
//     flags.set_sub_flags(lhs, rhs, tmp);
//     return tmp;
// }

void test_stc() {
    CPU cpu;
    cpu.flags.carry = false;
    cpu.stc();
    const bool t = cpu.flags.carry;
    assert(t);
}

void test_std() {
    CPU cpu;
    cpu.flags.direction = false;
    cpu.std();
    const bool t = cpu.flags.direction;
    assert(t);
}

// LOL
void test_test8() {
    CPU cpu;
    cpu.test8(0xAD, 0xBB);
    const bool t = !cpu.flags.zero
        && cpu.flags.sign
        && cpu.flags.parity
        && !cpu.flags.carry
        && !cpu.flags.overflow;
    assert(t);
}

void test_xchg() {
    CPU cpu;
    cpu.R[EAX] = 0xDEADBEEF;
    cpu.R[EDX] = 0xBEEFBABE;
    cpu.xchg(cpu.R[EDX]);
    const bool t = cpu.R[EAX] == 0xBEEFBABE
        && cpu.R[EDX] == 0xDEADBEEF;
    assert(t);
}

void test_xlat() {
    CPU cpu;
    cpu.mem[0x42] = 0x55;
    cpu.R[EAX] = 0xDEADBE40;
    cpu.R[EBX] = 0x2;
    cpu.xlat();
    const bool t = get_low_byte(cpu.R[EAX]) == 0x55;
    assert(t);
}

void test_xor8() {
    CPU cpu;
    const bool t = cpu.xor8(0xDE, 0xAD) == 0x73;
    assert(t);
}

void test_xor16() {
    CPU cpu;
    const bool t = cpu.xor16(0xDEAD, 0xBEEF) == 0x6042;
    assert(t);
}

void test_xor32() {
    CPU cpu;
    const bool t = cpu.xor32(0xDEADBEEF, 0xBEEFBABE) == 0x60420451;
    assert(t);
}

void test_cpu() {
    test_cpu_constructor();
    test_regat();
    test_segregat();
    test_aaa();
    test_aad();
    test_aam();
    test_aas();
    test_adc8();
    test_adc16();
    test_adc32();
    test_add8();
    test_add16();
    test_add32();
    test_and8();
    test_and16();
    test_and32();
    test_arpl16();
    test_arpl32();
    test_bswap();
    test_cbw();
    test_cdq();
    test_clc();
    test_cld();
    test_cmc();
    test_cmp8();
    test_cmp16();
    test_cmp32();
    test_cwd();
    test_cwde();
    test_dec8();
    test_dec16();
    test_dec32();
    test_inc8();
    test_inc16();
    test_inc32();
    test_hlt();
    test_mov8();
    test_mov16();
    test_mov32();
    test_lahf();
    test_lea16();
    test_lea32();
    test_or8();
    test_or16();
    test_or32();
    test_sahf();
    test_salc();
    test_sar16();
    test_sar32();
    test_sar16_u();
    test_sar32_u();
    test_sbb8();
    test_sbb16();
    test_sbb32();
    test_stc();
    test_std();
    test_test8();
    test_xchg();
    test_xlat();
    test_xor8();
    test_xor16();
    test_xor32();
    
    std::cout << "All cpu tests passed! Time taken: " << std::endl;
}