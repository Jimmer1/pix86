#ifndef TEST_HELPER_HH
#define TEST_HELPER_HH

#include <iostream>

#define PRINT_FN_SIG_IF_TEST_FAILED(T, tests_failed)               \
    do {                                                           \
        if (! T) {                                                 \
            std::cout << __FUNCTION__ << " test failed!\n";               \
            ++tests_failed;                                        \
        }                                                          \
    } while(false)

#define DEBUG_BUILD

#endif