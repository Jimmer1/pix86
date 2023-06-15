#include "executor.hh"

#include <type_traits>
#include <cstdint>
#include <algorithm>
#include <iostream>

void test_binary_operation_r2r_rm_dest_8bit() {
    const std::uint8_t code[] = {0x0, 0xF8}; // add al, bh
    CPU cpu;
    cpu.R[EAX] = 0xDEADBEEF;
    cpu.R[EBX] = 0xB00B1234;
    std::copy(std::begin(code), std::end(code), cpu.mem.begin());
    const auto [ops, skip] = decode_modregrm(code[1], cpu.mem, 0, true);
    // New scope created to ensure that data is written when sops are destructed.
    {
        auto sops = structure_operands<std::uint8_t>(cpu.R, cpu.mem, ops);
        binary_operation(sops, cpu, &CPU::add8, false);
    }
    // Check that add modified the registers properly.
    const bool t = get_low_byte(cpu.R[EAX]) == 1
        && get_low_word_high_byte(cpu.R[EBX]) == 0x12;
    assert(t);
}

void test_binary_operation_r2r_reg_dest_8bit() {
    const std::uint8_t code[] = {0x2, 0xF8}; // add bh, al
    CPU cpu;
    cpu.R[EAX] = 0x12345678;
    cpu.R[EBX] = 0x87654321;
    std::copy(std::begin(code), std::end(code), cpu.mem.begin());
    const auto [ops, skip] = decode_modregrm(code[1], cpu.mem, 0, is8bit_v<0x2>);
    // New scope created to ensure that data is written when sops is destructed.
    {
        auto sops = structure_operands<std::uint8_t>(cpu.R, cpu.mem, ops);
        binary_operation(sops, cpu, &CPU::add8, isRegDest_v<0x2>);
    }
    const bool t = get_low_word_high_byte(cpu.R[EBX]) == 0xBB
        && get_low_byte(cpu.R[EAX]) == 0x78;
    assert(t);
}

void test_binary_operation_m2r_reg_dest_8bit() {
    const std::uint8_t code[] = {0x2, 0x8}; // add cl, BYTE PTR [eax]
    CPU cpu;
    std::copy(std::begin(code), std::end(code), cpu.mem.begin());
    cpu.R[EAX] = 4;
    cpu.R[ECX] = 0x12;
    cpu.mem[4] = 0xED;
    const auto [ops, skip] = decode_modregrm(code[1], cpu.mem, 0, is8bit_v<0x2>);
    // New scope created to ensure that data is written when sops is destructed.
    {
        auto sops = structure_operands<std::uint8_t>(cpu.R, cpu.mem, ops);
        binary_operation(sops, cpu, &CPU::add8, isRegDest_v<0x2>);
    }
    const bool t = get_low_byte(cpu.R[ECX]) == 0xFF
        && cpu.mem[4] == 0xED;
    assert(t);
}

void test_binary_operation_r2m_rm_dest_8bit() {
    const std::uint8_t code[] = {0x0, 0x8}; // add BYTE PTR [eax], cl
    CPU cpu;
    std::copy(std::begin(code), std::end(code), cpu.mem.begin());
    cpu.R[EAX] = 4;
    cpu.R[ECX] = 0x12;
    cpu.mem[4] = 0xED;
    const auto [ops, skip] = decode_modregrm(code[1], cpu.mem, 0, is8bit_v<0x0>);
    // New scope created to ensure that data is written when sops is destructed.
    {
        auto sops = structure_operands<std::uint8_t>(cpu.R, cpu.mem, ops);
        binary_operation(sops, cpu, &CPU::add8, isRegDest_v<0x0>);
    }
    const bool t = cpu.mem[4] == 0xFF
        && get_low_byte(cpu.R[ECX]) == 0x12;
    assert(t);
}

void test_execute_binary_operation_8bit() {
    const std::uint8_t code[] = {0x2, 0xF8}; // add bh, al
    Executor exe(code);
    exe.cpu.R[EAX] = 0xDEADBEEF;
    exe.cpu.R[EBX] = 0x12345678;
    exe.execute_binary_operation_8bit<0x2>(&CPU::add8);
    const bool t = exe.cpu.R[EBX] == 0x12344578
        && exe.cpu.R[EAX] == 0xDEADBEEF
        && exe.pcnt() == 2;
    assert(t);
}

void test_execute_binary_operation_16bit() {
    const std::uint8_t code[] = {0x1, 0xC3}; // add bx, ax
    Executor exe(code);
    exe.is_16_bit_mode = true;
    exe.cpu.R[EAX] = 0xDEADBEEF;
    exe.cpu.R[EBX] = 0x12345678;
    exe.execute_binary_operation_16_32_bit<0x1>(&CPU::add16, &CPU::add32);
    const bool t = exe.cpu.R[EBX] == 0x12341567
        && exe.cpu.R[EAX] == 0xDEADBEEF
        && exe.pcnt() == 2
        && !exe.is_16_bit_mode;
    assert(t);
}

void test_execute_binary_operation_32bit() {
    const std::uint8_t code[] = {0x1, 0xC3}; // add ebx, eax
    Executor exe(code);
    exe.cpu.R[EAX] = 0xDEADBEEF;
    exe.cpu.R[EBX] = 0x12345678;
    exe.execute_binary_operation_16_32_bit<0x1>(&CPU::add16, &CPU::add32);
    const bool t = exe.cpu.R[EBX] == 0xF0E21567
        && exe.cpu.R[EAX] == 0xDEADBEEF
        && exe.pcnt() == 2
        && !exe.is_16_bit_mode;
    assert(t);
}

void test_execute_binary_accumulator_immediate_operation_8bit() {
    const std::uint8_t code[] = {0x4, 0x55}; // add al, 0xAD
    Executor exe(code);
    set_low_byte(exe.cpu.R[EAX], 0x4A);
    exe.execute_binary_accumulator_immediate_operation_8bit(&CPU::add8);
    const bool t = get_low_byte(exe.cpu.R[EAX]) == 0x9F
        && exe.pcnt() == 2;
    assert(t);
}

void test_execute_binary_accumulator_immediate_operation_16bit() {
    const std::uint8_t code[] = {0x5, 0xAB, 0xCD}; // add ax, 0xCDAB
    Executor exe(code);
    set_low_word(exe.cpu.R[EAX], 0x1234);
    exe.is_16_bit_mode = true;
    exe.execute_binary_accumulator_immediate_operation_16_32bit(&CPU::add16, &CPU::add32);
    const bool t = get_low_word(exe.cpu.R[EAX]) == 0xDFDF
        && !exe.is_16_bit_mode
        && exe.pcnt() == 3;
    assert(t);
}

void test_execute_binary_accumulator_immediate_operation_32bit() {
    const std::uint8_t code[] = {0x5, 0xEF, 0xBE, 0xAD, 0xDE}; // add eax, 0xDEADBEEF
    Executor exe(code);
    exe.cpu.R[EAX] = 0x12345678;
    exe.is_16_bit_mode = false;
    exe.execute_binary_accumulator_immediate_operation_16_32bit(&CPU::add16, &CPU::add32);
    const bool t = exe.cpu.R[EAX] == 0xF0E21567
        && !exe.is_16_bit_mode
        && exe.pcnt() == 5;
    assert(t);
}

void test_get_regencoded_op_8bit() {
    const bool t1 = get_regencoded_op_8bit(0) == &CPU::add8;
    assert(t1);
    const bool t2 = get_regencoded_op_8bit(1) == &CPU::or8;
    assert(t2);
    const bool t3 = get_regencoded_op_8bit(2) == &CPU::adc8;
    assert(t3);
    const bool t4 = get_regencoded_op_8bit(3) == &CPU::sbb8;
    assert(t4);
    const bool t5 = get_regencoded_op_8bit(4) == &CPU::and8;
    assert(t5);
    const bool t6 = get_regencoded_op_8bit(5) == &CPU::sub8;
    assert(t6);
    const bool t7 = get_regencoded_op_8bit(6) == &CPU::xor8;
    assert(t7);
    const bool t8 = get_regencoded_op_8bit(7) == &CPU::cmp8;
    assert(t8);
    bool t9 = false;
    try {
        [[maybe_unused]] const auto _ = get_regencoded_op_8bit(9);
    } catch (const std::exception& ex) {
        t9 = true;
    }
    assert(t9);
}

void test_execute_binary_immediate_regencoded_operation_register_8bit() {
    const std::uint8_t code[] = {0x80, 0xE0, 0xAA}; // and al, 0xAA
    Executor exe(code);
    set_low_byte(exe.cpu.R[EAX], 0xCC);
    exe.execute_binary_immediate_regencoded_operation_8bit();
    const bool t = get_low_byte(exe.cpu.R[EAX]) == 0x88
        && exe.pcnt() == 3;
    assert(t);
}

void test_execute_binary_immediate_regencoded_operation_memory_8bit() {
    const std::uint8_t code[] = {0x80, 0x20, 0xAA}; // and BYTE PTR [eax], 0xAA
    Executor exe(code);
    exe.cpu.mem[4] = 0xCC;
    exe.cpu.R[EAX] = 4;
    exe.execute_binary_immediate_regencoded_operation_8bit();
    const bool t = exe.cpu.mem[4] == 0x88
        && exe.pcnt() == 3;
    assert(t);
}

void test_get_regencoded_op_16bit() {
    const bool t1 = get_regencoded_op_16bit(0) == &CPU::add16;
    assert(t1);
    const bool t2 = get_regencoded_op_16bit(1) == &CPU::or16;
    assert(t2);
    const bool t3 = get_regencoded_op_16bit(2) == &CPU::adc16;
    assert(t3);
    const bool t4 = get_regencoded_op_16bit(3) == &CPU::sbb16;
    assert(t4);
    const bool t5 = get_regencoded_op_16bit(4) == &CPU::and16;
    assert(t5);
    const bool t6 = get_regencoded_op_16bit(5) == &CPU::sub16;
    assert(t6);
    const bool t7 = get_regencoded_op_16bit(6) == &CPU::xor16;
    assert(t7);
    const bool t8 = get_regencoded_op_16bit(7) == &CPU::cmp16;
    assert(t8);
    bool t9 = false;
    try {
        [[maybe_unused]] const auto _ = get_regencoded_op_16bit(9);
    } catch (const std::exception& ex) {
        t9 = true;
    }
    assert(t9);
}

void test_execute_binary_immediate_regencoded_operation_register_16bit() {
    const std::uint8_t code[] = {0x81, 0xE0, 0xAA, 0xBB}; // and ax, 0xAA
    Executor exe(code);
    exe.is_16_bit_mode = true;
    set_low_word(exe.cpu.R[EAX], 0xCCDD);
    exe.execute_binary_immediate_regencoded_operation_16_32bit();
    const bool t = get_low_word(exe.cpu.R[EAX]) == 0x8888
        && !exe.is_16_bit_mode
        && exe.pcnt() == 4;
    assert(t);
}

void test_execute_binary_immediate_regencoded_operation_memory_16bit() {
    const std::uint8_t code[] = {0x81, 0x20, 0xAA, 0xBB}; // and WORD PTR [eax], 0xAA
    Executor exe(code);
    exe.is_16_bit_mode = true;
    exe.cpu.R[EAX] = 4;
    const std::uint8_t data[] = {0xDD, 0xCC};
    std::copy(std::begin(data), std::end(data), &exe.cpu.mem[4]);
    exe.execute_binary_immediate_regencoded_operation_16_32bit();
    const std::uint8_t expected[] = {0x88, 0x88};
    const bool t = std::equal(&exe.cpu.mem[4], &exe.cpu.mem[4 + sizeof(std::uint16_t)],
                              std::begin(expected), std::end(expected))
        && !exe.is_16_bit_mode
        && exe.pcnt() == 4;
    assert(t);
}

void test_get_regencoded_op_32bit() {
    const bool t1 = get_regencoded_op_32bit(0) == &CPU::add32;
    assert(t1);
    const bool t2 = get_regencoded_op_32bit(1) == &CPU::or32;
    assert(t2);
    const bool t3 = get_regencoded_op_32bit(2) == &CPU::adc32;
    assert(t3);
    const bool t4 = get_regencoded_op_32bit(3) == &CPU::sbb32;
    assert(t4);
    const bool t5 = get_regencoded_op_32bit(4) == &CPU::and32;
    assert(t5);
    const bool t6 = get_regencoded_op_32bit(5) == &CPU::sub32;
    assert(t6);
    const bool t7 = get_regencoded_op_32bit(6) == &CPU::xor32;
    assert(t7);
    const bool t8 = get_regencoded_op_32bit(7) == &CPU::cmp32;
    assert(t8);
    bool t9 = false;
    try {
        [[maybe_unused]] const auto _ = get_regencoded_op_32bit(9);
    } catch (const std::exception& ex) {
        t9 = true;
    }
    assert(t9);
}

void test_execute_binary_immediate_regencoded_operation_register_32bit() {
    const std::uint8_t code[] = {0x81, 0xE0, 0xAA, 0xBB, 0xCC, 0xDD}; // and [eax], 0xDDCCBBAA
    Executor exe(code);
    exe.is_16_bit_mode = false;
    exe.cpu.R[EAX] = 0x12345678;
    exe.execute_binary_immediate_regencoded_operation_16_32bit();
    const bool t = exe.cpu.R[EAX] == 0x10041228
        && !exe.is_16_bit_mode
        && exe.pcnt() == 6;
    assert(t);
}

void test_execute_binary_immediate_regencoded_operation_memory_32bit() {
    const std::uint8_t code[] = {0x81, 0x20, 0xAA, 0xBB, 0xCC, 0xDD}; // and DWORD PTR [eax], 0xDDCCBBAA
    Executor exe(code);
    exe.is_16_bit_mode = false;
    exe.cpu.R[EAX] = 0xF;
    const std::uint8_t data[] = {0x78, 0x56, 0x34, 0x12};
    std::copy(std::begin(data), std::end(data), &exe.cpu.mem[0xF]);
    exe.execute_binary_immediate_regencoded_operation_16_32bit();
    const std::uint8_t expected[] = {0x28, 0x12, 0x4, 0x10};
    const bool t = std::equal(&exe.cpu.mem[0xF], &exe.cpu.mem[0xF + sizeof(std::uint32_t)],
                              std::begin(expected), std::end(expected))
        && !exe.is_16_bit_mode
        && exe.pcnt() == 6;
    assert(t);
}

template <std::uint8_t ... Opcodes>
void test_opcode();

template <>
void test_opcode<0x0>() {
    const std::uint8_t code[] = {0x0, 0xC1};
    Executor exe(code);
    exe.execute(false, true, 1);
    const bool t = exe.last_op == Opcode::ADD8
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x1>() {
    const std::uint8_t code[] = {0x1, 0xC1};
    Executor exe(code);
    exe.execute(false, true, 1);
    const bool t = exe.last_op == Opcode::ADD16_32
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x2>() {
    const std::uint8_t code[] = {0x2, 0xC1};
    Executor exe(code);
    exe.execute(false, true, 1);
    const bool t = exe.last_op == Opcode::ADD8
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x3>() {
    const std::uint8_t code[] = {0x3, 0xC1};
    Executor exe(code);
    exe.execute(false, true, 1);
    const bool t = exe.last_op == Opcode::ADD16_32
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x4>() {
    const std::uint8_t code[] = {0x4, 0xAA};
    Executor exe(code);
    exe.execute(false, true, 1);
    const bool t = exe.last_op == Opcode::ADD8
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x5>() {
    const std::uint8_t code[] = {0x5, 0xAA, 0, 0, 0};
    Executor exe(code);
    exe.execute(false, true, 1);
    const bool t = exe.last_op == Opcode::ADD16_32
        && exe.pcnt() == 5;
    assert(t);
}

template <>
void test_opcode<0x6>() {
    const std::uint8_t code[] = {0x6};
    Executor exe(code);
    exe.execute(false, true, 1);
    const bool t = exe.last_op == Opcode::PUSH_ES
        && exe.pcnt() == 1;
    assert(t);
}

template <>
void test_opcode<0x7>() {
    const std::uint8_t code[] = {0x6, 0x7};
    Executor exe(code);
    exe.execute(false, true, 2);
    const bool t = exe.last_op == Opcode::POP_ES
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x8>() {
    const std::uint8_t code[] = {0x8, 0xC1};
    Executor exe(code);
    exe.execute(false, true, 1);
    const bool t = exe.last_op == Opcode::OR8
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x9>() {
    const std::uint8_t code[] = {0x9, 0xC1};
    Executor exe(code);
    exe.execute(false, true, 1);
    const bool t = exe.last_op == Opcode::OR16_32
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0xA>() {
    const std::uint8_t code[] = {0xA, 0xC1};
    Executor exe(code);
    exe.execute(false, true, 1);
    const bool t = exe.last_op == Opcode::OR8
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0xB>() {
    const std::uint8_t code[] = {0xB, 0xC1};
    Executor exe(code);
    exe.execute(false, true, 1);
    const bool t = exe.last_op == Opcode::OR16_32
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0xC>() {
    const std::uint8_t code[] = {0xC, 0xC1};
    Executor exe(code);
    exe.execute(false, true, 1);
    const bool t = exe.last_op == Opcode::OR8
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0xD>() {
    const std::uint8_t code[] = {0xD, 0xC1, 0, 0, 0};
    Executor exe(code);
    exe.execute(false, true, 1);
    const bool t = exe.last_op == Opcode::OR16_32
        && exe.pcnt() == 5;
    assert(t);
}

template <>
void test_opcode<0xE>() {
    const std::uint8_t code[] = {0xE};
    Executor exe(code);
    exe.execute(false, true, 1);
    const bool t = exe.last_op == Opcode::PUSH_CS
        && exe.pcnt() == 1;
    assert(t);
}

template <>
void test_opcode<0x10>() {
    const std::uint8_t code[] = {0x10, 0xC1};
    Executor exe(code);
    exe.execute(false, true, 1);
    const bool t = exe.last_op == Opcode::ADC8
        && exe.pcnt() == 2;
    // std::cout << op_cast(exe.last_op) << ' ' << exe.pcnt() << std::endl;
    assert(t);
}

template <>
void test_opcode<0x11>() {
    const std::uint8_t code[] = {0x11, 0xC1};
    Executor exe(code);
    exe.execute(false, true, 1);
    const bool t = exe.last_op == Opcode::ADC16_32
        && !exe.is_16_bit_mode
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x12>() {
    const std::uint8_t code[] = {0x12, 0xC1};
    Executor exe(code);
    exe.execute(false, true, 1);
    const bool t = exe.last_op == Opcode::ADC8
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x13>() {
    const std::uint8_t code[] = {0x13, 0xC1};
    Executor exe(code);
    exe.execute(false, true, 1);
    const bool t = exe.last_op == Opcode::ADC16_32
        && !exe.is_16_bit_mode
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x14>() {
    const std::uint8_t code[] = {0x14, 0xC1};
    Executor exe(code);
    exe.execute(false, true, 1);
    const bool t = exe.last_op == Opcode::ADC8
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x15>() {
    const std::uint8_t code[] = {0x15, 0xC1, 0, 0, 0};
    Executor exe(code);
    exe.execute(false, true, 1);
    const bool t = exe.last_op == Opcode::ADC16_32
        && !exe.is_16_bit_mode
        && exe.pcnt() == 5;
    assert(t);
}

template <>
void test_opcode<0x16>() {
    const std::uint8_t code[] = {0x16};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::PUSH_SS
        && exe.pcnt() == 1;
    assert(t);
}

template <>
void test_opcode<0x17>() {
    const std::uint8_t code[] = {0x17};
    Executor exe(code);
    exe.cpu.push16(0xEEEE);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::POP_SS
        && exe.pcnt() == 1;
    assert(t);
}

template <>
void test_opcode<0x18>() {
    const std::uint8_t code[] = {0x18, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::SBB8
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x19>() {
    const std::uint8_t code[] = {0x19, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::SBB16_32
        && !exe.is_16_bit_mode
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x1A>() {
    const std::uint8_t code[] = {0x1A, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::SBB8
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x1B>() {
    const std::uint8_t code[] = {0x1B, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::SBB16_32
        && !exe.is_16_bit_mode
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x1C>() {
    const std::uint8_t code[] = {0x1C, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::SBB8
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x1D>() {
    const std::uint8_t code[] = {0x1D, 0xC1, 0, 0, 0};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::SBB16_32
        && !exe.is_16_bit_mode
        && exe.pcnt() == 5;
    assert(t);
}

template <>
void test_opcode<0x1E>() {
    const std::uint8_t code[] = {0x1E};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::PUSH_DS
        && exe.pcnt() == 1;
    assert(t);
}

template <>
void test_opcode<0x1F>() {
    const std::uint8_t code[] = {0x1F};
    Executor exe(code);
    exe.cpu.push16(0xEEEE);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::POP_DS
        && exe.pcnt() == 1;
    assert(t);
}

template <>
void test_opcode<0x20>() {
    const std::uint8_t code[] = {0x20, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::AND8
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x21>() {
    const std::uint8_t code[] = {0x21, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::AND16_32
        && !exe.is_16_bit_mode
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x22>() {
    const std::uint8_t code[] = {0x22, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::AND8
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x23>() {
    const std::uint8_t code[] = {0x23, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::AND16_32
        && !exe.is_16_bit_mode
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x24>() {
    const std::uint8_t code[] = {0x24, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::AND8
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x25>() {
    const std::uint8_t code[] = {0x25, 0xC1, 0, 0, 0};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::AND16_32
        && !exe.is_16_bit_mode
        && exe.pcnt() == 5;
    assert(t);
}

template <>
void test_opcode<0x27>() {
    const std::uint8_t code[] = {0x27};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::DAA
        && exe.pcnt() == 1;
    assert(t);
}

template <>
void test_opcode<0x28>() {
    const std::uint8_t code[] = {0x28, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::SUB8
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x29>() {
    const std::uint8_t code[] = {0x29, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::SUB16_32
        && !exe.is_16_bit_mode
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x2A>() {
    const std::uint8_t code[] = {0x2A, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::SUB8
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x2B>() {
    const std::uint8_t code[] = {0x2B, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::SUB16_32
        && !exe.is_16_bit_mode
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x2C>() {
    const std::uint8_t code[] = {0x2C, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::SUB8
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x2D>() {
    const std::uint8_t code[] = {0x2D, 0xC1, 0, 0, 0};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::SUB16_32
        && !exe.is_16_bit_mode
        && exe.pcnt() == 5;
    assert(t);
}

template <>
void test_opcode<0x2F>() {
    const std::uint8_t code[] = {0x2F};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::DAS
        && exe.pcnt() == 1;
    assert(t);
}

template <>
void test_opcode<0x30>() {
    const std::uint8_t code[] = {0x30, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::XOR8
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x31>() {
    const std::uint8_t code[] = {0x31, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::XOR16_32
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x32>() {
    const std::uint8_t code[] = {0x32, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::XOR8
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x33>() {
    const std::uint8_t code[] = {0x33, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::XOR16_32
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x34>() {
    const std::uint8_t code[] = {0x34, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::XOR8
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x35>() {
    const std::uint8_t code[] = {0x35, 0xC1, 0, 0, 0};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::XOR16_32
        && exe.pcnt() == 5;
    assert(t);
}

template <>
void test_opcode<0x37>() {
    const std::uint8_t code[] = {0x37};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::AAA
        && exe.pcnt() == 1;
    assert(t);
}

template <>
void test_opcode<0x38>() {
    const std::uint8_t code[] = {0x38, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::CMP8
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x39>() {
    const std::uint8_t code[] = {0x39, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::CMP16_32
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x3A>() {
    const std::uint8_t code[] = {0x3A, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::CMP8
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x3B>() {
    const std::uint8_t code[] = {0x3B, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::CMP16_32
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x3C>() {
    const std::uint8_t code[] = {0x3C, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::CMP8
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x3D>() {
    const std::uint8_t code[] = {0x3D, 0xC1, 0, 0, 0};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::CMP16_32
        && exe.pcnt() == 5;
    assert(t);
}

template <>
void test_opcode<0x3F>() {
    const std::uint8_t code[] = {0x3F};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::AAS
        && exe.pcnt() == 1;
    assert(t);
}

template <>
void test_opcode<0x40, 0x47>() {
    const std::uint8_t code[] = {0x40, 0x40};
    Executor exe(code);
    exe.is_16_bit_mode = true;
    exe.run_single_cycle();
    const bool t1 = exe.last_op == Opcode::INC16
        && exe.pcnt() == 1;
    assert(t1);
    exe.is_16_bit_mode = false;
    exe.run_single_cycle();
    const bool t2 = exe.last_op == Opcode::INC32
        && exe.pcnt() == 2;
    assert(t2);
}

template <>
void test_opcode<0x50, 0x57>() {
    const std::uint8_t code[] = {0x50, 0x50};
    Executor exe(code);
    exe.is_16_bit_mode = true;
    exe.run_single_cycle();
    const bool t1 = exe.last_op == Opcode::PUSH16
        && exe.pcnt() == 1;
    assert(t1);
    exe.is_16_bit_mode = false;
    exe.run_single_cycle();
    const bool t2 = exe.last_op == Opcode::PUSH32
        && exe.pcnt() == 2;
    assert(t2);
}

template <>
void test_opcode<0x58, 0x5B>() {
    const std::uint8_t code[] = {0x58};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::PUSH8
        && exe.pcnt() == 1;
    assert(t);
}

template <>
void test_opcode<0x5C, 0x5F>() {
    const std::uint8_t code[] = {0x5C};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::PUSH8
        && exe.pcnt() == 1;
    assert(t);
}

template <>
void test_opcode<0x60>() {
    const std::uint8_t code[] = {0x60, 0x60};
    Executor exe(code);
    exe.is_16_bit_mode = true;
    exe.run_single_cycle();
    const bool t1 = exe.last_op == Opcode::PUSHA
        && exe.pcnt() == 1;
    assert(t1);
    exe.is_16_bit_mode = false;
    exe.run_single_cycle();
    const bool t2 = exe.last_op == Opcode::PUSHAD
        && exe.pcnt() == 2;
    assert(t2);
}

template <>
void test_opcode<0x61>() {
    const std::uint8_t code[] = {0x61, 0x61};
    Executor exe(code);

    std::uint16_t vals[] = {0, 1, 2, 3, 4, 5, 6, 7};
    for (auto ptr = std::begin(vals); ptr != std::end(vals); ++ptr)
        exe.cpu.push16(*ptr);

    exe.is_16_bit_mode = true;
    exe.run_single_cycle();
    const bool t1 = exe.last_op == Opcode::POPA
        && exe.pcnt() == 1;
    
    assert(t1);

    std::uint32_t vals2[] = {0, 1, 2, 3, 4, 5, 6, 7};
    for (auto ptr = std::begin(vals2); ptr != std::end(vals2); ++ptr)
        exe.cpu.push32(*ptr);

    exe.is_16_bit_mode = false;
    exe.run_single_cycle();
    const bool t2 = exe.last_op == Opcode::POPAD
        && exe.pcnt() == 2;
    assert(t2);
}

template <>
void test_opcode<0x9E>() {
    const std::uint8_t code[] = {0x9E};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::SAHF
        && exe.pcnt() == 1;
    assert(t);
}

template <>
void test_opcode<0x9F>() {
    const std::uint8_t code[] = {0x9F};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::LAHF
        && exe.pcnt() == 1;
    assert(t);
}

template <>
void test_opcode<0xD4>() {
    const std::uint8_t code[] = {0xD4, 0xA};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::AAM
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0xD5>() {
    const std::uint8_t code[] = {0xD5, 0xA};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::AAD
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0xD6>() {
    const std::uint8_t code[] = {0xD6};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::SALC
        && exe.pcnt() == 1;
    assert(t);
}

template <>
void test_opcode<0xD7>() {
    const std::uint8_t code[] = {0xD7};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::XLAT
        && exe.pcnt() == 1;
    assert(t);
}

template <>
void test_opcode<0xF4>() {
    const std::uint8_t code[] = {0xF4};
    Executor exe(code);
    exe.execute(false, true, 1);
    const bool t = exe.last_op == Opcode::HLT
        && exe.pcnt() == 1;
    assert(t);
}

template <>
void test_opcode<0xF5>() {
    const std::uint8_t code[] = {0xF5};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::CMC
        && exe.pcnt() == 1;
    assert(t);
}

template <>
void test_opcode<0xF8>() {
    const std::uint8_t code[] = {0xF8};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::CLC
        && exe.pcnt() == 1;
    assert(t);
}

template <>
void test_opcode<0xF9>() {
    const std::uint8_t code[] = {0xF9};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::STC
        && exe.pcnt() == 1;
    assert(t);
}

template <>
void test_opcode<0xFC>() {
    const std::uint8_t code[] = {0xFC};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::CLD
        && exe.pcnt() == 1;
    assert(t);
}

template <>
void test_opcode<0xFD>() {
    const std::uint8_t code[] = {0xFD};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::STD
        && exe.pcnt() == 1;
    assert(t);
}

template <>
void test_opcode<0xF, 0x40>() {
    const std::uint8_t code[] = {0xF, 0x40, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::CMOVO16_32
        && exe.pcnt() == 3;
    assert(t);
}

template <>
void test_opcode<0xF, 0x41>() {
    const std::uint8_t code[] = {0xF, 0x41, 0xC1};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::CMOVNO16_32
        && exe.pcnt() == 3;
    assert(t);
}

template <>
void test_opcode<0xF, 0xA0>() {
    const std::uint8_t code[] = {0xF, 0xA0};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::PUSH_FS
        && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0xF, 0xA8>() {
    const std::uint8_t code[] = {0xF, 0xA8};
    Executor exe(code);
    exe.run_single_cycle();
    const bool t = exe.last_op == Opcode::PUSH_GS
        && exe.pcnt() == 2;
    assert(t);
}

void test_executor() {

    test_binary_operation_r2r_rm_dest_8bit();
    test_binary_operation_r2r_reg_dest_8bit();
    test_binary_operation_m2r_reg_dest_8bit();
    test_binary_operation_r2m_rm_dest_8bit();

    test_execute_binary_operation_8bit();
    test_execute_binary_operation_16bit();
    test_execute_binary_operation_32bit();
    test_execute_binary_accumulator_immediate_operation_8bit();
    test_execute_binary_accumulator_immediate_operation_16bit();
    test_execute_binary_accumulator_immediate_operation_32bit();

    test_get_regencoded_op_8bit();
    test_execute_binary_immediate_regencoded_operation_register_8bit();
    test_execute_binary_immediate_regencoded_operation_memory_8bit();

    test_get_regencoded_op_16bit();
    test_execute_binary_immediate_regencoded_operation_register_16bit();
    test_execute_binary_immediate_regencoded_operation_memory_16bit();

    test_get_regencoded_op_32bit();
    test_execute_binary_immediate_regencoded_operation_register_32bit();
    test_execute_binary_immediate_regencoded_operation_memory_32bit();

    test_opcode<0x0>();
    test_opcode<0x1>();
    test_opcode<0x2>();
    test_opcode<0x3>();
    test_opcode<0x4>();
    test_opcode<0x5>();
    test_opcode<0x6>();
    test_opcode<0x7>();
    test_opcode<0x8>();
    test_opcode<0x9>();
    test_opcode<0xA>();
    test_opcode<0xB>();
    test_opcode<0xC>();
    test_opcode<0xD>();
    test_opcode<0xE>();
    test_opcode<0x10>();
    test_opcode<0x11>();
    test_opcode<0x12>();
    test_opcode<0x13>();
    test_opcode<0x14>();
    test_opcode<0x15>();
    test_opcode<0x16>();
    test_opcode<0x17>();
    test_opcode<0x18>();
    test_opcode<0x19>();
    test_opcode<0x1A>();
    test_opcode<0x1B>();
    test_opcode<0x1C>();
    test_opcode<0x1D>();
    test_opcode<0x1E>();
    test_opcode<0x1F>();
    test_opcode<0x20>();
    test_opcode<0x21>();
    test_opcode<0x22>();
    test_opcode<0x23>();
    test_opcode<0x24>();
    test_opcode<0x25>();

    test_opcode<0x27>();
    test_opcode<0x28>();
    test_opcode<0x29>();
    test_opcode<0x2A>();
    test_opcode<0x2B>();
    test_opcode<0x2C>();
    test_opcode<0x2D>();

    test_opcode<0x2F>();
    test_opcode<0x30>();
    test_opcode<0x31>();
    test_opcode<0x32>();
    test_opcode<0x33>();
    test_opcode<0x34>();
    test_opcode<0x35>();

    test_opcode<0x37>();
    test_opcode<0x38>();
    test_opcode<0x39>();
    test_opcode<0x3A>();
    test_opcode<0x3B>();
    test_opcode<0x3C>();
    test_opcode<0x3D>();

    test_opcode<0x3F>();
    test_opcode<0x40, 0x47>();

    test_opcode<0x50, 0x57>();

    test_opcode<0x60>();
    test_opcode<0x61>();


    test_opcode<0x9E>();
    test_opcode<0x9F>();

    test_opcode<0xD4>();
    test_opcode<0xD5>();
    test_opcode<0xD6>();
    test_opcode<0xD7>();

    test_opcode<0xF4>();
    test_opcode<0xF5>();
    test_opcode<0xF8>();
    test_opcode<0xF9>();
    test_opcode<0xFC>();
    test_opcode<0xFD>();

    test_opcode<0xF, 0x40>();
    test_opcode<0xF, 0x41>();

    test_opcode<0xF, 0xA0>();
    test_opcode<0xF, 0xA8>();

    std::cout << "All executor tests passed!" << std::endl;
}