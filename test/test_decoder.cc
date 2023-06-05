#include "decoder.hh"
#include "memory.hh"
#include "constants.hh"

#include <algorithm>
#include <cassert>
#include <cstdint>
#include <iostream>

void test_is8bit() {
    const bool t = is8bit_v<0x0> && !is8bit_v<0x1>;
    assert(t);
}

void test_isRegDest() {
    const bool t = isRegDest_v<0x2> && isRegDest_v<0x3>;
    assert(t);
}

void test_split_modregrm() {
    const auto [mod, reg, rm] = split_modregrm(0xFC);
    const bool t = mod == 3 && reg == 7 && rm == 4;
    assert(t);
}

void test_split_sib() {
    // const std::uint8_t mrr = 0xD8;
    const auto [s, i, b] = split_modregrm(0xD8);
    const bool t = s == 3 && i == 3 && b == 0;
    assert(t);
}

void test_structured_operands_reg_access() {
    auto sop = StructuredOperands<std::uint16_t>();
    std::uint32_t reg = 0xDEADBEEF;
    sop.reg = GenericRegisterReference(&reg, get_low_word, grh_set_low_word);
    const bool t = sop.reg_access() == 0xBEEF;
    assert(t);
}

void test_structured_operands_rm_r_access() {
    auto sop = StructuredOperands<std::uint16_t>();
    std::uint32_t reg = 0xDEADBEEF;
    sop.is_rm_ptr = false;
    sop.rm.r = GenericRegisterReference(&reg, get_low_word, grh_set_low_word);
    const bool t = sop.rm_r_access() == 0xBEEF;
    assert(t);
}

void test_structured_operands_rm_m_access() {
    auto sop = StructuredOperands<std::uint32_t>();
    std::uint8_t memory[] = {0xDE, 0xAD, 0xBE, 0xEF};
    sop.rm.m = GenericMemoryReference<std::uint32_t>(&memory[0]);
    sop.is_rm_ptr = true;
    const bool t = sop.rm_m_access() == 0xEFBEADDE;
    assert(t);
}

void test_decode_modregrm_register_only_not_8bit() {
    std::uint8_t code[] = {0x1, 0xD8}; // add    eax, ebx
    Memory mem(16);
    std::copy(std::begin(code), std::end(code), mem.begin());
    const auto [ops, skip] = decode_modregrm(0xD8, mem, 0, false);
    const bool t = ops.rm.displacement == 0
                   && ops.rm.reg == 0
                   && ops.rm.reg_field
                   && !ops.rm.has_base
                   && !ops.rm.has_index
                   && !ops.rm.has_scale
                   && !ops.rm.reg_high_8bit
                   && ops.reg == 3
                   && !ops.reg_high_8bit
                   && skip == 2;
    assert(t);
}

void test_decode_modregrm_register_only_8bit_high() {
    std::uint8_t code[] = {0x0, 0xFC}; // add    ah, bh
    Memory mem(16);
    std::copy(std::begin(code), std::end(code), mem.begin());
    const auto [ops, skip] = decode_modregrm(0xFC, mem, 0, true);
    const bool t = ops.rm.displacement == 0
                   && ops.rm.reg == 0
                   && ops.rm.reg_field
                   && !ops.rm.has_base
                   && !ops.rm.has_index
                   && !ops.rm.has_scale
                   && ops.rm.reg_high_8bit
                   && ops.reg == 3
                   && ops.reg_high_8bit
                   && skip == 2;
    assert(t);
}

void test_decode_modregrm_register_to_memory_with_sib_and_displacement_8bit() {
    std::uint8_t code[] = {0x1, 0x4C, 0x18, 0x1};
    Memory mem(16);
    std::copy(std::begin(code), std::end(code), mem.begin());
    const auto [ops, skip] = decode_modregrm(code[1], mem, 0, false);
    const bool t = ops.rm.displacement == 1
        && ops.rm.is_ptr
        && !ops.rm.reg_field
        && ops.rm.has_base
        && ops.rm.base == 0
        && ops.rm.has_index
        && ops.rm.index == 3
        && ops.rm.has_scale
        && ops.rm.scale == 1
        && !ops.rm.reg_high_8bit
        && ops.reg == 1
        && !ops.reg_high_8bit
        && skip == 4;
    assert(t);
}

void test_decode_modregrm_register_to_memory_displacement_only_8bit() {
    std::uint8_t code[] = {0x1, 0x0D, 0x6, 0, 0, 0}; // add [0x6], ecx
    Memory mem(16);
    std::copy(std::begin(code), std::end(code), mem.begin());
    const auto [ops, skip] = decode_modregrm(code[1], mem, 0, false);
    const bool t = ops.rm.displacement == 0x6
        && !ops.rm.reg_field
        && ops.rm.is_ptr
        && !ops.rm.reg_field
        && !ops.rm.has_scale
        && !ops.rm.has_index
        && !ops.rm.has_base
        && !ops.rm.reg_high_8bit
        && ops.reg == 1
        && !ops.reg_high_8bit
        && skip == 6;
    assert(t);
}

void test_decode_modregrm_register_to_memory_with_displacement_8bit() {
    const std::uint8_t code[] = {0x1, 0x48, 0x1}; // add [eax + 1], ecx
    Memory mem(16);
    std::copy(std::begin(code), std::end(code), mem.begin());
    const auto [ops, skip] = decode_modregrm(code[1], mem, 0, false);
    const bool t = ops.rm.displacement == 1
        && ops.rm.is_ptr
        && ops.rm.reg_field
        && ops.rm.reg == 0
        && !ops.rm.has_scale
        && !ops.rm.has_index
        && !ops.rm.has_base
        && !ops.rm.reg_high_8bit
        && ops.reg == 1
        && !ops.reg_high_8bit
        && skip == 3;
    assert(t);
}

void test_decode_modregrm_register_to_memory_with_displacement_32bit() {
    const std::uint8_t code[] = {0x1, 0x88, 0xEF, 0xBE, 0xAD, 0xDE};
    Memory mem(16);
    std::copy(std::begin(code), std::end(code), mem.begin());
    const auto [ops, skip] = decode_modregrm(code[1], mem, 0, false);
    const bool t = ops.rm.displacement == 0xDEADBEEF
        && ops.rm.is_ptr
        && ops.rm.reg_field
        && ops.rm.reg == 0
        && !ops.rm.has_scale
        && !ops.rm.has_index
        && !ops.rm.has_base
        && !ops.rm.reg_high_8bit
        && ops.reg == 1
        && !ops.reg_high_8bit
        && skip == 6;
    assert(t);
}

void test_decode_modregrm_register_to_memory_with_sib_no_base_and_displacement_32bit() {
    const std::uint8_t code[] = {0x1, 0xC, 0x9D, 0xEF, 0xBE, 0xAD, 0xDE};
    Memory mem(16);
    std::copy(std::begin(code), std::end(code), mem.begin());
    const auto [ops, skip] = decode_modregrm(code[1], mem, 0, false);
    const bool t = ops.rm.displacement == 0xDEADBEEF
        && ops.rm.is_ptr
        && !ops.rm.reg_field
        && ops.rm.has_scale
        && ops.rm.scale == 4
        && ops.rm.has_index
        && ops.rm.index == 3
        && !ops.rm.has_base
        && !ops.rm.reg_high_8bit
        && ops.reg == 1
        && !ops.reg_high_8bit
        && skip == 7;
    assert(t);
}

void test_decode_modregrm_register_to_memory_with_sib_base_and_displacement_32bit() {
    const std::uint8_t code[] = {0x1, 0x8C, 0x98, 0xEF, 0xBE, 0xAD, 0xDE};
    Memory mem(16);
    std::copy(std::begin(code), std::end(code), mem.begin());
    const auto [ops, skip] = decode_modregrm(code[1], mem, 0, false);
    const bool t = ops.rm.displacement == 0xDEADBEEF
        && ops.rm.is_ptr
        && !ops.rm.reg_field
        && ops.rm.has_scale
        && ops.rm.scale == 4
        && ops.rm.has_index
        && ops.rm.index == 3
        && ops.rm.has_base
        && ops.rm.base == 0
        && !ops.rm.reg_high_8bit
        && ops.reg == 1
        && !ops.reg_high_8bit
        && skip == 7;
    assert(t);
}

void test_structure_operands_register_only_32bit() {
    std::uint8_t code[] = {0x1, 0xC2}; // add    eax, ebx
    Memory mem(16);
    std::copy(std::begin(code), std::end(code), mem.begin());
    const auto [ops, skip] = decode_modregrm(code[1], mem, 0, false);
    std::uint32_t R[8] = {0xDEADBEEF, 0xCAFEBABE, 0xDABBAD00, 0X1234BA89, 0xDECAFBAD, 0xFACEFEED, 0xFFBADD11, 0xFEEDC0DE};
    auto sops = structure_operands<std::uint32_t>(R, mem, ops);
    const bool t = static_cast<std::uint32_t&>(sops.reg) == 0xDEADBEEF
        && !sops.is_rm_ptr
        && static_cast<std::uint32_t&>(sops.rm.r) == 0xDABBAD00;
    assert(t);
}

void test_structure_operands_register_only_8bit_high() {
    std::uint8_t code[] = {0x0, 0xFC}; // add ah, bh
    Memory mem(16);
    std::copy(std::begin(code), std::end(code), mem.begin());
    const auto [ops, skip] = decode_modregrm(0xFC, mem, 0, true);
    std::uint32_t R[8] = {0xDEADBEEF, 0xCAFEBABE, 0xDABBAD00, 0X1234BA89, 0xDECAFBAD, 0xFACEFEED, 0xFFBADD11, 0xFEEDC0DE};
    auto sops = structure_operands<std::uint8_t>(R, mem, ops);
    const bool t = static_cast<std::uint8_t&>(sops.reg) == 0xBA
        && !sops.is_rm_ptr
        && static_cast<std::uint8_t&>(sops.rm.r) == 0xBE;
    assert(t);
}

void test_structure_operands_register_only_8bit_low() {
    std::uint8_t code[] = {0x0, 0xD8}; // add al, bl
    Memory mem(16);
    std::copy(std::begin(code), std::end(code), mem.begin());
    const auto [ops, skip] = decode_modregrm(0xD8, mem, 0, true);
    std::uint32_t R[8] = {0xDEADBEEF, 0xCAFEBABE, 0xDABBAD00, 0X1234BA89, 0xDECAFBAD, 0xFACEFEED, 0xFFBADD11, 0xFEEDC0DE};
    auto sops = structure_operands<std::uint8_t>(R, mem, ops);

    const bool t = static_cast<std::uint8_t&>(sops.reg) == 0x89
        && !sops.is_rm_ptr
        && static_cast<std::uint8_t&>(sops.rm.r) == 0xEF;
    assert(t);
}

void test_structure_operands_register_only_16bit() {
    std::uint8_t code[] = {0x1, 0xD8}; // add ax, bx
    Memory mem(16);
    std::copy(std::begin(code), std::end(code), mem.begin());
    const auto [ops, skip] = decode_modregrm(0xD8, mem, 0, false);
    std::uint32_t R[8] = {0xDEADBEEF, 0xCAFEBABE, 0xDABBAD00, 0X1234BA89, 0xDECAFBAD, 0xFACEFEED, 0xFFBADD11, 0xFEEDC0DE};
    auto sops = structure_operands<std::uint16_t>(R, mem, ops);
    const bool t = static_cast<std::uint16_t&>(sops.reg) == 0xBA89
        && !sops.is_rm_ptr
        && static_cast<std::uint16_t&>(sops.rm.r) == 0xBEEF;
    assert(t);
}

void test_structure_operands_register_to_memory_32bit() {
    const std::uint8_t code[] = {0x1, 0x8}; // add [eax], ecx
    Memory mem(16);
    std::copy(std::begin(code), std::end(code), mem.begin());
    const std::uint8_t data[] = {0x10, 0x20, 0x30, 0x40};
    std::copy(std::begin(data), std::end(data), &mem[4]);
    const auto [ops, skip] = decode_modregrm(0x8, mem, 0, false);
    std::uint32_t R[8] = {4, 0xDEADBEEF, 0, 0, 0, 0, 0, 0};
    auto sops = structure_operands<std::uint32_t>(R, mem, ops);
    const bool t = static_cast<std::uint32_t&>(sops.reg) == 0xDEADBEEF
        && sops.is_rm_ptr
        && static_cast<std::uint32_t&>(sops.rm.m) == 0x40302010;
    assert(t);
}

void test_structure_operands_register_to_memory_with_sib_32bit() {
    const std::uint8_t code[] = {0x1, 0x4, 0x13};
    Memory mem(16);
    std::copy(std::begin(code), std::end(code), mem.begin());
    const std::uint8_t data[] = {0x10, 0x20, 0x30, 0x40};
    std::copy(std::begin(data), std::end(data), &mem[4]);
    const auto [ops, skip] = decode_modregrm(0x4, mem, 0, false);
    std::uint32_t R[8] = {0xDEADBEEF, 0, 0x2, 0x2, 0, 0, 0, 0};
    auto sops = structure_operands<std::uint32_t>(R, mem, ops);
    const bool t = static_cast<std::uint32_t&>(sops.reg) == 0xDEADBEEF
        && sops.is_rm_ptr
        && static_cast<std::uint32_t&>(sops.rm.m) == 0x40302010;
    assert(t);
}

void test_structure_unary_operands_register_only_32bit() {
    const std::uint8_t code[] = {0xD1, 0xF8}; // sar eax
    Memory mem(16);
    std::copy(std::begin(code), std::end(code), mem.begin());
    const auto [ops, skip] = decode_modregrm(0xF8, mem, 0, false);
    std::uint32_t R[8] = {0xDEADBEEF, 0xCAFEBABE, 0xDABBAD00, 0X1234BA89, 0xDECAFBAD, 0xFACEFEED, 0xFFBADD11, 0xFEEDC0DE};
    auto sops = structure_unary_operands<std::uint32_t>(R, mem, ops);
    const bool t = !sops.is_rm_ptr && static_cast<std::uint32_t&>(sops.rm.r) == 0xDEADBEEF;    
    assert(t);
}

void test_structure_unary_operands_register_only_16bit() {
    const std::uint8_t code[] = {0xD1, 0xF8}; // sar ax
    Memory mem(16);
    std::copy(std::begin(code), std::end(code), mem.begin());
    const auto [ops, skip] = decode_modregrm(0xF8, mem, 0, false);
    std::uint32_t R[8] = {0xDEADBEEF, 0xCAFEBABE, 0xDABBAD00, 0X1234BA89, 0xDECAFBAD, 0xFACEFEED, 0xFFBADD11, 0xFEEDC0DE};
    auto sops = structure_unary_operands<std::uint16_t>(R, mem, ops);
    const bool t = !sops.is_rm_ptr && static_cast<std::uint16_t&>(sops.rm.r) == 0xBEEF;    
    assert(t);
}

void test_structure_unary_operands_register_only_8bit_high() {
    const std::uint8_t code[] = {0xD0, 0xFC}; // sar ah
    Memory mem(16);
    std::copy(std::begin(code), std::end(code), mem.begin());
    const auto [ops, skip] = decode_modregrm(code[1], mem, 0, true);
    std::uint32_t R[8] = {0xDEADBEEF, 0xCAFEBABE, 0xDABBAD00, 0X1234BA89, 0xDECAFBAD, 0xFACEFEED, 0xFFBADD11, 0xFEEDC0DE};
    auto sops = structure_unary_operands<std::uint8_t>(R, mem, ops);
    const bool t = !sops.is_rm_ptr && static_cast<std::uint8_t&>(sops.rm.r) == 0xBE;
    assert(t);
}

void test_structure_unary_operands_register_only_8bit_low() {
    const std::uint8_t code[] = {0xD0, 0xF8}; // sar al
    Memory mem(16);
    std::copy(std::begin(code), std::end(code), mem.begin());
    const auto [ops, skip] = decode_modregrm(code[1], mem, 0, true);
    std::uint32_t R[8] = {0xDEADBEEF, 0xCAFEBABE, 0xDABBAD00, 0X1234BA89, 0xDECAFBAD, 0xFACEFEED, 0xFFBADD11, 0xFEEDC0DE};
    auto sops = structure_unary_operands<std::uint8_t>(R, mem, ops);
    const bool t = !sops.is_rm_ptr && static_cast<std::uint8_t&>(sops.rm.r) == 0xEF;
    assert(t);
}

void test_structure_unary_operands_memory_only_32_bit() {
    const std::uint8_t code[] = {0xFF, 0x00}; // inc DWORD PTR [eax]
    Memory mem(16);
    std::copy(std::begin(code), std::end(code), mem.begin());
    const std::uint8_t data[] = {0xEF, 0xBE, 0xAD, 0xBE};
    std::copy(std::begin(data), std::end(data), &mem[4]);
    const auto [ops, skip] = decode_modregrm(code[1], mem, 0, false);
    std::uint32_t R[8] = {0x4, 0, 0, 0, 0, 0, 0, 0};
    auto sops = structure_unary_operands<std::uint32_t>(R, mem, ops);
    const bool t = sops.is_rm_ptr && static_cast<std::uint32_t&>(sops.rm.m) == 0xBEADBEEF;
    assert(t);
}

void test_structure_unary_operands_memory_only_with_sib_32_bit() {
    const std::uint8_t code[] = {0xFF, 0x4, 0x08};
    Memory mem(16);
    std::copy(std::begin(code), std::end(code), mem.begin());
    const std::uint8_t data[] = {0xEF, 0xBE, 0xAD, 0xBE};
    std::copy(std::begin(data), std::end(data), &mem[4]);
    const auto [ops, skip] = decode_modregrm(code[1], mem, 0, false);
    std::uint32_t R[8] = {0x1, 0x3, 0, 0, 0, 0, 0, 0};
    auto sops = structure_unary_operands<std::uint32_t>(R, mem, ops);
    const bool t = sops.is_rm_ptr && static_cast<std::uint32_t&>(sops.rm.m) == 0xBEADBEEF;
    assert(t);
}

void test_reg_str() {
    const bool t = reg_str(0) == "eax";
    assert(t);
}

void test_reg_str_8() {
    const bool t = reg_str_8(0, false) == "al" && reg_str_8(0, true) == "ah";
    assert(t);
}

void test_decoder() {
    test_is8bit();
    test_isRegDest();
    test_split_modregrm();
    test_split_sib();
    test_structured_operands_reg_access();
    test_structured_operands_rm_r_access();
    test_structured_operands_rm_m_access();
    test_decode_modregrm_register_only_not_8bit();
    test_decode_modregrm_register_only_8bit_high();
    test_decode_modregrm_register_to_memory_with_sib_and_displacement_8bit();
    test_decode_modregrm_register_to_memory_with_displacement_8bit();
    test_decode_modregrm_register_to_memory_displacement_only_8bit();
    test_decode_modregrm_register_to_memory_with_displacement_32bit();
    test_decode_modregrm_register_to_memory_with_sib_no_base_and_displacement_32bit();
    test_decode_modregrm_register_to_memory_with_sib_base_and_displacement_32bit();
    test_structure_operands_register_only_32bit();
    test_structure_operands_register_only_8bit_high();
    test_structure_operands_register_only_8bit_low();
    test_structure_operands_register_only_16bit();
    test_structure_operands_register_to_memory_32bit();
    test_structure_operands_register_to_memory_with_sib_32bit();
    test_structure_unary_operands_register_only_32bit();
    test_structure_unary_operands_register_only_16bit();
    test_structure_unary_operands_register_only_8bit_high();
    test_structure_unary_operands_register_only_8bit_low();
    test_structure_unary_operands_memory_only_32_bit();
    test_structure_unary_operands_memory_only_with_sib_32_bit();

    test_reg_str();
    test_reg_str_8();

    std::cout << "All decoder tests passed!" << std::endl;
}