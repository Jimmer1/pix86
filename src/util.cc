#include "util.hh"

#include <array>
#include <cstdint>
#include <bit>

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

std::uint16_t get_high_word(std::uint32_t n) {
    return (n & 0xFFFF0000) >> 16;
}

void set_low_word_high_byte(std::uint32_t& n, std::uint8_t v) {
    n = (n & 0xFFFFFF00FF) | (v << 8);
}

std::uint8_t get_low_word_high_byte(std::uint32_t n) {
    return (n & 0xFF00) >> 8;
}

std::uint32_t high_dword(std::uint64_t n) {
    return (n & (0xFFFFFFFF00000000)) >> 32;
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

constexpr std::array<bool, 256> build_parity_table() noexcept {
    std::array<bool, 256> table;
    for (unsigned int i = 0; i < table.size(); ++i) {
        table[i] = !(std::popcount(i) & 1);
    }
    return table;
}

bool parity(std::uint8_t n) {
    static constexpr auto table = build_parity_table();
    return table[n];
}