#include "constants.hh"
#include "cpu.hh"
#include "util.hh"

#include <algorithm>
#include <bit>
#include <cmath>
#include <cstddef>
#include <cstdint>
#include <stdexcept>

CPU::CPU(std::size_t mem_size) : mem(mem_size) {
    std::fill(std::begin(R), std::end(R), 0);
    R[ESP] = 128;
}

// data access helper functions.
std::uint32_t& CPU::regat(int index) {
    return R[index];
}

std::uint16_t& CPU::segregat(int index) {
    switch (index) {
        case 0: return cs;
        case 1: return ss;
        case 2: return ds;
        case 3: return es;
        case 4: return fs;
        case 5: return gs;

        default: {
            // throw std::domain_error(std::format("segregat index value {} out of bounds.", index));
            throw std::domain_error("segregat index value out of bounds.");

        } break;
    }
}

std::uint8_t CPU::stack_pop8() {
    return mem[R[ESP]++];
}

std::uint16_t CPU::stack_pop16() {
    auto tmp = mread<std::uint16_t>(&mem[R[ESP]]);
    R[ESP] += sizeof(std::uint16_t);
    return tmp;
}

std::uint32_t CPU::stack_pop32() {
    auto tmp = mread<std::uint32_t>(&mem[R[ESP]]);
    R[ESP] += sizeof(std::uint32_t);
    return tmp;
}

void CPU::stack_push8(std::uint8_t v) {
    mem[R[ESP]--] = v;
}

void CPU::stack_push16(std::uint16_t v) {
    mwrite<std::uint16_t>(&mem[R[ESP]], v);
    R[ESP] -= sizeof(std::uint16_t);
}

void CPU::stack_push32(std::uint32_t v) {
    mwrite<std::uint32_t>(&mem[R[ESP]], v);
    R[ESP] -= sizeof(std::uint32_t);
}

void CPU::set_adc_flags([[maybe_unused]] std::uint32_t lhs,
                    [[maybe_unused]] std::uint32_t rhs,
                    [[maybe_unused]] std::uint32_t rv) {}

void CPU::set_add_flags([[maybe_unused]] std::uint32_t lhs,
                    [[maybe_unused]] std::uint32_t rhs,
                    [[maybe_unused]] std::uint32_t rv) {}

void CPU::set_and_flags([[maybe_unused]] std::uint32_t lhs,
                    [[maybe_unused]] std::uint32_t rhs,
                    [[maybe_unused]] std::uint32_t rv) {}

void CPU::set_cmp_flags([[maybe_unused]] std::uint32_t lhs,
                    [[maybe_unused]] std::uint32_t rhs,
                    [[maybe_unused]] std::uint32_t tmp) {}

void CPU::set_dec_flags([[maybe_unused]] std::uint32_t lhs,
                    [[maybe_unused]] std::uint32_t rv) {}

void CPU::set_inc_flags([[maybe_unused]] std::uint32_t lhs,
                    [[maybe_unused]] std::uint32_t rv) {}

void CPU::set_imul_flags([[maybe_unused]] std::uint32_t lhs,
                    [[maybe_unused]] std::uint32_t rhs,
                    [[maybe_unused]] std::uint32_t rv) {}

void CPU::set_imul_s_flags([[maybe_unused]] std::uint32_t lhs,
                           [[maybe_unused]] std::uint32_t rhs,
                           [[maybe_unused]] std::uint32_t rv) {}

void CPU::set_or_flags([[maybe_unused]] std::uint32_t lhs,
                    [[maybe_unused]] std::uint32_t rhs,
                    [[maybe_unused]] std::uint32_t rv) {}

void CPU::set_sar_flags([[maybe_unused]] std::uint32_t lhs,
                    [[maybe_unused]] std::uint32_t rhs,
                    [[maybe_unused]] std::uint32_t rv) {}

void CPU::set_sbb_flags([[maybe_unused]] std::uint32_t lhs,
                    [[maybe_unused]] std::uint32_t rhs,
                    [[maybe_unused]] std::uint32_t tmp) {}

void CPU::set_sub_flags([[maybe_unused]] std::uint32_t lhs,
                    [[maybe_unused]] std::uint32_t rhs,
                    [[maybe_unused]] std::uint32_t tmp) {}

void CPU::set_xor_flags([[maybe_unused]] std::uint32_t lhs,
                    [[maybe_unused]] std::uint32_t rhs,
                    [[maybe_unused]] std::uint32_t tmp) {}

void CPU::aaa() {
    if((get_low_byte(R[EAX]) & 0xF) > 9 || flags.adjust) {
        set_low_word(R[EAX], get_low_word(R[EAX]) + 0x106);
        flags.adjust = true;
        flags.carry = true;
    } else {
        flags.adjust = false;
        flags.carry = false;
    }
    set_low_byte(R[EAX], get_low_byte(R[EAX]) & 0xF);
}

void CPU::aad(std::uint8_t imm8) {
    std::uint8_t tmpAl = get_low_byte(R[EAX]);
    std::uint8_t tmpAh = get_low_word_high_byte(R[EAX]);

    set_low_byte(R[EAX], (tmpAl + (tmpAh * imm8)) & 0xFF);
    set_low_word_high_byte(R[EAX], 0);
}

void CPU::aam(std::uint8_t imm8) {
    std::uint8_t tmpAl = get_low_byte(R[EAX]);
    set_low_word_high_byte(R[EAX], tmpAl / imm8);
    set_low_byte(R[EAX], tmpAl % imm8);
}

void CPU::aas() {
    if ((get_low_byte(R[EAX]) & 0xF) > 9 || flags.adjust) {
        set_low_word(R[EAX], get_low_word(R[EAX]) - 6);
        set_low_word_high_byte(R[EAX], get_low_word_high_byte(R[EAX]) - 1);
        flags.adjust = true;
        flags.carry = true;
    } else {
        flags.carry = false;
        flags.adjust = false;
    }
    set_low_byte(R[EAX], get_low_byte(R[EAX]) & 0xF);
}

std::uint8_t CPU::adc8(std::uint8_t lhs, std::uint8_t rhs) {
    std::uint8_t tmp = lhs + rhs + flags.carry;
    set_adc_flags(sext(lhs), sext(rhs), sext(tmp));
    return tmp;
}

std::uint16_t CPU::adc16(std::uint16_t lhs, std::uint16_t rhs) {
    std::uint16_t tmp = lhs + rhs + flags.carry;
    set_adc_flags(sext(lhs), sext(rhs), sext(tmp));
    return tmp;
}

std::uint32_t CPU::adc32(std::uint32_t lhs, std::uint32_t rhs) {
    std::uint32_t tmp = lhs + rhs + flags.carry;
    set_adc_flags(lhs, rhs, tmp);
    return tmp;
}

std::uint8_t CPU::add8(std::uint8_t lhs, std::uint8_t rhs) {
    std::uint8_t tmp = lhs + rhs;
    set_add_flags(sext(lhs), sext(rhs), sext(tmp));
    return tmp;
}

std::uint16_t CPU::add16(std::uint16_t lhs, std::uint16_t rhs) {
    std::uint16_t tmp = lhs + rhs;
    set_add_flags(sext(lhs), sext(rhs), sext(tmp));
    return tmp;
}

std::uint32_t CPU::add32(std::uint32_t lhs, std::uint32_t rhs) {
    std::uint32_t tmp = lhs + rhs;
    set_add_flags(lhs, rhs, tmp);
    return tmp;
}

std::uint8_t CPU::and8(std::uint8_t lhs, std::uint8_t rhs) {
    std::uint8_t tmp = lhs & rhs;
    set_and_flags(sext(lhs), sext(rhs), sext(tmp));
    return tmp;
}

std::uint16_t CPU::and16(std::uint16_t lhs, std::uint16_t rhs) {
    std::uint16_t tmp = lhs & rhs;
    set_and_flags(sext(lhs), sext(rhs), sext(tmp));
    return tmp;
}

std::uint32_t CPU::and32(std::uint32_t lhs, std::uint32_t rhs) {
    std::uint32_t tmp = lhs & rhs;
    set_and_flags(lhs, rhs, tmp);
    return tmp;
}

std::uint16_t CPU::arpl16(std::uint16_t lhs, std::uint16_t rhs) {
    if ((lhs & 0x3) < (rhs < 0x3)) {
        flags.zero = true;
        lhs = rhs;
    } else {
        flags.zero = false;
    }
    return lhs;
}

std::uint32_t CPU::arpl32(std::uint32_t lhs, [[maybe_unused]] std::uint32_t rhs) {
    return lhs;
}

void CPU::bswap(std::uint32_t& reg) {
    reg = std::byteswap(reg);
}

void CPU::cbw() {
    set_low_word(R[EAX], sext(get_low_byte(R[EAX])));
}

void CPU::cdq() {
    R[EDX] = smask(R[EAX]);
}

void CPU::clc() {
    flags.carry = false;
}

void CPU::cld() {
    flags.direction = false;
}

void CPU::cmc() {
    flags.carry ^= true;
}

std::uint8_t CPU::cmp8(std::uint8_t lhs, std::uint8_t rhs) {
    [[maybe_unused]] std::uint8_t tmp = lhs - rhs;
    set_cmp_flags(sext(lhs), sext(rhs), sext(tmp));
    return lhs;
}

std::uint16_t CPU::cmp16(std::uint16_t lhs, std::uint16_t rhs) {
    [[maybe_unused]] std::uint16_t tmp = lhs - rhs;
    set_cmp_flags(sext(lhs), sext(rhs), sext(tmp));
    return lhs;
}

std::uint32_t CPU::cmp32(std::uint32_t lhs, std::uint32_t rhs) {
    [[maybe_unused]] std::uint32_t tmp = lhs - rhs;
    set_cmp_flags(lhs, rhs, tmp);
    return lhs;
}

void CPU::cwd() {
    set_low_word(R[EDX], smask(get_low_word(R[EAX])));
}

void CPU::cwde() {
    R[EAX] = sext(get_low_word(R[EAX]));
}

void CPU::daa() {
    std::uint8_t old_al = get_low_byte(R[EAX]);
    bool old_cf = flags.carry;
    flags.carry = 0;
    if ((old_al & 0xF) > 9 || flags.adjust == 1) {
        set_low_byte(R[EAX], old_al + 6);
        flags.carry = old_cf || (get_low_byte(R[EAX]) < old_al);
        flags.adjust = 1;
    } else {
        flags.adjust = 0;
    }
    if (old_al > 0x99 || old_cf == 1) {
        set_low_byte(R[EAX], get_low_byte(R[EAX]) + 0x60);
        flags.carry = 1;
    } else {
        flags.carry = 0;
    }
}

void CPU::das() {
    std::uint8_t old_al = get_low_byte(R[EAX]);
    bool old_carry = flags.carry;
    flags.carry = false;
    if ((get_low_byte(R[EAX]) & 0xF) > 9 || flags.adjust) {
        set_low_byte(R[EAX], get_low_byte(R[EAX]) - 6);
        flags.carry = old_carry | (R[EAX] > old_al);
        flags.adjust = true;
    } else {
        flags.adjust = false;
    }
    if (old_al > 0x99 || old_carry) {
        set_low_byte(R[EAX], get_low_byte(R[EAX]) - 0x60);
        flags.carry = true;
    }
}

std::uint8_t CPU::dec8(std::uint8_t lhs) {
    std::uint8_t tmp = lhs - 1;
    set_dec_flags(sext(lhs), sext(tmp));
    return tmp;
}

std::uint16_t CPU::dec16(std::uint16_t lhs) {
    std::uint16_t tmp = lhs - 1;
    set_dec_flags(sext(lhs), sext(tmp));
    return tmp;
}

std::uint32_t CPU::dec32(std::uint32_t lhs) {
    std::uint32_t tmp = lhs - 1;
    set_dec_flags(lhs, tmp);
    return tmp;
}

void CPU::hlt() {
    throw CPU_HALT{R[EAX]};
}

std::uint8_t CPU::inc8(std::uint8_t lhs) {
    std::uint8_t tmp = lhs + 1;
    set_inc_flags(sext(lhs), sext(tmp));
    return tmp;
}

std::uint16_t CPU::inc16(std::uint16_t lhs) {
    std::uint16_t tmp = lhs + 1;
    set_inc_flags(sext(lhs), sext(tmp));
    return tmp;
}

std::uint32_t CPU::inc32(std::uint32_t lhs) {
    std::uint32_t tmp = lhs + 1;
    set_inc_flags(lhs, tmp);
    return tmp;
}

void CPU::lahf() {
    set_low_word_high_byte(R[EAX], flags.get_flags8());
}

std::uint16_t CPU::lea16(std::uint16_t lhs, std::uint32_t addr) {
    return lhs = addr;
}

std::uint32_t CPU::lea32(std::uint32_t lhs, std::uint32_t addr) {
    return lhs = addr;
}

std::uint8_t CPU::mov8(std::uint8_t lhs, std::uint8_t rhs) {
    return lhs = rhs;
}

std::uint16_t CPU::mov16(std::uint16_t lhs, std::uint16_t rhs) {
    return lhs = rhs;
}

std::uint32_t CPU::mov32(std::uint32_t lhs, std::uint32_t rhs) {
    return lhs = rhs;
}

std::uint8_t CPU::or8(std::uint8_t lhs, std::uint8_t rhs) {
    std::uint8_t tmp = lhs | rhs;
    set_or_flags(sext(lhs), sext(rhs), sext(tmp));
    return tmp;
}

std::uint16_t CPU::or16(std::uint16_t lhs, std::uint16_t rhs) {
    std::uint16_t tmp = lhs | rhs;
    set_or_flags(sext(lhs), sext(rhs), sext(tmp));
    return tmp;
}

std::uint32_t CPU::or32(std::uint32_t lhs, std::uint32_t rhs) {
    std::uint32_t tmp = lhs | rhs;
    set_or_flags(lhs, rhs, tmp);
    return tmp;
}

std::uint8_t CPU::pop8() {
    return stack_pop8();
}

std::uint16_t CPU::pop16() {
    return stack_pop16();
}

std::uint32_t CPU::pop32() {
    return stack_pop32();
}

void CPU::popa() {
    for (int i = 0; i < 8; ++i) {
        if (i == 4) {
            R[ESP] += 2;
        } else {
            set_low_word(regat(i), stack_pop16());
        }
    }
}

void CPU::popad() {
    for (int i = 0; i < 8; ++i) {
        if (i == 4) {
            R[ESP] += 4;
        } else {
            regat(i) = stack_pop32();
        }
    }
}

void CPU::push8(std::uint8_t v) {
    stack_push8(v);
}

void CPU::push16(std::uint16_t v) {
    stack_push16(v);
}

void CPU::push32(std::uint32_t v) {
    stack_push32(v);
}

void CPU::pusha() {
    auto tmp = get_low_word(R[ESP]);
    for (int i = 0; i < 8; ++i) {
        if (i == 4) {
            stack_push16(tmp);
        } else {
            stack_push16(get_low_word(regat(i)));
        }
    }
}

void CPU::pushad() {
    auto tmp = R[ESP];
    for (int i = 0; i < 8; ++i) {
        if (i == 4) {
            stack_push32(tmp);
        } else {
            stack_push32(regat(i));
        }
    }
}

void CPU::sahf() {
    flags.set_flags8(get_low_byte(R[EAX]));
}

void CPU::salc() {
    set_low_byte(R[EAX], flags.carry ? 0xFF : 0);
}

std::uint8_t CPU::sbb8(std::uint8_t lhs, std::uint8_t rhs) {
    std::uint8_t tmp = lhs - rhs - flags.carry;
    set_sbb_flags(sext(lhs), sext(rhs), sext(tmp));
    return tmp;
}

std::uint16_t CPU::sbb16(std::uint16_t lhs, std::uint16_t rhs) {
    std::uint16_t tmp = lhs - rhs - flags.carry;
    set_sbb_flags(sext(lhs), sext(rhs), sext(tmp));
    return tmp;
}

std::uint32_t CPU::sbb32(std::uint32_t lhs, std::uint32_t rhs) {
    std::uint32_t tmp = lhs - rhs - flags.carry;
    set_sbb_flags(lhs, rhs, tmp);
    return tmp;
}

std::uint8_t CPU::sub8(std::uint8_t lhs, std::uint8_t rhs) {
    std::uint8_t tmp = lhs - rhs;
    set_sub_flags(sext(lhs), sext(rhs), sext(tmp));
    return tmp;
}

std::uint16_t CPU::sub16(std::uint16_t lhs, std::uint16_t rhs) {
    std::uint16_t tmp = lhs - rhs;
    set_sub_flags(sext(lhs), sext(rhs), sext(tmp));
    return tmp;
}

std::uint32_t CPU::sub32(std::uint32_t lhs, std::uint32_t rhs) {
    std::uint32_t tmp = lhs - rhs;
    set_sub_flags(lhs, rhs, tmp);
    return tmp;
}

std::uint8_t CPU::xor8(std::uint8_t lhs, std::uint8_t rhs) {
    std::uint8_t tmp = lhs ^ rhs;
    set_xor_flags(sext(lhs), sext(rhs), sext(tmp));
    return tmp;
}

std::uint16_t CPU::xor16(std::uint16_t lhs, std::uint16_t rhs) {
    std::uint16_t tmp = lhs ^ rhs;
    set_xor_flags(sext(lhs), sext(rhs), sext(tmp));
    return tmp;
}

std::uint32_t CPU::xor32(std::uint32_t lhs, std::uint32_t rhs) {
    std::uint32_t tmp = lhs ^ rhs;
    set_xor_flags(lhs, rhs, tmp);
    return tmp;
}

void CPU::stc() {
    flags.carry = true;
}

void CPU::std() {
    flags.direction = true;
}

void CPU::rdtsc() {
    R[EDX] = high_dword(cycle_counter);
    R[EAX] = low_dword(cycle_counter);
}

void CPU::test8(std::uint8_t lhs, std::uint8_t rhs) {
    std::uint8_t tmp = lhs & rhs;
    flags.zero = tmp == 0;
    flags.sign = signbit(tmp);
    flags.parity = parity(tmp & 0xFF);
    flags.carry = flags.overflow = false;
}

void CPU::xchg(std::uint32_t& reg) {
    std::swap(R[EAX], reg);
}

void CPU::xlat() {
    set_low_byte(R[EAX], mem[get_low_byte(R[EAX]) + R[EBX]]);
}

std::uint8_t CPU::imul8(std::uint8_t lhs, std::uint8_t rhs) {
    std::uint8_t tmp = lhs * rhs;
    set_imul_flags(sext(lhs), sext(rhs), sext(tmp));
    return tmp;
}

std::uint16_t CPU::imul16(std::uint16_t lhs, std::uint16_t rhs) {
    std::uint16_t tmp = lhs * rhs;
    set_imul_flags(sext(lhs), sext(rhs), sext(tmp));
    return tmp;
}

std::uint32_t CPU::imul32(std::uint32_t lhs, std::uint32_t rhs) {
    std::uint32_t tmp = lhs * rhs;
    set_imul_flags(lhs, rhs, tmp);
    return tmp;
}

std::uint32_t CPU::imul16_s(std::uint16_t lhs, std::uint16_t rhs) {
    std::uint32_t tmp = lhs * rhs;
    set_imul_s_flags(sext(lhs), sext(rhs), sext(tmp));
    return tmp;
}

std::uint64_t CPU::imul32_s(std::uint32_t lhs, std::uint32_t rhs) {
    std::uint64_t tmp = lhs * rhs;
    set_imul_s_flags(lhs, rhs, tmp);
    return tmp;
}

std::uint16_t CPU::sar16(std::uint16_t lhs, std::uint16_t rhs) {
    std::int16_t tmp = std::int16_t(lhs) >> std::int16_t(rhs);
    set_sar_flags(sext(lhs), sext(rhs), sext(tmp));
    return std::uint16_t(tmp);
}

std::uint32_t CPU::sar32(std::uint32_t lhs, std::uint32_t rhs) {
    std::int32_t tmp = std::int32_t(lhs) >> std::int32_t(rhs);
    set_sar_flags(lhs, rhs, std::uint32_t(tmp));
    return std::uint32_t(tmp);
}

std::uint16_t CPU::sar16_u(std::uint16_t lhs) {
    return sar16(lhs, 1);
}

std::uint32_t CPU::sar32_u(std::uint32_t lhs) {
    return sar32(lhs, 1);
}