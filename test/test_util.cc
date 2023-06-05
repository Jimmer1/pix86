#include "types.hh"
#include "util.hh"

#include <array>
#include <bit>
#include <cassert>
#include <cstdint>
#include <iostream>

void test_set_low_byte() {
    std::uint32_t n = 0xDEADBEEF;
    set_low_byte(n, 0xFF);
    const bool t = n == 0xDEADBEFF;
    assert(t);
}

void test_get_low_byte() {
    const bool t = get_low_byte(0xDEADBEEF) == 0xEF;
    assert(t);
}

void test_set_low_word() {
    std::uint32_t n = 0xDEADBEEF;
    set_low_word(n, 0xFFFF);
    const bool t = n == 0xDEADFFFF;
    assert(t);
}

void test_get_low_word() {
    const bool t = get_low_word(0xDEADBEEF) == 0xBEEF;
    assert(t);
}

void test_get_high_word() {
    const bool t = get_high_word(0xDEADBEEF) == 0xDEAD;
    assert(t);
}

void test_set_low_word_high_byte() {
    std::uint32_t n = 0xDEADBEEF;
    set_low_word_high_byte(n, 0xFF);
    const bool t = n == 0xDEADFFEF;
    assert(t);
}

void test_get_low_word_high_byte() {
    const bool t = get_low_word_high_byte(0xDEADBEEF) == 0xBE;
    assert(t);
}

void test_high_dword() {
    const bool t = high_dword(0xDEADBEEFBEEFBABE) == 0xDEADBEEF;
    assert(t);
}

void test_low_dword() {
    const bool t = low_dword(0xDEADBEEFBEEFBABE) == 0xBEEFBABE;
    assert(t);
}

void test_smask32() {
    const bool t = smask(std::uint32_t(-1)) == 0xFFFFFFFF
        && smask(std::uint32_t(1)) == 0;
    assert(t);
}

void test_smask16() {
    const bool t = smask(std::uint16_t(-1)) == 0xFFFF
        && smask(std::uint16_t(1)) == 0;
    assert(t);
}

void test_sext16() {
    const bool t = sext(std::uint16_t(-1)) == 0xFFFFFFFF
        && sext(std::uint16_t(1)) == 0x1;
    assert(t);
}

void test_sext32() {
    const bool t = sext(std::uint8_t(-1)) == 0xFFFFFFFF
        && sext(std::uint8_t(1)) == 0x1;
    assert(t);
}

void test_signbit8() {
    const bool t = signbit<std::uint8_t>(0xFF) == 1 && signbit<std::uint8_t>(0x1) == 0;
    assert(t);
}

void test_signbit16() {
    const bool t = signbit<std::uint16_t>(0xFFFF) == 1 && signbit<std::uint16_t>(0x1) == 0;
    assert(t);
}

void test_signbit32() {
    const bool t = signbit<std::uint32_t>(0xFFFFFFFF) == 1 && signbit<std::uint32_t>(0x1) == 0;
    assert(t);
}

static constexpr const std::uint8_t test_array[] = {0x1, 0x2, 0x3, 0x4};

void test_mread8() {
    const bool t = mread<std::uint8_t>(test_array) == 0x1;
    assert(t);
}

void test_mread16() {
    const bool t = mread<std::uint16_t>(test_array) == 0x0201;
    assert(t);
}

void test_mread32() {
    const bool t = mread<std::uint32_t>(test_array) == 0x04030201;
    assert(t);
}

void test_mwrite8() {
    std::array<std::uint8_t, 4> test_mem = {0, 0, 0, 0};
    mwrite<std::uint8_t>(&test_mem[0], 0xFF);
    const bool t = test_mem == std::array<std::uint8_t, 4>{0xFF, 0, 0, 0};
    assert(t);
}

void test_mwrite16() {
    std::array<std::uint8_t, 4> test_mem = {0, 0, 0, 0};
    mwrite<std::uint16_t>(&test_mem[0], 0xBEEF);
    const bool t = test_mem == std::array<std::uint8_t, 4>{0xEF, 0xBE, 0, 0};
    assert(t);
}

void test_mwrite32() {
    std::array<std::uint8_t, 4> test_mem = {0, 0, 0, 0};
    mwrite<std::uint32_t>(&test_mem[0], 0xDEADBEEF);
    const bool t = test_mem
        == std::array<std::uint8_t, 4>{0xEF, 0xBE, 0xAD, 0xDE};
    assert(t);
}

void test_byteswap32() {
    const bool t = byteswap(0xDEADBEEF) == 0xEFBEADDE;
    assert(t);
}

void test_parity() {
    bool t = true;
    for (unsigned int i = 0; i < 256; ++i) {
        t = t && parity(i) == !(std::popcount(i) & 1);
    }
    assert(t);
}

void test_sar_bitmask() {
    const bool t = sar_bitmask<u16>(3) == 0xE000;
    assert(t);
}

void test_util() {
    test_set_low_byte();
    test_get_low_byte();
    test_set_low_word();
    test_get_low_word();
    test_get_high_word();
    test_set_low_word_high_byte();
    test_get_low_word_high_byte();
    test_high_dword();
    test_low_dword();
    test_smask16();
    test_smask32();
    test_sext16();
    test_sext32();
    test_signbit8();
    test_signbit16();
    test_signbit32();
    test_mread8();
    test_mread16();
    test_mread32();
    test_mwrite8();
    test_mwrite16();
    test_mwrite32();
    test_byteswap32();
    test_parity();
    test_sar_bitmask();

    std::cout << "All util tests passed!" << std::endl;
}