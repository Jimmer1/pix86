cmake_minimum_required (VERSION 3.22.1)

project (Pix86)

set (CMAKE_CXX_STANDARD 23)



add_executable(pix86
    cpu.cc
    executor.cc
    decoder.cc 
    fpu.cc
    mmx.cc
    sse.cc
    util.cc
    generic_reference.cc

    pix86.cc
)

add_executable(pix86_test
    test_decoder.cc decoder.cc
    test_fpu.cc fpu.cc
    test_util.cc util.cc
    test_generic_reference.cc generic_reference.cc

    test_pix86.cc
)

target_compile_options(pix86 PRIVATE
    -g
    -pedantic
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

    # Disabled warning flags.
    -Wno-gnu-case-range
    -Wno-double-promotion
    -Wno-unused-private-field # Re enable when optimising for size.
)