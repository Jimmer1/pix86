cmake_minimum_required (VERSION 3.22.1)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_EXTENSIONS ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project (Pix86)

add_subdirectory(test)


add_executable(pix86
    src/cpu.cc
    src/executor.cc
    src/decoder.cc
    src/fpu.cc
    src/memory.cc
    src/mmx.cc
    src/sse.cc
    src/util.cc
    src/generic_reference.cc
    src/flags.cc

    src/pix86.cc
)

target_include_directories(pix86 PRIVATE include)

target_link_libraries(pix86 PRIVATE gcov)

target_compile_options(pix86 PRIVATE
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
    -fprofile-generate 
    -fprofile-arcs -ftest-coverage
    -lgcov --coverage

    # Disabled warning flags.
    # -Wno-gnu-case-range
    -Wno-double-promotion
    # -Wno-unused-private-field # Re enable when optimising for size.
)
