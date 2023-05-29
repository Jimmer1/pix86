#include "decoder.hh"
#include "memory.hh"
#include "test_helper.hh"
#include "constants.hh"

#include <algorithm>
#include <cstdint>
#include <iostream>

static int decoder_tests_failed = 0;

void test_is8bit() {
    const bool t = is8bit_v<0x0> && !is8bit_v<0x1>;
    PRINT_FN_SIG_IF_TEST_FAILED(t, decoder_tests_failed);
}

void test_isRegDest() {
    const bool t = isRegDest_v<0x2> && isRegDest_v<0x3>;
    PRINT_FN_SIG_IF_TEST_FAILED(t, decoder_tests_failed);
}

void test_split_modregrm() {
    const std::uint8_t mrr = 0xD8;
    const auto [mod, reg, rm] = split_modregrm(0xFC);

    const bool t = mod == 3 && reg == 7 && rm == 4;
    PRINT_FN_SIG_IF_TEST_FAILED(t, decoder_tests_failed);
}

void test_split_sib() {
    const std::uint8_t mrr = 0xD8;
    const auto [s, i, b] = split_modregrm(0xD8);
    const bool t = s == 3 && i == 3 && b == 0;
    PRINT_FN_SIG_IF_TEST_FAILED(t, decoder_tests_failed);
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
    PRINT_FN_SIG_IF_TEST_FAILED(t, decoder_tests_failed);
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
    PRINT_FN_SIG_IF_TEST_FAILED(t, decoder_tests_failed);
}

// template <typename I>
    // struct StructuredOperands {
    //     struct {
    //         GenericRegisterReference<std::uint32_t, I> r;
    //         GenericMemoryReference<I> m;
    //     } rm;
    //     bool is_rm_ptr;
    //     GenericRegisterReference<std::uint32_t, I> reg;
// };

void test_structure_operands_register_only_32bit() {
    std::uint8_t code[] = {0x1, 0xC2}; // add    eax, ebx
    Memory mem(16);
    std::copy(std::begin(code), std::end(code), mem.begin());
    const auto [ops, skip] = decode_modregrm(code[1], mem, 0, false);
    std::uint32_t R[8] = {0};
    auto sops = structure_operands<std::uint32_t>(R, mem, ops);

    const bool t = sops.reg.parent() == &R[EAX]
        && !sops.is_rm_ptr
        && sops.rm.r.parent() == &R[EDX];

    PRINT_FN_SIG_IF_TEST_FAILED(t, decoder_tests_failed);
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

    PRINT_FN_SIG_IF_TEST_FAILED(t, decoder_tests_failed);
}

void test_decoder() {
    test_is8bit();
    test_isRegDest();

    test_split_modregrm();
    test_split_sib();

    test_decode_modregrm_register_only_not_8bit();
    test_decode_modregrm_register_only_8bit_high();

    test_structure_operands_register_only_32bit();
    test_structure_operands_register_only_8bit_high();

    if (decoder_tests_failed == 0) {
        std::cout << "All decoder tests passed!\n";
    }
}