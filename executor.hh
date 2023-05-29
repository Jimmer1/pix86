#pragma once

#include "cpu.hh"
#include "decoder.hh"
#include "fpu.hh"

#include <cstddef>
#include <cstdint>
#include <span>

#include <iostream>

template <typename I>
void binary_operation(StructuredOperands<I>& so, CPU& cpu, I(CPU::*op)(I, I), bool reg_dest) {
    if (reg_dest) {
        // reg <-- rm
        if (so.is_rm_ptr) {
            so.reg_access() = (cpu.*op)(so.reg_access(), so.rm_m_access());
        } else {
            so.reg_access() = (cpu.*op)(so.reg_access(), so.rm_m_access());
        }
    } else {
        if (so.is_rm_ptr) {
            so.rm_m_access() = (cpu.*op)(so.rm_m_access(), so.reg_access());
        } else {
            so.rm_r_access() = (cpu.*op)(so.rm_r_access(), so.reg_access());
        }
    }
}

class Executor {
private:
    CPU cpu{1024};
    FPU fpu;

    bool is_16_bit_mode = false;

    void reset_prefixes() {
        is_16_bit_mode = false;
    }

    template <std::uint8_t Opcode>
    void execute_binary_operation_8bit(unsigned long int& pc,
                                       std::uint8_t(CPU::*op)(std::uint8_t, std::uint8_t)) {
        std::uint8_t mrr = cpu.mem[pc + 1];
        const auto [ops, skip] = decode_modregrm(mrr, cpu.mem, pc, is8bit_v<Opcode>);
        auto so = structure_operands<std::uint8_t>(cpu.R, cpu.mem, ops);
        binary_operation<std::uint8_t>(so, cpu, op, isRegDest_v<Opcode>);
        pc += skip;
        // std::cout << "Modregrm Skip: " << skip << std::endl;
        reset_prefixes();
    }

    template <std::uint8_t Opcode>
    void execute_binary_operation_16_32_bit(unsigned long int& pc,
                                            std::uint16_t(CPU::*op16)(std::uint16_t, std::uint16_t),
                                            std::uint32_t(CPU::*op32)(std::uint32_t, std::uint32_t)) {
        
        std::uint8_t mrr = cpu.mem[pc + 1];
        const auto [op, skip] = decode_modregrm(mrr, cpu.mem, pc, false);
        if (is_16_bit_mode) {
            auto so = structure_operands<std::uint16_t>(cpu.R, cpu.mem, op);
            binary_operation<std::uint16_t>(so, cpu, op16, isRegDest_v<Opcode>);
        } else {
            auto so = structure_operands<std::uint32_t>(cpu.R, cpu.mem, op);
            binary_operation<std::uint32_t>(so, cpu, op32, isRegDest_v<Opcode>);
        }
        // std::cout << "Modregrm skip: " << std::hex << int(skip) << std::endl;
        pc += skip;

        reset_prefixes();
    }

    // void execute_unary_operation_16_32bit(unsigned long int& pc,
    //                                       std::uint16_t(CPU::*op16)(std::uint16_t),
    //                                       std::uint32_t(CPU::*op32)(std::uint32_t)) {

    //     std::uint8_t mrr = cpu.mem[pc + 1];
    //     const auto [ops, skip] = decode_modregrm(mrr, cpu.mem, pc, false);
    //     pc += skip;
    //     if (is_16_bit_mode) {
    //         auto sop = structure_unary_operands<std::uint16_t>(cpu.R, cpu.mem, ops);
    //         if (so.is_rm_ptr) {
    //             static_cast<std::uint16_t&>(sop.rm.m) = (cpu.*op16)(static_cast<std::uint16_t&>(sop.rm.m));
    //         } else {
    //             static_cast<std::uint16_t&>(sop.rm.r) = (cpu.*op16)(static_cast<std::uint16_t&>(sop.rm.r));
    //         }
    //     } else {
    //         auto sop = structure_unary_operands<std::uint32_t>(cpu.R, cpu.mem, ops);
    //     }
    // }

    void execute_binary_accumulator_immediate_operation_8bit(unsigned long int& pc,
                                                             std::uint8_t(CPU::*op)(std::uint8_t, std::uint8_t));
    void execute_binary_accumulator_immediate_operation_16_32bit(unsigned long int& pc,
                                                                 std::uint16_t(CPU::*op16)(std::uint16_t, std::uint16_t),
                                                                 std::uint32_t(CPU::*op32)(std::uint32_t, std::uint32_t));
    void execute_binary_immediate_regencoded_operation_8bit(unsigned long int& pc);
    void execute_binary_immediate_regencoded_operation_16_32bit(unsigned long int& pc);



public:
    Executor(std::span<std::uint8_t> code) : fpu(cpu.flags) {
        std::copy(code.begin(), code.end(), cpu.mem.begin());
        // for (auto it = cpu.mem.begin(); it != cpu.mem.end(); ++it) {
        //     std::cout << std::hex << int(*it) << ' ';
        // }
        // std::cout << std::endl;
    }

    void execute(bool);
};