#include "fpu.hh"
#include "flags.hh"
#include "types.hh"

#include <cassert>
#include <iostream>
#include <limits>

const auto NaN = std::numeric_limits<float80_t>::quiet_NaN();
Flags flags;

// void test_fxam_normal() {
//     Flags f;
//     FPU fpu(f);
//     fpu.fld(1.0L);
//     fpu.fxam();
//     const bool t = fpu.c_vals() == {0, 0, 1, 0};
//     assert(t);
// }

// void test_fxam_denormal() {
//     const auto denormal = std::numeric_limits<float80_t>::denorm_min();
//     Flags f;
//     FPU fpu(f);
//     fpu.fld(denormal);
//     fpu.fxam();
//     const bool t = fpu.c_vals() == {0, 0, 1, 1};
//     assert(t);
// }

// void test_fxam_zero() {
//     Flags f;
//     FPU fpu(f);
//     fpu.fld(0.0L);
//     fpu.fxam();
//     const bool t = fpu.c_vals() == {0, 0, 0, 1};
//     assert(t);
// }

// void test_fxam_NaN() {
//     Flags f;
//     FPU fpu(f);
//     fpu.fld(NaN);
//     fpu.fxam();
//     const bool t = fpu.c_vals() = {1, 0, 0, 0};
//     assert(t);
// }

// void test_fxam_infinity() {
//     const auto inf = std::numeric_limits<float80_t>::infinity();
//     Flags f;
//     FPU fpu(f);
//     fpu.fld(inf);
//     fpu.xam();
//     const bool t = fpu.c_vals() = {1, 0, 1, 0};
//     assert(t);
// }

void test_fcom() {
    FPU fpu(flags);
    fpu.fld(1.0L);
    fpu.fcom(0.5L);
    bool t1 = fpu.c_vals() == std::tuple{0, 0, 0, 0};
    fpu.fld(0.25L);
    fpu.fcom(0.5L);
    bool t2 = fpu.c_vals() == std::tuple{1, 0, 0, 0};
    fpu.fld(0.5L);
    fpu.fcom(0.5L);
    bool t3 = fpu.c_vals() == std::tuple{0, 0, 0, 1};
    fpu.fcom(NaN);
    bool t4 = fpu.c_vals() == std::tuple{1, 0, 1, 1};
    assert(t1 && t2 && t3 && t4);
}

void test_fpu() {
    // test_fxam_normal();
    // test_fxam_denormal();
    // test_fxam_zero();
    // test_fxam_NaN();
    // test_fxam_infinity();
    test_fcom();

    std::cout << "All FPU tests passed!\n";
}