#ifndef EXECUTOR_HH
#define EXECUTOR_HH

#include "cpu.hh"
#include "decoder.hh"
#include "fpu.hh"
#include "opcode.hh"

#include <cstddef>
#include <cstdint>
#include <optional>
#include <span>
#include <type_traits>

#include <iostream>

template <typename I>
void binary_operation(StructuredOperands<I>& so, CPU& cpu, I(CPU::*op)(I, I), bool reg_dest) {
    if (reg_dest) {
        auto& dest = so.reg_access();
        // reg <-- rm
        if (so.is_rm_ptr) {
            auto& src = so.rm_m_access();
            dest = (cpu.*op)(dest, src);
        } else {
            auto& src = so.rm_r_access();
            dest = (cpu.*op)(dest, src);
        }
    } else {
        // rm <-- reg
        auto& src = so.reg_access();
        if (so.is_rm_ptr) {
            auto& dest = so.rm_m_access();
            dest = (cpu.*op)(dest, src);
        } else {
            auto& dest = so.rm_r_access();
            dest = (cpu.*op)(dest, src);
        }
    }
}



template <typename I, bool test = 0>
struct Holder {
    I value;

    Holder(const I& value_ = I{}) : value(value_) {}

    template <typename J>
    constexpr Holder& operator=(const J& rhs) {
        if constexpr (test) {
            value = static_cast<I>(rhs);
        }
        return *this;
    }

    template <typename J>
    constexpr bool operator==(const J& rhs) {
        return value == static_cast<I>(rhs);
    }
};

/*
    struct OperationData {
    #ifdef DEBUG
        Opcode op;
        std::uint32_t lhs, rhs;
        bool has_lhs = false;
        bool has_rhs = false;
        int data_size = 0;
        OperationData(Opcode op_) : op(op_) {}
        OperationData(Opcode op_, std::uint32_t lhs_, int ds_) : op(op_), lhs(lhs_), has_lhs(true), data_size(ds_) {}
        OperationData(Opcode op_, std::uint32_t lhs_, std::uint32_t rhs_, int ds_) : op(op_), lhs(lhs_), rhs(rhs_), has_lhs(true), has_rhs(true), data_size(ds_) {}
    #else
        OperationData([[maybe_unused]] Opcode op_) {}

        OperationData([[maybe_unused]] Opcode op_,
                    [[maybe_unused]] std::uint32_t lhs_,
                    [[maybe_unused]] int ds_) {}

        OperationData([[maybe_unused]] Opcode op_,
                    [[maybe_unused]] std::uint32_t lhs_,
                    [[maybe_unused]] std::uint32_t rhs_,
                    [[maybe_unused]] int ds_) {}
    #endif
    };
*/

class Executor {
public:
    CPU cpu{1024};
    FPU fpu;
    unsigned long int pc = 0;
    bool is_16_bit_mode = false;

    void reset_prefixes() {
        is_16_bit_mode = false;
    }

    template <std::uint8_t Opcode>
    void execute_binary_operation_8bit(std::uint8_t(CPU::*op)(std::uint8_t, std::uint8_t)) {
        std::uint8_t mrr = cpu.mem[pc + 1];
        const auto [ops, skip] = decode_modregrm(mrr, cpu.mem, pc, true);
        {
            auto so = structure_operands<std::uint8_t>(cpu.R, cpu.mem, ops);
            binary_operation<std::uint8_t>(so, cpu, op, isRegDest_v<Opcode>);
        }
        pc += skip;
        reset_prefixes();
    }

    template <std::uint8_t Opcode>
    void execute_binary_operation_16_32_bit(std::uint16_t(CPU::*op16)(std::uint16_t, std::uint16_t),
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

    void execute_binary_accumulator_immediate_operation_8bit(std::uint8_t(CPU::*op)(std::uint8_t, std::uint8_t));
    void execute_binary_accumulator_immediate_operation_16_32bit(std::uint16_t(CPU::*op16)(std::uint16_t, std::uint16_t),
                                                                 std::uint32_t(CPU::*op32)(std::uint32_t, std::uint32_t));
    void execute_binary_immediate_regencoded_operation_8bit();
    void execute_binary_immediate_regencoded_operation_16_32bit();

public:

    friend struct access_executor;

    Holder<Opcode, TEST> last_op;

    unsigned long int pcnt() const {return pc;}

    Executor(std::span<const std::uint8_t> code,
             const std::size_t mem_size = 1_mb,
             const std::size_t stack_size = 1_mb,
             const unsigned long int start = 0) : cpu(mem_size, stack_size) fpu(cpu.flags) {
        if (start > cpu.mem.size() || (start + code.size()) > cpu.mem.size())
            throw std::domain_error("Invalid constructor arguments for constructor Executor");
        std::copy(code.begin(), code.end(), cpu.mem.begin() + start);
        pc = start;
    }

    void execute(bool, bool, unsigned int = 0, unsigned int start = 0);
    void run_single_cycle(bool=false);
};

using CPU_op8_t = std::uint8_t(CPU::*)(std::uint8_t, std::uint8_t);
using CPU_op16_t = std::uint16_t(CPU::*)(std::uint16_t, std::uint16_t);
using CPU_op32_t = std::uint32_t(CPU::*)(std::uint32_t, std::uint32_t);

CPU_op8_t get_regencoded_op_8bit(unsigned int);
CPU_op16_t get_regencoded_op_16bit(unsigned int);
CPU_op32_t get_regencoded_op_32bit(unsigned int);

#endif