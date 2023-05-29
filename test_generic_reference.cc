#include "generic_reference.hh"
#include "test_helper.hh"

static int generic_reference_tests_failed = 0;

void test_grh_set_low_byte() {
    std::uint32_t v = 0XDEADBEEF;
    grh_set_low_byte(&v, 0xFF);
    const bool t = v == 0xDEADBEFF;
    PRINT_FN_SIG_IF_TEST_FAILED(t, generic_reference_tests_failed);
}

void test_grh_set_low_word() {
    std::uint32_t v = 0xDEADBEEF;
    grh_set_low_word(&v, 0xB00B);
    const bool t = v == 0xDEADB00B;
    PRINT_FN_SIG_IF_TEST_FAILED(t, generic_reference_tests_failed);
}

void test_grh_set_low_word_high_byte() {
    std::uint32_t v = 0xDEADBEEF;
    grh_set_low_word_high_byte(&v, 0xFF);
    const bool t = v == 0xDEADFFEF;
    PRINT_FN_SIG_IF_TEST_FAILED(t, generic_reference_tests_failed);
}

void test_grh_null_setter() {
    std::uint32_t v = 0xDEADBEEF;
    grh_null_setter(&v, 0xB11BB00B);
    const bool t = v == 0xDEADBEEF;
    PRINT_FN_SIG_IF_TEST_FAILED(t, generic_reference_tests_failed);
}

void test_null_getter() {
    const std::uint32_t v = null_getter(0xDEADBEEF);
    const bool t = v == 0xDEADBEEF;
    PRINT_FN_SIG_IF_TEST_FAILED(t, generic_reference_tests_failed);
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
    //         destructor_(parent_, child_);
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

void test_generic_reference() {

    test_grh_set_low_byte();
    test_grh_set_low_word_high_byte();
    test_grh_set_low_word();
    test_grh_null_setter();
    test_grh_null_setter();

    if (generic_reference_tests_failed == 0) {
        std::cout << "All generic reference tests passed!\n";
    }
}