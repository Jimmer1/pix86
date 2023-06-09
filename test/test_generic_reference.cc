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

// template <typename Parent, typename Child>
// class GenericRegisterReference {
// private:
//     Parent* parent_;
//     Child child_;
//     void(*destructor_)(Parent*, Child);
// public:
//     GenericRegisterReference() : parent_(nullptr), child_(Child{}), destructor_(nullptr) {}

//     GenericRegisterReference(Parent* parent, Child(*constructor)(Parent), void(*destructor)(Parent*, Child))
//         : parent_(parent), child_(constructor(*parent)), destructor_(destructor) {}

//     ~GenericRegisterReference() {
//         if (parent_ && destructor_)
//             destructor_(parent_, child_);
//     }

//     // Debug helper
//     const Parent* parent() const {
//         return parent_;
//     }

//     operator const Child&() const {
//         return child_;
//     }

//     operator Child&() {
//         return child_;
//     }
// };


void test_generic_register_reference_destructor() {
    std::uint32_t reg = 0xABCDEF12;
    {
        auto grr = GenericRegisterReference(&reg, get_low_word, grh_set_low_word);
        static_cast<std::uint16_t&>(grr) = 0xBEEF;
    }
    const bool t = reg == 0xABCDBEEF;
    assert(t);
}

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

void test_generic_memory_reference_destructor() {
    std::uint8_t test_mem[] = {0xDE, 0xAD, 0xBE, 0xEF};
    {
        auto grm = GenericMemoryReference<std::uint16_t>(test_mem);
        static_cast<std::uint16_t&>(grm) = 0xBABE;
    }
    const std::uint8_t expected[] = {0xBE, 0xBA, 0xBE, 0xEF};
    const bool t = std::equal(std::begin(test_mem), std::end(test_mem),
                              std::begin(expected), std::end(expected));
    assert(t);
}

void test_generic_reference() {

    test_grh_set_low_byte();
    test_grh_set_low_word_high_byte();
    test_grh_set_low_word();
    test_grh_null_setter();
    test_null_getter();
    test_generic_register_reference_destructor();
    test_generic_memory_reference_default_constructor();
    test_generic_memory_reference_constructor();
    test_generic_memory_reference_destructor();

    std::cout << "All generic reference tests passed!" << std::endl;
}