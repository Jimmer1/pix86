cmake_minimum_required (VERSION 3.22.1)

add_executable(pix86_test
    test_cpu.cc ../src/cpu.cc
    test_decoder.cc ../src/decoder.cc
    test_executor.cc ../src/executor.cc
    test_flags.cc ../src/flags.cc
    test_fpu.cc ../src/fpu.cc
    test_generic_reference.cc ../src/generic_reference.cc
    test_memory.cc ../src/memory.cc
    test_stack.cc
    test_util.cc ../src/util.cc

    test_pix86.cc
)

add_executable(mrr_vis mrr_vis.cc ../src/decoder.cc ../src/memory.cc)

target_include_directories(pix86_test PRIVATE ../include)
target_include_directories(mrr_vis PRIVATE ../include)

target_link_libraries(pix86_test PRIVATE gcov)

target_compile_options(pix86_test PRIVATE
    -g
    -O0
    # -pedantic
    -Wall
    -Wcast-align
    -Wdouble-promotion
    -Wextra
    -Werror
    -Wformat=2
    -Wimplicit-fallthrough
    -Wmisleading-indentation
    -Wnon-virtual-dtor
    -Wnull-dereference
    -Wold-style-cast
    -Woverloaded-virtual
    -Wshadow
    -Wsign-conversion
    -Wunused
    -std=c++23
    -DTEST=1
    -fprofile-generate 
    -fprofile-arcs -ftest-coverage
    -lgcov --coverage

    # Disabled warning flags.
    # -Wno-gnu-case-range
    -Wno-double-promotion
    # -Wno-unused-private-field # Re enable when optimising for size.
)

target_compile_options(mrr_vis PRIVATE
    -g
    -O0
    # -pedantic
    -Wall
    -Wcast-align
    -Wdouble-promotion
    -Wextra
    -Werror
    -Wformat=2
    -Wimplicit-fallthrough
    -Wmisleading-indentation
    -Wnon-virtual-dtor
    -Wnull-dereference
    -Wold-style-cast
    -Woverloaded-virtual
    -Wshadow
    -Wsign-conversion
    -Wunused
    -std=c++23

    # Disabled warning flags.
    # -Wno-gnu-case-range
    -Wno-double-promotion
    # -Wno-unused-private-field # Re enable when optimising for size.
)