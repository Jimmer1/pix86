#include "fpu.hh"
#include "flags.hh"
#include "test_helper.hh"

#include <iostream>

static int fpu_tests_failed = 0;

class FPU_Tester : private FPU {

public:

    FPU_Tester(Flags& flags) : FPU(flags) {}

    void test_st() {
        V()[0] = 1.0L;
        const bool t = st(0) == 1.0L;
        PRINT_FN_SIG_IF_TEST_FAILED(t, fpu_tests_failed);
    }

};

void test_fpu() {
    Flags flags;
    FPU_Tester fpu_test{flags};

    fpu_test.test_st();

    if (fpu_tests_failed == 0) {
        std::cout << "All FPU tests passed!\n";
    }
}