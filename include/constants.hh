#ifndef CONSTANTS_HH
#define CONSTANTS_HH

#include <cstddef>
#include <cstdint>

static constexpr auto CMOV = 0x2;
static constexpr auto REG_DEST = 0x2;

using uint = unsigned int;

#define EAX (0)
#define ECX (1)
#define EDX (2)
#define EBX (3)
#define ESP (4)
#define EBP (5)
#define ESI (6)
#define EDI (7)

constexpr unsigned long long int operator""_kb(unsigned long long int n) noexcept {
    return 1024*n;
}

constexpr unsigned long long int operator""_mb(unsigned long long int n) noexcept {
    return 1024*1024*n;
}

constexpr std::uint8_t operator""_u8(const unsigned long long int n) noexcept {
    return std::uint8_t(n);
}

constexpr std::uint16_t operator""_u16(const unsigned long long int n) noexcept {
    return std::uint16_t(n);
}

constexpr std::uint32_t operator""_u32(const unsigned long long int n) noexcept {
    return std::uint32_t(n);
}

constexpr std::uint64_t operator""_u64(const unsigned long long int n) noexcept {
    return std::uint64_t(n);
}

#define DEBUG_TOKEN

#endif