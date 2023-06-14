#include "constants.hh"
#include "stack.hh"

#include <cassert>
#include <cstdint>
#include <iostream>

void test_stack_pop8() {
    std::uint32_t esp = sizeof(std::uint8_t);
    Stack stack{sizeof(std::uint8_t) + 1, esp};
    stack.push(0xAA_u8);
    const auto v = stack.pop<std::uint8_t>();
    const bool t = v == 0xAA && stack.esp() == sizeof(std::uint8_t);
    assert(t);
}

void test_stack_pop16() {
    std::uint32_t esp = sizeof(std::uint16_t);
    Stack stack{sizeof(std::uint16_t) + 1, esp};
    stack.push(0xAABB_u16);
    const auto v = stack.pop<u16>();
    const bool t = v == 0xAABB && stack.esp() == sizeof(std::uint16_t);
    assert(t);
}

void test_stack_pop32() {
    std::uint32_t esp = sizeof(std::uint32_t);
    Stack stack{sizeof(std::uint32_t) + 1, esp};
    stack.push(0xAABBCCDD_u32);
    const auto v = stack.pop<std::uint32_t>();
    const bool t = v == 0xAABBCCDD && stack.esp() == sizeof(std::uint32_t);
    assert(t);
}

void test_stack_push8() {
    std::uint32_t esp = 0xFFFF;
    Stack stack{0x10000, esp};
    stack.push(0xDE_u8);
    const bool t = *stack.mem_access(0xFFFE) == 0xDE && stack.esp() == 0xFFFE;
    assert(t);
}

void test_stack_push16() {
    std::uint32_t esp = 0xFFFF;
    Stack stack{0x10000, esp};
    stack.push(0xDEAD_u16);
    const std::uint8_t expected[] = {0xAD, 0xDE};
    const bool t = std::equal(stack.mem_access(0xFFFD), stack.mem_access(0xFFFF), &expected[0])
        && stack.esp() == 0xFFFD;
    assert(t);
}

void test_stack_push32() {
    std::uint32_t esp = 0xFFFF;
    Stack stack{0x10000, esp};
    stack.push(0xDEADBEEF_u32);
    const std::uint8_t expected[] = {0xEF, 0xBE, 0xAD, 0xDE};
    const bool t = std::equal(stack.mem_access(0xFFFB), stack.mem_access(0xFFFF), &expected[0])
        && stack.esp() == 0xFFFB;
    assert(t);
}

void test_stack() {
    test_stack_pop8();
    test_stack_pop16();
    test_stack_pop32();
    test_stack_push8();
    test_stack_push16();
    test_stack_push32();

    std::cout << "All stack tests passed!" << std::endl;
}