#include "constants.hh"
#include "executor.hh"
#include "fpu.hh"

#include <cstdint>
#include <span>
#include <sstream>
#include <stdexcept>

#include <iostream>

using uint = unsigned int;

void Executor::execute_binary_accumulator_immediate_operation_8bit(std::uint8_t(CPU::*op)(std::uint8_t, std::uint8_t)) {
    std::uint8_t imm8 = cpu.mem[pc + 1];
    set_low_byte(cpu.R[EAX], (cpu.*op)(get_low_byte(cpu.R[EAX]), imm8));
    pc += 1 + sizeof(std::uint8_t);
}

void Executor::execute_binary_accumulator_immediate_operation_16_32bit(std::uint16_t(CPU::*op16)(std::uint16_t, std::uint16_t),
                                                                       std::uint32_t(CPU::*op32)(std::uint32_t, std::uint32_t)) {

    if (is_16_bit_mode) {
        std::uint16_t imm16 = mread<std::uint16_t>(&cpu.mem[pc + 1]);
        set_low_word(cpu.R[EAX], (cpu.*op16)(get_low_word(cpu.R[EAX]), imm16));
        pc += 1 + sizeof(std::uint16_t);
    } else {
        std::uint32_t imm32 = mread<std::uint32_t>(&cpu.mem[pc + 1]);
        cpu.R[EAX] = (cpu.*op32)(cpu.R[EAX], imm32);
        pc += 1 + sizeof(std::uint32_t);
    }
    reset_prefixes();
}

CPU_op8_t get_regencoded_op_8bit(const unsigned int reg) {
    if (reg >= 8)
        throw std::domain_error("");

    const CPU_op8_t ops[] = {&CPU::add8, &CPU::or8, &CPU::adc8, &CPU::sbb8, &CPU::and8, &CPU::sub8, &CPU::xor8, &CPU::cmp8};
    return ops[reg];
}

void Executor::execute_binary_immediate_regencoded_operation_8bit() {
    const std::uint8_t mrr = cpu.mem[pc + 1];
    const auto [ops, skip] = decode_modregrm(mrr, cpu.mem, pc, true, true);
    auto so = structure_unary_operands<std::uint8_t>(cpu.R, cpu.mem, ops);
    pc += skip;
    const std::uint8_t imm8 = mread<std::uint8_t>(&cpu.mem[pc]);
    auto op = get_regencoded_op_8bit(ops.reg);
    if (so.is_rm_ptr) {
        static_cast<std::uint8_t&>(so.rm.m) = (cpu.*op)(static_cast<std::uint8_t&>(so.rm.m), imm8);
    } else {
        static_cast<std::uint8_t&>(so.rm.r) = (cpu.*op)(static_cast<std::uint8_t&>(so.rm.r), imm8);
    }
    ++pc;
}

CPU_op16_t get_regencoded_op_16bit(const unsigned int reg) {
    switch (reg) {
        case 0: return &CPU::add16;
        case 1: return &CPU::or16;
        case 2: return &CPU::adc16;
        case 3: return &CPU::sbb16;
        case 4: return &CPU::and16;
        case 5: return &CPU::sub16;
        case 6: return &CPU::xor16;
        case 7: return &CPU::cmp16;
        default: throw std::domain_error("");
    }
}

CPU_op32_t get_regencoded_op_32bit(const unsigned int reg) {
    switch (reg) {
        case 0: return &CPU::add32;
        case 1: return &CPU::or32;
        case 2: return &CPU::adc32;
        case 3: return &CPU::sbb32;
        case 4: return &CPU::and32;
        case 5: return &CPU::sub32;
        case 6: return &CPU::xor32;
        case 7: return &CPU::cmp32;
        default: throw std::domain_error("");
    }
}

void Executor::execute_binary_immediate_regencoded_operation_16_32bit() {
    std::uint8_t mrr = cpu.mem[pc + 1];
    const auto [ops, skip] = decode_modregrm(mrr, cpu.mem, pc, false);
    pc += skip;
    if (is_16_bit_mode) {
        auto so = structure_unary_operands<std::uint16_t>(cpu.R, cpu.mem, ops);
        std::uint16_t imm16 = mread<std::uint16_t>(&cpu.mem[pc]);
        auto op = get_regencoded_op_16bit(ops.reg);
        if (so.is_rm_ptr) {
            static_cast<std::uint16_t&>(so.rm.m) = (cpu.*op)(static_cast<std::uint16_t&>(so.rm.m), imm16);
        } else {
            static_cast<std::uint16_t&>(so.rm.r) = (cpu.*op)(static_cast<std::uint16_t&>(so.rm.r), imm16);
        }
        pc += sizeof(std::uint16_t);
    } else {
        auto so = structure_unary_operands<std::uint32_t>(cpu.R, cpu.mem, ops);
        std::uint32_t imm32 = mread<std::uint32_t>(&cpu.mem[pc]);
        auto op = get_regencoded_op_32bit(ops.reg);
        if (so.is_rm_ptr) {
            static_cast<std::uint32_t&>(so.rm.m) = (cpu.*op)(static_cast<std::uint32_t&>(so.rm.m), imm32);
        } else {
            static_cast<std::uint32_t&>(so.rm.r) = (cpu.*op)(static_cast<std::uint32_t&>(so.rm.r), imm32);
        }
        pc += sizeof(std::uint32_t);
    }
    reset_prefixes();
}

void Executor::execute(bool visual_debug_mode, const bool is_cycles, unsigned int cycles) {
    
    for (; !is_cycles || cycles > 0; ) {
        // std::cout << "Opcode address " << std::hex << std::size_t(&cpu.mem[pc]) << std::endl;
        // std::cout << "Opcode: " << std::hex << uint(cpu.mem[pc]) << ", Counter: " << pc << std::endl;
        const std::uint8_t opcode = cpu.mem[pc]; 
        switch (opcode) {

            case 0x0: {
                execute_binary_operation_8bit<0x0>(&CPU::add8);
                last_op = Opcode::ADD8;
            } break;

            case 0x1: {
                execute_binary_operation_16_32_bit<0x1>(&CPU::add16, &CPU::add32);
                last_op = Opcode::ADD16_32;
            } break;

            case 0x2: {
                execute_binary_operation_8bit<0x2>(&CPU::add8);
                last_op = Opcode::ADD8;
            } break;

            case 0x3: {
                execute_binary_operation_16_32_bit<0x3>(&CPU::add16, &CPU::add32);
                last_op = Opcode::ADD16_32;
            } break;

            case 0x4: {
                execute_binary_accumulator_immediate_operation_8bit(&CPU::add8);
                last_op = Opcode::ADD8;
            } break;

            case 0x5: {
                execute_binary_accumulator_immediate_operation_16_32bit(&CPU::add16, &CPU::add32);
                last_op = Opcode::ADD16_32;
            } break;

            case 0x6: {
                cpu.push16(cpu.es);
                last_op = Opcode::PUSH_ES;
                ++pc;
            } break;

            case 0x7: {
                cpu.es = cpu.pop16();
                last_op = Opcode::POP_ES;
                ++pc;
            } break;

            case 0x8: {
                execute_binary_operation_8bit<0x8>(&CPU::or8);
                last_op = Opcode::OR8;
            } break;

            case 0x9: {
                execute_binary_operation_16_32_bit<0x9>(&CPU::or16, &CPU::or32);
                last_op = Opcode::OR16_32;
            } break;

            case 0xA: {
                execute_binary_operation_8bit<0xA>(&CPU::or8);
                last_op = Opcode::OR8;
            } break;

            case 0xB: {
                execute_binary_operation_16_32_bit<0xB>(&CPU::or16, &CPU::or32);
                last_op = Opcode::OR16_32;
            } break;

            case 0xC: {
                execute_binary_accumulator_immediate_operation_8bit(&CPU::or8);
                last_op = Opcode::OR8;
            } break;

            case 0xD: {
                execute_binary_accumulator_immediate_operation_16_32bit(&CPU::or16, &CPU::or32);
                last_op = Opcode::OR16_32;
            } break;

            case 0xE: {
                cpu.push16(cpu.cs);
                last_op = Opcode::PUSH_CS;
                ++pc;
            } break;

            // LCOV_EXCL_START
            case 0xF: {
                ++pc;
                switch (std::uint8_t sOpcode = cpu.mem[pc]; sOpcode) {
                    case 0x31: {
                        cpu.rdtsc();
                    } break;

                    case 0x40: {
                        execute_binary_operation_16_32_bit<CMOV>(&CPU::cmovo16, &CPU::cmovo32);
                        last_op = Opcode::CMOVO16_32;
                    } break;

                    case 0x41: {
                        execute_binary_operation_16_32_bit<CMOV>(&CPU::cmovno16, &CPU::cmovno32);
                        last_op = Opcode::CMOVNO16_32;
                    } break;

                    case 0x42: {
                        execute_binary_operation_16_32_bit<CMOV>(&CPU::cmovc16, &CPU::cmovc32);
                        last_op = Opcode::CMOVC16_32;
                    } break;

                    case 0x43: {
                        execute_binary_operation_16_32_bit<CMOV>(&CPU::cmovnc16, &CPU::cmovnc32);
                        last_op = Opcode::CMOVNC16_32;
                    } break;

                    case 0x44: {
                        if (cpu.flags.zero) {
                            execute_binary_operation_16_32_bit<CMOV>(&CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0x45: {
                        if (! cpu.flags.zero) {
                            execute_binary_operation_16_32_bit<CMOV>(&CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0x46: {
                        if (cpu.flags.carry || cpu.flags.zero) {
                            execute_binary_operation_16_32_bit<CMOV>(&CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0x47: {
                        if (!cpu.flags.carry && !cpu.flags.zero) {
                            execute_binary_operation_16_32_bit<CMOV>(&CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0x48: {
                        if (cpu.flags.sign) {
                            execute_binary_operation_16_32_bit<CMOV>(&CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0x49: {
                        if (! cpu.flags.sign) {
                            execute_binary_operation_16_32_bit<CMOV>(&CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0x4A: {
                        if (cpu.flags.parity) {
                            execute_binary_operation_16_32_bit<CMOV>(&CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0x4B: {
                        if (! cpu.flags.parity) {
                            execute_binary_operation_16_32_bit<CMOV>(&CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0x4C: {
                        if (cpu.flags.sign != cpu.flags.overflow) {
                            execute_binary_operation_16_32_bit<CMOV>(&CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0x4D: {
                        if (cpu.flags.sign == cpu.flags.overflow) {
                            execute_binary_operation_16_32_bit<CMOV>(&CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0x4E: {
                        if (cpu.flags.zero || cpu.flags.sign != cpu.flags.overflow) {
                            execute_binary_operation_16_32_bit<CMOV>(&CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0x4F: {
                        if (! cpu.flags.zero && cpu.flags.sign == cpu.flags.overflow) {
                            execute_binary_operation_16_32_bit<CMOV>(&CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0xA0: {
                        cpu.push16(cpu.fs);
                        last_op = Opcode::PUSH_FS;
                        ++pc;
                    } break;

                    case 0xA2: {
                        // cpu.cpuid();
                        ++pc;
                    } break;

                    case 0xA8: {
                        cpu.push16(cpu.gs);
                        last_op = Opcode::PUSH_GS;
                        ++pc;
                    } break;

                    case 0xAF: {
                        execute_binary_operation_16_32_bit<REG_DEST>(&CPU::imul16, &CPU::imul32);
                    } break;

                    case 0xC8 ... 0xCF: {
                        auto& reg = cpu.regat(sOpcode - 0xC8);
                        reg = cpu.bswap(reg);
                        ++pc;
                    } break;

                    default: {
                        std::stringstream ss;
                        ss << "Unhandled Opcode: 0xF " << std::hex << uint(sOpcode);
                        throw std::logic_error(ss.str()); 
                    } break;
                }
            } break;
            // LCOV_EXCL_STOP

            case 0x10: {
                execute_binary_operation_8bit<0x10>(&CPU::adc8);
                last_op = Opcode::ADC8;
            } break;

            case 0x11: {
                execute_binary_operation_16_32_bit<0x11>(&CPU::adc16, &CPU::adc32);
                last_op = Opcode::ADC16_32;
            } break;

            case 0x12: {
                execute_binary_operation_8bit<0x12>(&CPU::adc8);
                last_op = Opcode::ADC8;
            } break;

            case 0x13: {
                execute_binary_operation_16_32_bit<0x13>(&CPU::adc16, &CPU::adc32);
                last_op = Opcode::ADC16_32;
            } break;

            case 0x14: {
                execute_binary_accumulator_immediate_operation_8bit(&CPU::adc8);
                last_op = Opcode::ADC8;
            } break;

            case 0x15: {
                execute_binary_accumulator_immediate_operation_16_32bit(&CPU::adc16, &CPU::adc32);
                last_op = Opcode::ADC16_32;
            } break;

            case 0x16: {
                cpu.push16(cpu.ss);
                last_op = Opcode::PUSH_SS;
                ++pc;
            } break;

            case 0x17: {
                cpu.ss = cpu.pop16();
                last_op = Opcode::POP_SS;
                ++pc;
            } break;

            case 0x18: {
                execute_binary_operation_8bit<0x18>(&CPU::sbb8);
                last_op = Opcode::SBB8;
            } break;

            case 0x19: {
                execute_binary_operation_16_32_bit<0x19>(&CPU::sbb16, &CPU::sbb32);
                last_op = Opcode::SBB16_32;
            } break;

            case 0x1A: {
                execute_binary_operation_8bit<0x1A>(&CPU::sbb8);
                last_op = Opcode::SBB8;
            } break;

            case 0x1B: {
                execute_binary_operation_16_32_bit<0x1B>(&CPU::sbb16, &CPU::sbb32);
                last_op = Opcode::SBB16_32;
            } break;

            case 0x1C: {
                execute_binary_accumulator_immediate_operation_8bit(&CPU::sbb8);
                last_op = Opcode::SBB8;
            } break;

            case 0x1D: {
                execute_binary_accumulator_immediate_operation_16_32bit(&CPU::sbb16, &CPU::sbb32);
                last_op = Opcode::SBB16_32;
            } break;

            case 0x1E: {
                cpu.push16(cpu.ds);
                last_op = Opcode::PUSH_DS;
                ++pc;
            } break;

            case 0x1F: {
                cpu.ds = cpu.pop16();
                last_op = Opcode::POP_DS;
                ++pc;
            } break;

            case 0x20: {
                execute_binary_operation_8bit<0x20>(&CPU::and8);
                last_op = Opcode::AND8;
            } break;

            case 0x21: {
                execute_binary_operation_16_32_bit<0x21>(&CPU::and16, &CPU::and32);
                last_op = Opcode::AND16_32;
            } break;

            case 0x22: {
                execute_binary_operation_8bit<0x22>(&CPU::and8);
                last_op = Opcode::AND8;
            } break;

            case 0x23: {
                execute_binary_operation_16_32_bit<0x23>(&CPU::and16, &CPU::and32);
                last_op = Opcode::AND16_32;
            } break;

            case 0x24: {
                execute_binary_accumulator_immediate_operation_8bit(&CPU::and8);
                last_op = Opcode::AND8;
            } break;

            case 0x25: {
                execute_binary_accumulator_immediate_operation_16_32bit(&CPU::and16, &CPU::and32);
                last_op = Opcode::AND16_32;
            } break;

            // LCOV_EXCL_START
            case 0x26: {
                // ES segment override.
                ++pc;
            } break;
            // LCOV_EXCL_STOP

            case 0x27: {
                cpu.daa();
                last_op = Opcode::DAA;
                ++pc;
            } break;

            case 0x28: {
                execute_binary_operation_8bit<0x28>(&CPU::sub8);
                last_op = Opcode::SUB8;
            } break;

            case 0x29: {
                execute_binary_operation_16_32_bit<0x29>(&CPU::sub16, &CPU::sub32);
                last_op = Opcode::SUB16_32;
            } break;

            case 0x2A: {
                execute_binary_operation_8bit<0x2A>(&CPU::sub8);
                last_op = Opcode::SUB8;
            } break;

            case 0x2B: {
                execute_binary_operation_16_32_bit<0x2B>(&CPU::sub16, &CPU::sub32);
                last_op = Opcode::SUB16_32;
            } break;

            case 0x2C: {
                execute_binary_accumulator_immediate_operation_8bit(&CPU::sub8);
                last_op = Opcode::SUB8;
            } break;

            case 0x2D: {
                execute_binary_accumulator_immediate_operation_16_32bit(&CPU::sub16, &CPU::sub32);
                last_op = Opcode::SUB16_32;
            } break;

            // LCOV_EXCL_START
            case 0x2E: {
                // CS segment override.
                ++pc;
            } break;
            // LCOV_EXCL_STOP

            case 0x2F: {
                cpu.das();
                last_op = Opcode::DAS;
                ++pc;
            } break;

            case 0x30: {
                execute_binary_operation_8bit<0x30>(&CPU::xor8);
                last_op = Opcode::XOR8;
            } break;

            case 0x31: {
                execute_binary_operation_16_32_bit<0x31>(&CPU::xor16, &CPU::xor32);
                last_op = Opcode::XOR16_32;
            } break;

            case 0x32: {
                execute_binary_operation_8bit<0x32>(&CPU::xor8);
                last_op = Opcode::XOR8;
            } break;

            case 0x33: {
                execute_binary_operation_16_32_bit<0x33>(&CPU::xor16, &CPU::xor32);
                last_op = Opcode::XOR16_32;
            } break;

            case 0x34: {
                execute_binary_accumulator_immediate_operation_8bit(&CPU::xor8);
                last_op = Opcode::XOR8;
            } break;

            case 0x35: {
                execute_binary_accumulator_immediate_operation_16_32bit(&CPU::xor16, &CPU::xor32);
                last_op = Opcode::XOR16_32;
            } break;

            // LCOV_EXCL_START
            case 0x36: {
                // SS segment override.
                ++pc;
            } break;
            // LCOV_EXCL_STOP

            case 0x37: {
                cpu.aaa();
                last_op = Opcode::AAA;
                ++pc;
            } break;

            case 0x38: {
                execute_binary_operation_8bit<0x38>(&CPU::cmp8);
                last_op = Opcode::CMP8;
            } break;

            case 0x39: {
                execute_binary_operation_16_32_bit<0x39>(&CPU::cmp16, &CPU::cmp32);
                last_op = Opcode::CMP16_32;
            } break;

            case 0x3A: {
                execute_binary_operation_8bit<0x3A>(&CPU::cmp8);
                last_op = Opcode::CMP8;
            } break;

            case 0x3B: {
                execute_binary_operation_16_32_bit<0x3B>(&CPU::cmp16, &CPU::cmp32);
                last_op = Opcode::CMP16_32;
            } break;

            case 0x3C: {
                execute_binary_accumulator_immediate_operation_8bit(&CPU::cmp8);
                last_op = Opcode::CMP8;
            } break;

            case 0x3D: {
                execute_binary_accumulator_immediate_operation_16_32bit(&CPU::cmp16, &CPU::cmp32);
                last_op = Opcode::CMP16_32;
            } break;

            // LCOV_EXCL_START
            case 0x3E: {
                // DS segment override.
                ++pc;
            } break;
            // LCOV_EXCL_STOP

            case 0x3F: {
                cpu.aas();
                last_op = Opcode::AAS;
                ++pc;
            } break;

            case 0x40 ... 0x47: {
                std::uint32_t& reg = cpu.regat(opcode - 0x40);
                if (is_16_bit_mode) {
                    set_low_word(reg, cpu.inc16(reg));
                    last_op = Opcode::INC16;
                } else {
                    last_op = Opcode::INC32;
                    reg = cpu.inc32(reg);
                }
                ++pc;
            } break;

            case 0x48 ... 0x4F: {
                std::uint32_t& reg = cpu.regat(opcode - 0x40);
                if (is_16_bit_mode) {
                    set_low_word(reg, cpu.dec16(reg));
                    last_op = Opcode::DEC16;
                } else {
                    reg = cpu.dec32(reg);
                    last_op = Opcode::DEC32;
                }
                ++pc;
            } break;
            
            case 0x50 ... 0x57: {
                const auto reg = cpu.regat(opcode - 0x50);
                if (is_16_bit_mode) {
                    cpu.push16(get_low_word(reg));
                } else {
                    cpu.push32(reg);
                }
                ++pc;
            } break;

            case 0x58 ... 0x5B: {
                set_low_byte(cpu.regat(opcode - 0x58), cpu.pop8());
                ++pc;
            } break;

            case 0x5C ... 0x5F: {
                set_low_word_high_byte(cpu.regat(opcode - 0x5C), cpu.pop8());
                ++pc;
            } break;
            
            case 0x60: {
                if (is_16_bit_mode) {
                    cpu.pusha();
                    last_op = Opcode::PUSHA;
                } else {
                    cpu.pushad();
                    last_op = Opcode::PUSHAD;
                }
                ++pc;
            } break;

            case 0x61: {
                if (is_16_bit_mode) {
                    cpu.popa();
                    last_op = Opcode::POPA;
                } else {
                    cpu.popad();
                    last_op = Opcode::POPAD;
                }
                ++pc;
            } break;

            // case 0x62: {} break;

            case 0x63: {
                is_16_bit_mode = true;
                execute_binary_operation_16_32_bit<0x39>(&CPU::arpl16, &CPU::arpl32);
                is_16_bit_mode = false;
            } break;

            // LCOV_EXCL_START
            case 0x64: {
                // FS segment override.
                ++pc;
            } break;
            // LCOV_EXCL_STOP

            case 0x65: {
                // GS segment override.
                ++pc;
            } break;

            case 0x66: {
                if (cpu.mem[pc + 1] == 0xF) {
                    switch (std::uint8_t sOpcode = cpu.mem[pc + 2]; sOpcode) {
                        default: {
                            std::stringstream ss;
                            ss << "Unhandled Opcode: 0x66 0xF " << int(sOpcode);
                        } break;
                    }
                } else {
                    // Operand size override prefix.
                    is_16_bit_mode = true;
                    ++pc;
                }
            } break;

            // LCOV_EXCL_START
            case 0x67: {
                // Address size override prefix.
                ++pc;
            } break;
            // LCOV_EXCL_STOP

            case 0x68: {
                if (is_16_bit_mode) {
                    std::uint16_t imm16 = mread<std::uint16_t>(&cpu.mem[pc + 1]);
                    cpu.push16(imm16);
                    pc += 1 + sizeof(std::uint16_t);
                } else {
                    std::uint32_t imm32 = mread<std::uint32_t>(&cpu.mem[pc + 1]);
                    cpu.push32(imm32);
                    pc += 1 + sizeof(std::uint32_t);
                }
            } break;

            // case 0x69: {
            // } break;

            case 0x6A: {
                std::uint8_t imm8 = cpu.mem[pc + 1];
                cpu.push8(imm8);
                last_op = Opcode::PUSH8;
                pc += 2;
            } break;

            case 0x70: {
                if (cpu.flags.overflow) {
                    std::int8_t rel8 = mread<std::int8_t>(&cpu.mem[pc + 1]);
                    pc += sext(rel8);
                }
                pc += 2;
            } break;

            case 0x71: {
                if (! cpu.flags.overflow) {
                    std::int8_t rel8 = mread<std::int8_t>(&cpu.mem[pc + 1]);
                    pc += sext(rel8);
                }
                pc += 2;
            } break;

            case 0x72: {
                if (cpu.flags.carry) {
                    std::int8_t rel8 = mread<std::int8_t>(&cpu.mem[pc + 1]);
                    pc += sext(rel8);
                }
                pc += 2;
            } break;

            case 0x73: {
                if (! cpu.flags.carry) {
                    std::int8_t rel8 = mread<std::int8_t>(&cpu.mem[pc + 1]);
                    pc += sext(rel8);
                }
                pc += 2;
            } break;

            case 0x74: {
                if (cpu.flags.zero) {
                    std::int8_t rel8 = mread<std::int8_t>(&cpu.mem[pc + 1]);
                    pc += sext(rel8);
                }
                pc += 2;
            } break;

            case 0x75: {
                if (! cpu.flags.zero) {
                    std::int8_t rel8 = mread<std::int8_t>(&cpu.mem[pc + 1]);
                    pc += sext(rel8);
                }
                pc += 2;
            } break;

            case 0x76: {
                if (cpu.flags.carry || cpu.flags.zero) {
                    std::int8_t rel8 = mread<std::int8_t>(&cpu.mem[pc + 1]);
                    pc += sext(rel8);
                }
                pc += 2;
            } break;

            case 0x77: {
                if (! cpu.flags.carry && ! cpu.flags.zero) {
                    std::int8_t rel8 = mread<std::int8_t>(&cpu.mem[pc + 1]);
                    pc += sext(rel8);
                }
                pc += 2;
            } break;

            case 0x78: {
                if (cpu.flags.sign) {
                    std::int8_t rel8 = mread<std::int8_t>(&cpu.mem[pc + 1]);
                    pc += sext(rel8);
                }
                pc += 2;
            } break;

            case 0x79: {
                if (! cpu.flags.sign) {
                    std::int8_t rel8 = mread<std::int8_t>(&cpu.mem[pc + 1]);
                    pc += sext(rel8);
                }
                pc += 2;
            } break;

            case 0x7A: {
                if (cpu.flags.parity) {
                    std::int8_t rel8 = mread<std::int8_t>(&cpu.mem[pc + 1]);
                    pc += sext(rel8);
                }
                pc += 2;
            } break;

            case 0x7B: {
                if (! cpu.flags.parity) {
                    std::int8_t rel8 = mread<std::int8_t>(&cpu.mem[pc + 1]);
                    pc += sext(rel8);
                }
                pc += 2;
            } break;

            case 0x7C: {
                if (cpu.flags.sign != cpu.flags.overflow) {
                    std::int8_t rel8 = mread<std::int8_t>(&cpu.mem[pc + 1]);
                    pc += sext(rel8);
                }
                pc += 2;
            } break;

            case 0x7D: {
                if (cpu.flags.sign == cpu.flags.overflow) {
                    std::int8_t rel8 = mread<std::int8_t>(&cpu.mem[pc + 1]);
                    pc += sext(rel8);
                }
                pc += 2;
            } break;

            case 0x7E: {
                if (cpu.flags.zero || cpu.flags.sign != cpu.flags.overflow) {
                    std::int8_t rel8 = mread<std::int8_t>(&cpu.mem[pc + 1]);
                    pc += sext(rel8);
                }
                pc += 2;
            } break;

            case 0x7F: {
                if (!cpu.flags.zero && cpu.flags.sign == cpu.flags.overflow) {
                    std::int8_t rel8 = mread<std::int8_t>(&cpu.mem[pc + 1]);
                    pc += sext(rel8);
                }
                pc += 2;
            } break;

            case 0x80: {
                execute_binary_immediate_regencoded_operation_8bit();
            } break;

            case 0x81: {
                execute_binary_immediate_regencoded_operation_16_32bit();
            } break;

            case 0x89: {
                execute_binary_operation_16_32_bit<0x89>(&CPU::mov16, &CPU::mov32);
            } break;

            // case 0x8A: {
            //     execute_binary_operation_8bit<0x8A>(&CPU::mov8);
            // }

            case 0x8B: {
                execute_binary_operation_16_32_bit<0x8B>(&CPU::mov16, &CPU::mov32);
            } break;

            case 0x8D: {
                std::uint8_t mrr = cpu.mem[pc + 1];
                const auto [op, skip] = decode_modregrm(mrr, cpu.mem, pc, false);
                std::uint32_t address = op.rm.displacement;
                if (op.rm.reg_field) {
                    // Implies that there is no SIB bollockery.
                    address += cpu.R[op.rm.reg];
                } else {
                    // Here there be the cursed SIB bollockery.
                    if (op.rm.has_base) {
                        address += cpu.R[op.rm.base];
                    }
                    address += op.rm.scale*cpu.R[op.rm.index];
                }
                if (is_16_bit_mode) {
                    auto reg = GenericRegisterReference<std::uint32_t, std::uint16_t>(&cpu.R[op.reg], get_low_word, grh_set_low_word);
                    static_cast<std::uint16_t&>(reg) = cpu.lea16(reg, address);
                } else {
                    auto reg = GenericRegisterReference<std::uint32_t, std::uint32_t>(&cpu.R[op.reg], null_getter, grh_null_setter);
                    static_cast<std::uint32_t&>(reg) = cpu.lea32(reg, address);
                }
                // std::cout << skip <<  std::endl;
                pc += skip;
            } break;

            case 0x90 ... 0x97: {
                cpu.xchg(cpu.regat(opcode - 0x90));
                last_op = Opcode::XCHG;
                ++pc;
            } break;

            case 0x98: {
                if (is_16_bit_mode) {
                    cpu.cbw();
                    last_op = Opcode::CBW;
                } else {
                    cpu.cwde();
                    last_op = Opcode::CWDE;
                }
                ++pc;
            } break;

            case 0x99: {
                if (is_16_bit_mode) {
                    cpu.cwd();
                    last_op = Opcode::CWD;
                } else {
                    cpu.cdq();
                    last_op = Opcode::CDQ;
                }
                ++pc;
            } break;

            case 0x9C: {
                if (is_16_bit_mode) {
                    // cpu.pushf();
                } else {
                    // cpu.pushfd();
                }
                ++pc;
            } break;

            case 0x9E: {
                cpu.sahf();
                last_op = Opcode::SAHF;
                ++pc;
            } break;

            case 0x9F: {
                cpu.lahf();
                last_op = Opcode::LAHF;
                ++pc;
            } break;

            case 0xA8: {
                std::uint8_t imm8 = mread<std::uint8_t>(&cpu.mem[pc + 1]);
                cpu.test8(get_low_byte(cpu.R[EAX]), imm8);
                pc += 2;
            } break;

            case 0xB0 ... 0xB3: {
                std::uint8_t imm8 = cpu.mem[pc + 1];
                auto& reg = cpu.regat(opcode - 0xB0);
                set_low_byte(reg, imm8);
                pc += 1 + sizeof(std::uint8_t);
            } break;

            case 0xB4 ... 0xB7: {
                std::uint8_t imm8 = cpu.mem[pc + 1];
                auto& reg = cpu.regat(opcode - 0xB4);
                set_low_word_high_byte(reg, imm8);
                pc += 1 + sizeof(std::uint8_t);
            } break;

            case 0xB8 ... 0xBF: {
                auto& reg = cpu.regat(opcode - 0xB8);
                if (is_16_bit_mode) {
                    std::uint16_t v16 = mread<std::uint16_t>(&cpu.mem[pc + 1]);
                    set_low_word(reg, v16);
                    pc += 1 + sizeof(std::uint16_t);
                } else {
                    std::uint32_t v32 = mread<std::uint32_t>(&cpu.mem[pc + 1]);
                    reg = v32;
                    pc += 1 + sizeof(std::uint32_t);
                }
            } break;

            case 0xC1: {
                const std::uint8_t mrr = cpu.mem[pc + 1];
                const auto [ops, skip] = decode_modregrm(mrr, cpu.mem, pc, false);
                pc += skip;
                std::uint8_t imm8 = cpu.mem[pc];
                ++pc;

                if (is_16_bit_mode) {
                    auto suop = structure_unary_operands<std::uint16_t>(cpu.R, cpu.mem, ops);
                    auto op = [&](unsigned int reg) {
                        switch (reg) {
                            case 7: return &CPU::sar16;
                            default: {
                                std::stringstream ss;
                                ss << "Unhandled Opcode: 0xC1 " << std::hex << uint(reg);
                                throw std::logic_error(ss.str());
                            } break;
                        }
                    }(ops.reg);
                    
                    if (suop.is_rm_ptr) {
                        static_cast<std::uint16_t&>(suop.rm.m) = (cpu.*op)(static_cast<std::uint16_t&>(suop.rm.m), sext<std::uint16_t>(imm8));
                    } else {
                        static_cast<std::uint16_t&>(suop.rm.r) = (cpu.*op)(static_cast<std::uint16_t&>(suop.rm.r), sext<std::uint16_t>(imm8));
                    }

                } else {
                    auto suop = structure_unary_operands<std::uint32_t>(cpu.R, cpu.mem, ops);
                    auto op = [&](unsigned int reg) {
                        switch (reg) {
                            case 7: return &CPU::sar32;

                            default: {
                                std::stringstream ss;
                                ss << "Unhandled Opcode: 0xC1 " << std::hex << uint(reg);
                                throw std::logic_error(ss.str());
                            } break;
                        }
                    }(ops.reg);

                    if (suop.is_rm_ptr) {
                        static_cast<std::uint32_t&>(suop.rm.m) = (cpu.*op)(static_cast<std::uint32_t&>(suop.rm.m), sext(imm8));
                    } else {
                        static_cast<std::uint32_t&>(suop.rm.r) = (cpu.*op)(static_cast<std::uint32_t&>(suop.rm.r), sext(imm8));
                    }
                }

            } break;

            case 0xD1: {
                const std::uint8_t mrr = cpu.mem[pc + 1];
                const auto [ops, skip] = decode_modregrm(mrr, cpu.mem, pc, false);
                pc += skip;
                
                if (is_16_bit_mode) {
                    auto suop = structure_unary_operands<std::uint16_t>(cpu.R, cpu.mem, ops);
                    auto op = [&](unsigned int reg) {
                        switch (reg) {
                            case 7: {
                                return &CPU::sar16_u;
                            } break;

                            default: {
                                std::stringstream ss;
                                ss << "Unhandled Opcode: 0xC1 " << std::hex << uint(reg);
                                throw std::logic_error(ss.str());
                            } break;
                        }
                    }(ops.reg);
                    if (suop.is_rm_ptr) {
                        static_cast<std::uint16_t&>(suop.rm.m) = (cpu.*op)(static_cast<std::uint16_t&>(suop.rm.m));
                    } else {
                        static_cast<std::uint16_t&>(suop.rm.r) = (cpu.*op)(static_cast<std::uint16_t&>(suop.rm.r));
                    }
                } else {
                    auto suop = structure_unary_operands<std::uint32_t>(cpu.R, cpu.mem, ops);
                    auto op = [&](unsigned int reg) {
                        switch (reg) {
                            case 7: {
                                return &CPU::sar32_u;
                            } break;

                            default: {
                                std::stringstream ss;
                                ss << "Unhandled Opcode: 0xC1 " << std::hex << uint(reg);
                                throw std::logic_error(ss.str());
                            } break;
                        }
                    }(ops.reg);
                    if (suop.is_rm_ptr) {
                        static_cast<std::uint32_t&>(suop.rm.m) = (cpu.*op)(static_cast<std::uint32_t&>(suop.rm.m));
                    } else {
                        static_cast<std::uint32_t&>(suop.rm.r) = (cpu.*op)(static_cast<std::uint32_t&>(suop.rm.r));
                    }
                }
            } break;

            case 0xD4 : {
                std::uint8_t imm8 = cpu.mem[pc + 1];
                cpu.aam(imm8);
                last_op = Opcode::AAM;
                pc += 1 + sizeof(std::uint8_t);
            } break;

            case 0xD5: {
                std::uint8_t imm8 = cpu.mem[pc + 1];
                cpu.aad(imm8);
                last_op = Opcode::AAD;
                pc += 1 + sizeof(std::uint8_t);
            } break;

            case 0xD6: {
                cpu.salc();
                last_op = Opcode::SALC;
                ++pc;
            } break;

            case 0xD7: {
                cpu.xlat();
                last_op = Opcode::XLAT;
                ++pc;
            } break;

            case 0xD8: {
                switch (std::uint8_t mrr = cpu.mem[pc + 1]; mrr) {

                    // case 0x00 ... 0xBF: break;

                    case 0xC0 ... 0xC7: {
                        fpu.fadd(mrr - 0xC0);
                        pc += 2;
                    } break;

                    case 0xC8 ... 0xCF: {
                        fpu.fmul(mrr - 0xC8);
                        pc += 2;
                    } break;

                    case 0xD0 ... 0xD7: {
                        fpu.fcom(mrr - 0xD0u);
                        pc += 2;
                    } break;

                    case 0xD8 ... 0xDF: {
                        fpu.fcomp(mrr - 0xD8);
                        pc += 2;
                    } break;

                    case 0xE0 ... 0xE7: {
                        fpu.fsub(mrr - 0xE0);
                        pc += 2;
                    } break;

                    case 0xE8 ... 0xEF: {
                        fpu.fsubr(mrr - 0xE8);
                        pc += 2;
                    } break;

                    case 0xF0 ... 0xF7: {
                        fpu.fdiv(mrr - 0xF0);
                        pc += 2;
                    } break;

                    case 0xF8 ... 0xFf: {
                        fpu.fdivr(mrr - 0xF8);
                        pc += 2;
                    } break;

                    default: {
                        std::stringstream ss;
                        ss << "Unhandled opcode: " << uint(opcode) << " with mod/reg/rm: " << uint(mrr);
                        throw std::logic_error(ss.str());
                    } break;
                }
            } break;

            case 0xD9: {
                switch (std::uint8_t mrr = cpu.mem[pc + 1]; mrr) {

                    // case 0x00 ... 0xBF: break;

                    case 0xC0 ... 0xC7: {
                        fpu.fld(fpu.V.st(mrr - 0xC0));
                        pc += 2;
                    } break;

                    case 0xC8 ... 0xCF: {
                        fpu.fxch(fpu.V.st(mrr - 0xC8));
                        pc += 2;
                    } break;

                    case 0xD0: {
                        fpu.fnop();
                        pc += 2;
                    } break;

                    case 0xE1: {
                        fpu.fabs();
                        pc += 2;
                    } break;

                    case 0xE5: {
                        fpu.fxam();
                        pc += 2;
                    } break;

                    case 0xE8: {
                        fpu.fld1();
                        pc += 2;
                    } break;

                    case 0xE9: {
                        fpu.fldl2t();
                        pc += 2;
                    } break;

                    case 0xEA: {
                        fpu.fldl2e();
                        pc += 2;
                    } break;

                    case 0xEB: {
                        fpu.fldpi();
                        pc += 2;
                    } break;

                    case 0xEC: {
                        fpu.fldlg2();
                        pc += 2;
                    } break;

                    case 0xED: {
                        fpu.fldln2();
                        pc += 2;
                    } break;

                    case 0xEE: {
                        fpu.fldz();
                        pc += 2;
                    } break;

                    case 0xF0: {
                        fpu.f2xm1();
                        pc += 2;
                    } break;

                    case 0xF1: {
                        fpu.fyl2x();
                        pc += 2;
                    } break;

                    case 0xF2: {
                        fpu.fptan();
                        pc += 2;
                    } break;

                    case 0xF3: {
                        fpu.fpatan();
                        pc += 2;
                    } break;

                    case 0xF4: {
                        fpu.fxtract();
                        pc += 2;
                    } break;

                    case 0xF5: {
                        fpu.fprem1();
                        pc += 2;
                    } break;

                    case 0xF6: {
                        fpu.fdecstp();
                        pc += 2;
                    } break;

                    case 0xF7: {
                        fpu.fincstp();
                        pc += 2;
                    } break;

                    case 0xF8: {
                        fpu.fprem();
                        pc += 2;
                    } break;

                    case 0xF9: {
                        fpu.fyl2xp1();
                        pc += 2;
                    } break;

                    case 0xFA: {
                        fpu.fsqrt();
                        pc += 2;
                    } break;

                    case 0xFB: {
                        fpu.fsincos();
                        pc += 2;
                    } break;

                    case 0xFC: {
                        fpu.frndint();
                        pc += 2;
                    } break;

                    case 0xFD: {
                        fpu.fscale();
                        pc += 2;
                    } break;

                    case 0xFE: {
                        fpu.fsin();
                        pc += 2;
                    } break;

                    case 0xFF: {
                        fpu.fcos();
                        pc += 2;
                    } break;

                    default: {
                        // throw std::logic_error(std::format("Unhandled opcode {} with mod/reg/rm {}.", opcode, mrr));
                        throw std::logic_error("Unhandled opcode with mod/reg/rm.");
                    } break;
                }
            } break;

            case 0xDA: {
                switch (std::uint8_t mrr = cpu.mem[pc + 1]; mrr) {

                    case 0xC0 ... 0xC7: {
                        fpu.fcmovb(mrr - 0xC0);
                        pc += 2;
                    } break;

                    case 0xC8 ... 0xCF: {
                        fpu.fcmove(mrr - 0xC8);
                        pc += 2;
                    } break;

                    case 0xD0 ... 0xD7: {
                        fpu.fcmovbe(mrr - 0xD0);
                        pc += 2;
                    } break;

                    case 0xD8 ... 0xDF: {
                        fpu.fcmovu(mrr - 0xD8);
                        pc += 2;
                    } break;

                    default: {
                        // throw std::logic_error(std::format("Unhandled opcode {} with mod/reg/rm {}.", opcode, mrr));
                        throw std::logic_error("Unhandled opcode with mod/reg/rm.");

                    } break;
                }
            } break;

            case 0xDB: {
                switch (std::uint8_t mrr = cpu.mem[pc + 1]; mrr) {

                    case 0xC0 ... 0xC7: {
                        fpu.fcmovnb(mrr - 0xC0);
                        pc += 2;
                    } break;

                    case 0xC8 ... 0xCF: {
                        fpu.fcmovne(mrr - 0xC8);
                        pc += 2;
                    } break;

                    case 0xD0 ... 0xD7: {
                        fpu.fcmovnbe(mrr - 0xD0);
                        pc += 2;
                    } break;

                    case 0xD8 ... 0xDF: {
                        fpu.fcmovnu(mrr - 0xD8);
                        pc += 2;
                    } break;

                    default: {
                        // throw std::logic_error(std::format("Unhandled opcode {} with mod/reg/rm {}.", opcode, mrr));
                        throw std::logic_error("Unhandled opcode with mod/reg/rm.");
                    } break;
                }
            } break;

            case 0xDC: {
                switch (std::uint8_t mrr = cpu.mem[pc + 1]; mrr) {

                    // case 0x00 ... 0xBF: break;

                    case 0xC0 ... 0xC7: {
                        fpu.fadd_r(mrr - 0xC0);
                        pc += 2;
                    } break;

                    case 0xC8 ... 0xCF: {
                        fpu.fmul_r(mrr - 0xC8);
                        pc += 2;
                    } break;

                    case 0xE0 ... 0xE7: {
                        fpu.fsubr_r(mrr - 0xE0);
                        pc += 2;
                    } break;

                    case 0xE8 ... 0xEF: {
                        fpu.fsub_r(mrr - 0xE8);
                        pc += 2;
                    } break;

                    case 0xF0 ... 0xF7: {
                        fpu.fdivr_r(mrr - 0xF0);
                        pc += 2;
                    } break;

                    case 0xF8 ... 0xFF: {
                        fpu.fdiv_r(mrr - 0xF8);
                        pc += 2;
                    } break;

                    default: {
                        throw std::logic_error("Unhandled opcode {} with mod/reg/rm {}.");
                    } break;
                }
            } break;

            case 0xDD: {
                switch (std::uint8_t mrr = cpu.mem[pc + 1]; mrr) {
                    // case 0x00 ... 0xBF: break;

                    case 0xC0 ... 0xC7: {
                        fpu.ffree(mrr - 0xC0);
                        pc += 2;
                    } break;

                    case 0xD0 ... 0xD7: {
                        fpu.fsti(mrr - 0xD0);
                        pc += 2;
                    } break;

                    case 0xD8 ... 0xDF: {
                        fpu.fstp(mrr - 0xD8);
                        pc += 2;
                    } break;
                }
            } break;

            case 0xDE: {
                switch (std::uint8_t mrr = cpu.mem[pc + 1]; mrr) {
                    // case 0x00 ... 0xBF: break;

                    case 0xC0 ... 0xC7: {
                        fpu.faddp(mrr - 0xC0);
                        pc += 2;
                    } break;

                    case 0xC8 ... 0xCF: {
                        fpu.fmulp(mrr - 0xC8);
                        pc += 2;
                    } break;

                    case 0xE0 ... 0xE7: {
                        fpu.fsubrp(mrr - 0xE0);
                        pc += 2;
                    } break;

                    case 0xE8 ... 0xEF: {
                        fpu.fsubp(mrr - 0xE8);
                        pc += 2;
                    } break;

                    case 0xF0 ... 0xF7: {
                        fpu.fdivrp(mrr - 0xF0);
                        pc += 2;
                    } break;

                    case 0xF8 ... 0xFF: {
                        fpu.fdivp(mrr - 0xF8);
                        pc += 2;
                    } break;
                }
            } break;

            case 0xEB: {
                std::int8_t rel8 = mread<std::int8_t>(&cpu.mem[pc + 1]) + 2;
                pc += sext(rel8);
            } break;

            case 0xF3: {
                if (cpu.mem[pc + 1] == 0xF) {
                    switch (std::uint8_t sOpcode = cpu.mem[pc + 2]; sOpcode) {

                    }
                } else {
                    // Rep prefix.
                    ++pc;
                }
            } break;

            case 0xF4: {
                // gets decremented at end of block and then exits program.
                if (is_cycles) {
                    cycles = 1;
                } else {
                    cpu.hlt();
                }
                last_op = Opcode::HLT;
                ++pc;
            } break;

            case 0xF5: {
                cpu.cmc();
                last_op = Opcode::CMC;
                ++pc;
            } break;

            case 0xF7: {
                const std::uint8_t mrr = cpu.mem[pc + 1];
                const auto [ops, skip] = decode_modregrm(mrr, cpu.mem, pc, false);
                pc += skip;
                switch(ops.reg) {
                    // case 0:
                    // case 1: {
                    //     if (is_16_bit_mode) {
                    //         auto suop = structure_unary_operands<std::uint16_t>(cpu.R, cpu.mem, ops);
                    //         std::uint16_t imm16 = mread<std::uint16_t>(&cpu.mem[pc]);
                    //         if (suop.is_rm_ptr) {
                    //             static_cast<std::uint16_t&>(suop.rm.m) = cpu.test16(static_cast<std::uint16_t&>(suop.rm.m), imm16);
                    //         } else {
                    //             static_cast<std::uint16_t&>(suop.rm.r) = cpu.test16(static_cast<std::uint16_t&>(suop.rm.r), imm16);
                    //         }
                    //         pc += sizeof(std::uint16_t);
                    //     } else {
                    //         auto suop = structure_unary_operands<std::uint32_t>(cpu.R, cpu.mem, ops);
                    //         std::uint32_t imm32 = mread<std::uint32_t>(&cpu.mem[pc]);
                    //         if (suop.is_rm_ptr) {
                    //             static_cast<std::uint16_t&>(suop.rm.m) = cpu.test16(static_cast<std::uint16_t&>(suop.rm.m), imm16);
                    //         } else {
                    //             static_cast<std::uint16_t&>(suop.rm.r) = cpu.test16(static_cast<std::uint16_t&>(suop.rm.r), imm16);
                    //         }
                    //         pc += sizeof(std::uint32_t);
                    //     }
                    // } break;

                    // case 2: {
                    //     if (is_16_bit_mode) {
                    //         auto suop = structure_unary_operands<std::uint16_t>(cpu.R, cpu.mem, ops);
                    //         if (suop.is_rm_ptr) {
                    //             static_cast<std::uint16_t&>(suop.rm.m) = cpu.not16(static_cast<std::uint16_t&>(suop.rm.m));
                    //         } else {
                    //             static_cast<std::uint16_t&>(suop.rm.r) = cpu.not16(static_cast<std::uint16_t&>(suop.rm.r));
                    //         }
                    //     } else {
                    //         auto suop = structure_unary_operands<std::uint32_t>(cpu.R, cpu.mem, ops);
                    //         if (suop.is_rm_ptr) {
                    //             static_cast<std::uint32_t&>(suop.rm.m) = cpu.not32(static_cast<std::uint32_t&>(suop.rm.m));
                    //         } else {
                    //             static_cast<std::uint32_t&>(suop.rm.r) = cpu.not32(static_cast<std::uint32_t&>(suop.rm.r));
                    //         }
                    //     }
                    // } break;

                    // case 3: {
                    //     if (is_16_bit_mode) {
                    //         auto suop = structure_unary_operands<std::uint16_t>(cpu.R, cpu.mem, ops);
                    //         if (suop.is_rm_ptr) {
                    //             static_cast<std::uint16_t&>(suop.rm.m) = cpu.neg16(static_cast<std::uint16_t&>(suop.rm.m));
                    //         } else {
                    //             static_cast<std::uint16_t&>(suop.rm.r) = cpu.neg16(static_cast<std::uint16_t&>(suop.rm.r));
                    //         }
                    //     } else {
                    //         auto suop = structure_unary_operands<std::uint32_t>(cpu.R, cpu.mem, ops);
                    //         if (suop.is_rm_ptr) {
                    //             static_cast<std::uint32_t&>(suop.rm.m) = cpu.neg32(static_cast<std::uint32_t&>(suop.rm.m));
                    //         } else {
                    //             static_cast<std::uint32_t&>(suop.rm.r) = cpu.neg32(static_cast<std::uint32_t&>(suop.rm.r));
                    //         }
                    //     }
                    // } break;
                    // case 4:

                    case 5: {
                        if (is_16_bit_mode) {
                            auto suop = structure_unary_operands<std::uint16_t>(cpu.R, cpu.mem, ops);
                            const auto src = [&](){
                                if (suop.is_rm_ptr) {
                                    return static_cast<std::uint16_t&>(suop.rm.m);
                                } else {
                                    return static_cast<std::uint16_t&>(suop.rm.r);
                                }
                            }();
                            const std::uint32_t tmp = cpu.imul16_s(get_low_word(cpu.R[EAX]), src);
                            set_low_word(cpu.R[EAX], get_low_word(tmp));
                            set_low_word(cpu.R[EDX], get_high_word(tmp));
                        } else {
                            auto suop = structure_unary_operands<std::uint32_t>(cpu.R, cpu.mem, ops);
                            const auto src = [&](){
                                if (suop.is_rm_ptr) {
                                    return static_cast<std::uint32_t&>(suop.rm.m);
                                } else {
                                    return static_cast<std::uint32_t&>(suop.rm.r);
                                }
                            }();
                            const std::uint64_t tmp = cpu.imul32_s(cpu.R[EAX], src);
                            cpu.R[EAX] = low_dword(tmp);
                            cpu.R[EDX] = high_dword(tmp);
                        }
                    } break;

                    // case 6:
                    // case 7:

                    default: {
                        std::stringstream ss;
                        ss << "Unhandled Opcode: 0xF7 " << std::hex << uint(opcode);
                        throw std::logic_error(ss.str());
                    } break;
                }

            } break;

            case 0xF8: {
                cpu.clc();
                last_op = Opcode::CLC;
                ++pc;
            } break;

            case 0xF9: {
                cpu.stc();
                last_op = Opcode::STC;
                ++pc;
            } break;

            case 0xFC: {
                cpu.cld();
                last_op = Opcode::CLD;
                ++pc;
            } break;

            case 0xFD: {
                cpu.std();
                last_op = Opcode::STD;
                ++pc;
            } break;

            default: {
                std::stringstream ss;
                ss << "Unhandled opcode: " << std::hex << uint(opcode);
                throw std::logic_error(ss.str());
            } break;
        }

        // LCOV_EXCL_START
        if (visual_debug_mode) {
            std::cout << cpu << ' ' << pc << ' ' << std::hex << int(opcode) << '\n';
            char c;
            std::cin >> c;
        }
        // LCOV_EXCL_STOP

        if (is_cycles) {
            --cycles;
        }
    }
}

void Executor::run_single_cycle(bool visual_debug) {
    execute(visual_debug, true, 1);
}