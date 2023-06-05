#include "flags.hh"

std::uint8_t Flags::get_flags8() const {
    std::uint8_t tmp = (sign << 7)
        | (zero << 6)
        | (adjust << 4)
        | (parity << 2)
        | 0x2
        | carry;
    return tmp;
}

void Flags::set_flags8(std::uint8_t b) {
    sign = b & (1 << 7);
    zero = b & (1 << 6);
    adjust = b & (1 << 4);
    parity = b & (1 << 2);
    carry = b & 1;
}

// LCOV_EXCL_START
void Flags::set_adc_flags([[maybe_unused]] std::uint32_t lhs,
                    [[maybe_unused]] std::uint32_t rhs,
                    [[maybe_unused]] std::uint32_t rv) {}

void Flags::set_add_flags([[maybe_unused]] std::uint32_t lhs,
                    [[maybe_unused]] std::uint32_t rhs,
                    [[maybe_unused]] std::uint32_t rv) {}

void Flags::set_and_flags([[maybe_unused]] std::uint32_t lhs,
                    [[maybe_unused]] std::uint32_t rhs,
                    [[maybe_unused]] std::uint32_t rv) {}

void Flags::set_cmp_flags([[maybe_unused]] std::uint32_t lhs,
                    [[maybe_unused]] std::uint32_t rhs,
                    [[maybe_unused]] std::uint32_t tmp) {}

void Flags::set_dec_flags([[maybe_unused]] std::uint32_t lhs,
                    [[maybe_unused]] std::uint32_t rv) {}

void Flags::set_inc_flags([[maybe_unused]] std::uint32_t lhs,
                    [[maybe_unused]] std::uint32_t rv) {}

void Flags::set_imul_flags([[maybe_unused]] std::uint32_t lhs,
                    [[maybe_unused]] std::uint32_t rhs,
                    [[maybe_unused]] std::uint32_t rv) {}

void Flags::set_imul_s_flags([[maybe_unused]] std::uint32_t lhs,
                           [[maybe_unused]] std::uint32_t rhs,
                           [[maybe_unused]] std::uint32_t rv) {}

void Flags::set_or_flags([[maybe_unused]] std::uint32_t lhs,
                    [[maybe_unused]] std::uint32_t rhs,
                    [[maybe_unused]] std::uint32_t rv) {}

void Flags::set_sar_flags([[maybe_unused]] std::uint32_t lhs,
                    [[maybe_unused]] std::uint32_t rhs,
                    [[maybe_unused]] std::uint32_t rv) {}

void Flags::set_sbb_flags([[maybe_unused]] std::uint32_t lhs,
                    [[maybe_unused]] std::uint32_t rhs,
                    [[maybe_unused]] std::uint32_t tmp) {}

void Flags::set_sub_flags([[maybe_unused]] std::uint32_t lhs,
                    [[maybe_unused]] std::uint32_t rhs,
                    [[maybe_unused]] std::uint32_t tmp) {}

void Flags::set_xor_flags([[maybe_unused]] std::uint32_t lhs,
                    [[maybe_unused]] std::uint32_t rhs,
                    [[maybe_unused]] std::uint32_t tmp) {}
// LCOV_EXCL_STOP