#ifndef UTIL_HH
#define UTIL_HH

#include <algorithm>
#include <cstdint>
#include <limits>
#include <type_traits>

void set_low_byte(std::uint32_t& n, std::uint8_t v);
std::uint8_t get_low_byte(std::uint32_t n);
void set_low_word(std::uint32_t& n, std::uint16_t v);
std::uint16_t get_low_word(std::uint32_t n);
std::uint16_t get_high_word(std::uint32_t);
void set_low_word_high_byte(std::uint32_t& n, std::uint8_t v);
std::uint8_t get_low_word_high_byte(std::uint32_t n);
std::uint32_t high_dword(std::uint64_t n);
std::uint32_t low_dword(std::uint64_t n);
std::uint32_t smask(std::uint32_t n);
std::uint16_t smask(std::uint16_t n);

template <typename I, typename D = std::uint32_t>
D sext(I n) {
    return D(std::make_signed_t<D>(std::make_signed_t<I>(n)));
}

template <typename I>
bool signbit(I n) {
    return std::make_signed_t<I>(n) < 0;
}

template <typename I>
I mread(const std::uint8_t* sptr) {
    I rv;
    auto* dptr = reinterpret_cast<unsigned char*>(&rv);
    std::copy(sptr, sptr + sizeof(I), dptr);
    return rv;
}

template <typename I>
void mwrite(std::uint8_t* dptr, I value) {
    const auto* sptr = reinterpret_cast<unsigned char*>(&value);
    std::copy(sptr, sptr + sizeof(I), dptr);
}

template <typename I>
I byteswap(const I value) {
    I rv;
    auto* dptr = reinterpret_cast<std::uint8_t*>(&rv);
    const auto* sptr = reinterpret_cast<const std::uint8_t*>(&value);
    std::reverse_copy(sptr, sptr + sizeof(I), dptr);
    return rv;
}

bool parity(std::uint8_t n);

template <typename I>
constexpr I sar_bitmask(const I n) {
    return (((1u << (n+1u)) - 1u) << (std::numeric_limits<I>::digits - n));
}

#endif