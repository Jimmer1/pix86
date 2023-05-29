#include "executor.hh"
#include "test_helper.hh"
#include "memory.hh"
#include "decoder.hh"

#include <cstdint>

// template <typename I>
// void binary_operation(StructuredOperands<I>& so, CPU& cpu, I(CPU::*op)(I, I), bool reg_dest) {
//     if (reg_dest) {
//         // reg <-- rm
//         if (so.is_rm_ptr) {
//             so.reg_access() = (cpu.*op)(so.reg_access(), so.rm_m_access());
//         } else {
//             so.reg_access() = (cpu.*op)(so.reg_access(), so.rm_m_access());
//         }
//     } else {
//         if (so.is_rm_ptr) {
//             so.rm_m_access() = (cpu.*op)(so.rm_m_access(), so.reg_access());
//         } else {
//             so.rm_r_access() = (cpu.*op)(so.rm_r_access(), so.reg_access());
//         }
//     }
// }

void test_binary_operation_32bit() {
    const std::uint8_t mrr = 0xC8; // mod = 3, reg = 1, rm = 0;
    unsigned long int pc = 0;
    const auto [op, skip] = decode_modregrm(mrr, Memory{}, pc, false);
    std::uint32_t R[8] = {0x12, 0x23};
    auto sop = structure_operands<std::uint32_t>(R, Memory{}, op);
    
}

void test_executor() {
}