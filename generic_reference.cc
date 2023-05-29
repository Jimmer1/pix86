#include "generic_reference.hh"
#include "util.hh"

#include <cstdint>

void grh_set_low_byte(std::uint32_t* n, std::uint8_t v) {
    set_low_byte(*n, v);
}

void grh_set_low_word(std::uint32_t* n, std::uint16_t v) {
    set_low_word(*n, v);
}

void grh_set_low_word_high_byte(std::uint32_t* n, std::uint8_t v) {
    set_low_word_high_byte(*n, v);
}

void grh_null_setter([[maybe_unused]] std::uint32_t* _, [[maybe_unused]] std::uint32_t x) {
}

std::uint32_t null_getter(std::uint32_t _) {
    return _;
}