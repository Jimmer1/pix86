#include "test.hh"

#include <chrono>
#include <iostream>

// auto profile(void(func*)()) {
//     auto t1 = std::chrono::high_resolution_clock::now();
//     func();
//     auto t2 = std::chrono::high_resolution_clock::now();
//     return std::duration_cast<std::microseconds>(t2 - t1);
// }

int main() {
    test_cpu();
    test_decoder();
    test_executor();
    test_flags();
    test_fpu();
    test_generic_reference();
    test_memory();
    test_stack();
    test_util();
}