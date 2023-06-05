#include "executor.hh"

#include <cstdint>

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
    // New scope created to ensure that data is written when sops are destructed.
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
    {
        auto sops = structure_operands<std::uint8_t>(cpu.R, cpu.mem, ops);
        binary_operation(sops, cpu, &CPU::add8, isRegDest_v<0x0>);
    }
    const bool t = cpu.mem[4] == 0xFF
        && get_low_byte(cpu.R[ECX]) == 0x12;
    assert(t);
}

void test_execute_binary_operation_8bit() {
    std::uint8_t code[] = {0x2, 0xF8}; // add bh, al
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
    std::uint8_t code[] = {0x1, 0xC3}; // add bx, ax
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
    std::uint8_t code[] = {0x1, 0xC3}; // add ebx, eax
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

template <std::uint8_t ... Opcodes>
void test_opcode();

template <>
void test_opcode<0x0>() {
    std::uint8_t code[] = {0x0, 0xC1};
    Executor exe(code);
    exe.execute(false, true, 1);
    const bool t = exe.last_op == Opcode::ADD8 && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x1>() {
    std::uint8_t code[] = {0x1, 0xC1};
    Executor exe(code);
    exe.execute(false, true, 1);
    const bool t = exe.last_op == Opcode::ADD16_32 && exe.pcnt() == 2;
    assert(t);
}

template <>
void test_opcode<0x9E>() {
}

template <>
void test_opcode<0xF4>() {
    std::uint8_t code[] = {0xF4};
    Executor exe(code);
    exe.execute(false, true, 1);
    const bool t = exe.last_op == Opcode::HLT && exe.pcnt() == 1;
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

    test_get_regencoded_op_8bit();
    test_get_regencoded_op_16bit();
    test_get_regencoded_op_32bit();

    // test_opcode<0x0>();
    // test_opcode<0x1>();
    // test_opcode<0x9E>();
    // test_opcode<0xF4>();

    std::cout << "All executor tests passed!" << std::endl;
}