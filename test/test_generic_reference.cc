#include "generic_reference.hh"

#include <cassert>
#include <cstdint>
#include <iostream>

void test_grh_set_low_byte() {
    std::uint32_t v = 0XDEADBEEF;
    grh_set_low_byte(&v, 0xFF);
    const bool t = v == 0xDEADBEFF;
    assert(t);
}

void test_grh_set_low_word() {
    std::uint32_t v = 0xDEADBEEF;
    grh_set_low_word(&v, 0xB00B);
    const bool t = v == 0xDEADB00B;
    assert(t);
}

void test_grh_set_low_word_high_byte() {
    std::uint32_t v = 0xDEADBEEF;
    grh_set_low_word_high_byte(&v, 0xFF);
    const bool t = v == 0xDEADFFEF;
    assert(t);
}

void test_grh_null_setter() {
    std::uint32_t v = 0xDEADBEEF;
    grh_null_setter(&v, 0xB11BB00B);
    const bool t = v == 0xB11BB00B;
    assert(t);
}

void test_null_getter() {
    const std::uint32_t v = null_getter(0xDEADBEEF);
    const bool t = v == 0xDEADBEEF;
    assert(t);
}

// GenericMemoryReference(std::uint8_t* parent) : parent_(parent), child_(mread<Child>(parent)) {}

void test_generic_memory_reference_default_constructor() {
    auto grm = GenericMemoryReference<std::uint32_t>();
    const bool t = grm.parent() == nullptr && grm.child() == 0;
    assert(t);
}

void test_generic_memory_reference_constructor() {
    uint8_t test_mem[] = {0xDE, 0xAD, 0xBE, 0xEF};
    auto grm = GenericMemoryReference<std::uint32_t>(test_mem);
    const bool t = grm.parent() == &test_mem[0] && grm.child() == 0xEFBEADDE;
    assert(t);
}

void test_generic_reference() {

    test_grh_set_low_byte();
    test_grh_set_low_word_high_byte();
    test_grh_set_low_word();
    test_grh_null_setter();
    test_null_getter();
    test_generic_memory_reference_default_constructor();
    test_generic_memory_reference_constructor();

    std::cout << "All generic reference tests passed!" << std::endl;
}