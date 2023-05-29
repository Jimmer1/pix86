#include "constants.hh"
#include "executor.hh"
#include "fpu.hh"

#include <cstdint>
#include <span>
#include <sstream>
#include <stdexcept>

#include <iostream>

using uint = unsigned int;

void Executor::execute_binary_accumulator_immediate_operation_8bit(unsigned long int& pc,
                                                            std::uint8_t(CPU::*op)(std::uint8_t, std::uint8_t)) {
    std::uint8_t imm8 = cpu.mem[pc + 1];
    set_low_byte(cpu.R[EAX], (cpu.*op)(get_low_byte(cpu.R[EAX]), imm8));
    pc += 1 + sizeof(std::uint8_t);
}

void Executor::execute_binary_accumulator_immediate_operation_16_32bit(unsigned long int& pc,
                                                                std::uint16_t(CPU::*op16)(std::uint16_t, std::uint16_t),
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

}

void Executor::execute_binary_immediate_regencoded_operation_8bit(unsigned long int& pc) {
    std::uint8_t mrr = cpu.mem[pc + 1];
    const auto [ops, skip] = decode_modregrm(mrr, cpu.mem, pc, true);
    auto so = structure_unary_operands<std::uint8_t>(cpu.R, cpu.mem, ops);
    pc += skip;
    std::uint8_t imm8 = mread<std::uint8_t>(&cpu.mem[pc]);
    auto op = [](unsigned int reg) {
        switch (reg) {
            case 0: return &CPU::add8;
            case 1: return &CPU::or8;
            case 2: return &CPU::adc8;
            case 3: return &CPU::sbb8;
            case 4: return &CPU::and8;
            case 5: return &CPU::sub8;
            case 6: return &CPU::xor8;
            case 7: return &CPU::cmp8;

            default: throw -1;
        }
    }(ops.reg);
    if (so.is_rm_ptr) {
        static_cast<std::uint8_t&>(so.rm.m) = (cpu.*op)(static_cast<std::uint8_t&>(so.rm.m), imm8);
    } else {
        static_cast<std::uint8_t&>(so.rm.r) = (cpu.*op)(static_cast<std::uint8_t&>(so.rm.r), imm8);
    }
    ++pc;
}

void Executor::execute_binary_immediate_regencoded_operation_16_32bit(unsigned long int& pc) {
    std::uint8_t mrr = cpu.mem[pc + 1];
    const auto [ops, skip] = decode_modregrm(mrr, cpu.mem, pc, false);
    pc += skip;
    if (is_16_bit_mode) {
        auto so = structure_unary_operands<std::uint16_t>(cpu.R, cpu.mem, ops);
        std::uint16_t imm16 = mread<std::uint16_t>(&cpu.mem[pc]);
        auto op = [&](unsigned int reg) {
            switch (reg) {
                case 0: return &CPU::add16;
                case 1: return &CPU::or16;
                case 2: return &CPU::adc16;
                case 3: return &CPU::sbb16;
                case 4: return &CPU::and16;
                case 5: return &CPU::sub16;
                case 6: return &CPU::xor16;
                case 7: return &CPU::cmp16;
                default: throw -1;
            }
        }(ops.reg);
        if (so.is_rm_ptr) {
            static_cast<std::uint16_t&>(so.rm.m) = (cpu.*op)(static_cast<std::uint16_t&>(so.rm.m), imm16);
        } else {
            static_cast<std::uint16_t&>(so.rm.r) = (cpu.*op)(static_cast<std::uint16_t&>(so.rm.r), imm16);
        }
    } else {
        auto so = structure_unary_operands<std::uint32_t>(cpu.R, cpu.mem, ops);
        std::uint32_t imm32 = mread<std::uint32_t>(&cpu.mem[pc]);
        auto op = [&](unsigned int reg) {
            switch (reg) {
                case 0: return &CPU::add32;
                case 1: return &CPU::or32;
                case 2: return &CPU::adc32;
                case 3: return &CPU::sbb32;
                case 4: return &CPU::and32;
                case 5: return &CPU::sub32;
                case 6: return &CPU::xor32;
                case 7: return &CPU::cmp32;
                default: throw -1;
            }
        }(ops.reg);
        if (so.is_rm_ptr) {
            static_cast<std::uint32_t&>(so.rm.m) = (cpu.*op)(static_cast<std::uint32_t&>(so.rm.m), imm32);
        } else {
            static_cast<std::uint32_t&>(so.rm.r) = (cpu.*op)(static_cast<std::uint32_t&>(so.rm.r), imm32);
        }
    }
    ++pc;
}

void Executor::execute(bool visual_debug_mode) {
    unsigned long int pc = 0;
    while (true) {
        // std::cout << "Opcode address " << std::hex << std::size_t(&cpu.mem[pc]) << std::endl;
        // std::cout << "Opcode: " << std::hex << uint(cpu.mem[pc]) << ", Counter: " << pc << std::endl;
        const std::uint8_t opcode = cpu.mem[pc]; 
        switch (opcode) {

            case 0x0: {
                execute_binary_operation_8bit<0x0>(pc, &CPU::add8);
            } break;

            case 0x1: {
                execute_binary_operation_16_32_bit<0x1>(pc, &CPU::add16, &CPU::add32);
            } break;

            case 0x2: {
                execute_binary_operation_8bit<0x2>(pc, &CPU::add8);
            } break;

            case 0x3: {
                execute_binary_operation_16_32_bit<0x3>(pc, &CPU::add16, &CPU::add32);
            } break;

            case 0x4: {
                execute_binary_accumulator_immediate_operation_8bit(pc, &CPU::add8);
            } break;

            case 0x5: {
                execute_binary_accumulator_immediate_operation_8bit(pc, &CPU::add8);
            } break;

            case 0x6: {
                cpu.push16(cpu.es);
                ++pc;
            } break;

            case 0x7: {
                cpu.es = cpu.pop16();
                ++pc;
            } break;

            case 0x8: {
                execute_binary_operation_8bit<0x8>(pc, &CPU::or8);
            } break;

            case 0x9: {
                execute_binary_operation_16_32_bit<0x9>(pc, &CPU::or16, &CPU::or32);
            } break;

            case 0xA: {
                execute_binary_operation_8bit<0xA>(pc, &CPU::or8);
            } break;

            case 0xB: {
                execute_binary_operation_16_32_bit<0xB>(pc, &CPU::or16, &CPU::or32);
            } break;

            case 0xC: {
                execute_binary_accumulator_immediate_operation_8bit(pc, &CPU::or8);
            } break;

            case 0xD: {
                execute_binary_operation_16_32_bit<0x3>(pc, &CPU::or16, &CPU::or32);
            } break;

            case 0xE: {
                cpu.push16(cpu.cs);
                ++pc;
            } break;

            case 0xF: {
                ++pc;
                switch (std::uint8_t sOpcode = cpu.mem[pc]; sOpcode) {
                    case 0x31: {
                        cpu.rdtsc();
                    } break;

                    case 0x40: {
                        if (cpu.flags.overflow) {
                            execute_binary_operation_16_32_bit<CMOV>(pc, &CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0x41: {
                        if (! cpu.flags.overflow) {
                            execute_binary_operation_16_32_bit<CMOV>(pc, &CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0x42: {
                        if (cpu.flags.carry) {
                            execute_binary_operation_16_32_bit<CMOV>(pc, &CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0x43: {
                        if (! cpu.flags.carry) {
                            execute_binary_operation_16_32_bit<CMOV>(pc, &CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0x44: {
                        if (cpu.flags.zero) {
                            execute_binary_operation_16_32_bit<CMOV>(pc, &CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0x45: {
                        if (! cpu.flags.zero) {
                            execute_binary_operation_16_32_bit<CMOV>(pc, &CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0x46: {
                        if (cpu.flags.carry || cpu.flags.zero) {
                            execute_binary_operation_16_32_bit<CMOV>(pc, &CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0x47: {
                        if (!cpu.flags.carry && !cpu.flags.zero) {
                            execute_binary_operation_16_32_bit<CMOV>(pc, &CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0x48: {
                        if (cpu.flags.sign) {
                            execute_binary_operation_16_32_bit<CMOV>(pc, &CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0x49: {
                        if (! cpu.flags.sign) {
                            execute_binary_operation_16_32_bit<CMOV>(pc, &CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0x4A: {
                        if (cpu.flags.parity) {
                            execute_binary_operation_16_32_bit<CMOV>(pc, &CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0x4B: {
                        if (! cpu.flags.parity) {
                            execute_binary_operation_16_32_bit<CMOV>(pc, &CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0x4C: {
                        if (cpu.flags.sign != cpu.flags.overflow) {
                            execute_binary_operation_16_32_bit<CMOV>(pc, &CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0x4D: {
                        if (cpu.flags.sign == cpu.flags.overflow) {
                            execute_binary_operation_16_32_bit<CMOV>(pc, &CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0x4E: {
                        if (cpu.flags.zero || cpu.flags.sign != cpu.flags.overflow) {
                            execute_binary_operation_16_32_bit<CMOV>(pc, &CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0x4F: {
                        if (! cpu.flags.zero && cpu.flags.sign == cpu.flags.overflow) {
                            execute_binary_operation_16_32_bit<CMOV>(pc, &CPU::mov16, &CPU::mov32);
                        }
                    } break;

                    case 0xA0: {
                        cpu.push16(cpu.fs);
                        ++pc;
                    } break;

                    case 0xA2: {
                        // cpu.cpuid();
                        ++pc;
                    } break;

                    case 0xA8: {
                        cpu.push16(cpu.gs);
                        ++pc;
                    } break;

                    case 0xAF: {
                        execute_binary_operation_16_32_bit<REG_DEST>(pc, &CPU::imul16, &CPU::imul32);
                    } break;

                    case 0xC8 ... 0xCF: {
                        cpu.bswap(cpu.regat(sOpcode - 0xC8));
                        ++pc;
                    } break;

                    default: {
                        std::stringstream ss;
                        ss << "Unhandled Opcode: 0xF " << std::hex << uint(sOpcode);
                        throw std::logic_error(ss.str()); 
                    } break;
                }
            } break;

            case 0x10: {
                execute_binary_operation_8bit<0x10>(pc, &CPU::adc8);
            } break;

            case 0x11: {
                execute_binary_operation_16_32_bit<0x11>(pc, &CPU::adc16, &CPU::adc32);
            } break;

            case 0x12: {
                execute_binary_operation_8bit<0x12>(pc, &CPU::adc8);
            } break;

            case 0x13: {
                execute_binary_operation_16_32_bit<0x13>(pc, &CPU::adc16, &CPU::adc32);
            } break;

            case 0x14: {
                execute_binary_accumulator_immediate_operation_8bit(pc, &CPU::adc8);
            } break;

            case 0x15: {
                execute_binary_accumulator_immediate_operation_16_32bit(pc, &CPU::adc16, &CPU::adc32);
            } break;

            case 0x16: {
                cpu.push16(cpu.ss);
                ++pc;
            } break;

            case 0x17: {
                cpu.ss = cpu.pop16();
                ++pc;
            } break;

            case 0x18: {
                execute_binary_operation_8bit<0x18>(pc, &CPU::sbb8);
            } break;

            case 0x19: {
                execute_binary_operation_16_32_bit<0x19>(pc, &CPU::sbb16, &CPU::sbb32);
            } break;

            case 0x1A: {
                execute_binary_operation_8bit<0x1A>(pc, &CPU::sbb8);
            } break;

            case 0x1B: {
                execute_binary_operation_16_32_bit<0x1B>(pc, &CPU::sbb16, &CPU::sbb32);
            } break;

            case 0x1C: {
                execute_binary_accumulator_immediate_operation_8bit(pc, &CPU::sbb8);
            } break;

            case 0x1D: {
                execute_binary_accumulator_immediate_operation_16_32bit(pc, &CPU::sbb16, &CPU::sbb32);
            } break;

            case 0x1E: {
                cpu.push16(cpu.ds);
                ++pc;
            } break;

            case 0x1F: {
                cpu.ds = cpu.pop16();
                ++pc;
            } break;

            case 0x20: {
                execute_binary_operation_8bit<0x20>(pc, &CPU::and8);
            } break;

            case 0x21: {
                execute_binary_operation_16_32_bit<0x21>(pc, &CPU::and16, &CPU::and32);
            } break;

            case 0x22: {
                execute_binary_operation_8bit<0x22>(pc, &CPU::and8);
            } break;

            case 0x23: {
                execute_binary_operation_16_32_bit<0x23>(pc, &CPU::and16, &CPU::and32);
            } break;

            case 0x24: {
                execute_binary_accumulator_immediate_operation_8bit(pc, &CPU::and8);
            } break;

            case 0x25: {
                execute_binary_accumulator_immediate_operation_16_32bit(pc, &CPU::and16, &CPU::and32);
            } break;

            case 0x26: {
                // ES segment override.
                ++pc;
            } break;

            case 0x27: {
                cpu.daa();
                ++pc;
            } break;

            case 0x28: {
                execute_binary_operation_8bit<0x28>(pc, &CPU::sub8);
            } break;

            case 0x29: {
                execute_binary_operation_16_32_bit<0x29>(pc, &CPU::sub16, &CPU::sub32);
            } break;

            case 0x2A: {
                execute_binary_operation_8bit<0x2A>(pc, &CPU::sub8);
            } break;

            case 0x2B: {
                execute_binary_operation_16_32_bit<0x2B>(pc, &CPU::sub16, &CPU::sub32);
            } break;

            case 0x2C: {
                execute_binary_accumulator_immediate_operation_8bit(pc, &CPU::sub8);
            } break;

            case 0x2D: {
                execute_binary_accumulator_immediate_operation_16_32bit(pc, &CPU::sub16, &CPU::sub32);
            } break;

            case 0x2E: {
                // CS segment override.
                ++pc;
            } break;

            case 0x2F: {
                cpu.das();
                ++pc;
            } break;

            case 0x30: {
                execute_binary_operation_8bit<0x30>(pc, &CPU::xor8);
            } break;

            case 0x31: {
                execute_binary_operation_16_32_bit<0x31>(pc, &CPU::xor16, &CPU::xor32);
            } break;

            case 0x32: {
                execute_binary_operation_8bit<0x32>(pc, &CPU::xor8);
            } break;

            case 0x33: {
                execute_binary_operation_16_32_bit<0x33>(pc, &CPU::xor16, &CPU::xor32);
            } break;

            case 0x34: {
                execute_binary_accumulator_immediate_operation_8bit(pc, &CPU::xor8);
            } break;

            case 0x35: {
                execute_binary_accumulator_immediate_operation_16_32bit(pc, &CPU::xor16, &CPU::xor32);
            } break;

            case 0x36: {
                // SS segment override.
                ++pc;
            } break;

            case 0x37: {
                cpu.aaa();
                ++pc;
            } break;

            case 0x38: {
                execute_binary_operation_8bit<0x38>(pc, &CPU::cmp8);
            } break;

            case 0x39: {
                execute_binary_operation_16_32_bit<0x39>(pc, &CPU::cmp16, &CPU::cmp32);
            } break;

            case 0x3A: {
                execute_binary_operation_8bit<0x3A>(pc, &CPU::cmp8);
            } break;

            case 0x3B: {
                execute_binary_operation_16_32_bit<0x3B>(pc, &CPU::cmp16, &CPU::cmp32);
            } break;

            case 0x3C: {
                execute_binary_accumulator_immediate_operation_8bit(pc, &CPU::cmp8);
            } break;

            case 0x3D: {
                execute_binary_accumulator_immediate_operation_16_32bit(pc, &CPU::cmp16, &CPU::cmp32);
            } break;

            case 0x3E: {
                // DS segment override.
                ++pc;
            } break;

            case 0x3F: {
                cpu.aas();
                ++pc;
            } break;

            case 0x40 ... 0x47: {
                std::uint32_t& reg = cpu.regat(opcode - 0x40);
                if (is_16_bit_mode) {
                    set_low_word(reg, cpu.inc16(reg));
                } else {
                    reg = cpu.inc32(reg);
                }
                ++pc;
            } break;

            case 0x48 ... 0x4F: {
                std::uint32_t& reg = cpu.regat(opcode - 0x40);
                if (is_16_bit_mode) {
                    set_low_word(reg, cpu.dec16(reg));
                } else {
                    reg = cpu.dec32(reg);
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
                } else {
                    cpu.pushad();
                }
                ++pc;
            } break;

            case 0x61: {
                if (is_16_bit_mode) {
                    cpu.popa();
                } else {
                    cpu.popad();
                }
                ++pc;
            } break;

            // case 0x62: {} break;

            case 0x63: {
                is_16_bit_mode = true;
                execute_binary_operation_16_32_bit<0x39>(pc, &CPU::arpl16, &CPU::arpl32);
                is_16_bit_mode = false;
            } break;

            case 0x64: {
                // FS segment override.
                ++pc;
            } break;

            case 0x65: {
                // GS segment override.
                ++pc;
            } break;

            case 0x66: {
                if (cpu.mem[pc + 1] == 0xF) {
                    switch (std::uint8_t sOpcode = cpu.mem[pc + 2]; sOpcode) {
                        default: {
                            std::stringstream ss;
                            ss << "Unhandled Opcode: 0x66 0xF " << uint(sOpcode);
                            throw std::logic_error(ss.str());
                        } break;
                    }
                } else {
                    // Operand size override prefix.
                    is_16_bit_mode = true;
                    ++pc;
                }
            } break;

            case 0x67: {
                // Address size override prefix.
                ++pc;
            } break;

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
                execute_binary_immediate_regencoded_operation_8bit(pc);
            } break;

            case 0x81: {
                execute_binary_immediate_regencoded_operation_16_32bit(pc);
            } break;

            case 0x89: {
                execute_binary_operation_16_32_bit<0x89>(pc, &CPU::mov16, &CPU::mov32);
            } break;

            case 0x8B: {
                execute_binary_operation_16_32_bit<0x8B>(pc, &CPU::mov16, &CPU::mov32);
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
                ++pc;
            } break;

            case 0x98: {
                if (is_16_bit_mode) {
                    cpu.cbw();
                } else {
                    cpu.cwde();
                }
                ++pc;
            } break;

            case 0x99: {
                if (is_16_bit_mode) {
                    cpu.cwd();
                } else {
                    cpu.cdq();
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
                ++pc;
            } break;

            case 0x9F: {
                cpu.lahf();
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
                pc += 1 + sizeof(std::uint8_t);
            } break;

            case 0xD5: {
                std::uint8_t imm8 = cpu.mem[pc + 1];
                cpu.aad(imm8);
                pc += 1 + sizeof(std::uint8_t);
            } break;

            case 0xD6: {
                cpu.salc();
                ++pc;
            } break;

            case 0xD7: {
                cpu.xlat();
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
                        fpu.fcom(mrr - 0xD0);
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
                        fpu.fld(fpu.st(mrr - 0xC0));
                        pc += 2;
                    } break;

                    case 0xC8 ... 0xCF: {
                        fpu.fxch(fpu.st(mrr - 0xC8));
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
                std::cout << "rel8: " << std::hex << int(rel8) << std::endl;
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
                cpu.hlt();
                ++pc;
            } break;

            case 0xF5: {
                cpu.cmc();
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

                    default: {
                        std::stringstream ss;
                        ss << "Unhandled Opcode: 0xF7 " << std::hex << uint(opcode);
                        throw std::logic_error(ss.str());
                    } break;
                }

            } break;

            case 0xF8: {
                cpu.clc();
                ++pc;
            } break;

            case 0xF9: {
                cpu.stc();
                ++pc;
            } break;

            case 0xFC: {
                cpu.cld();
                ++pc;
            } break;

            case 0xFD: {
                cpu.std();
                ++pc;
            } break;

            default: {
                std::stringstream ss;
                ss << "Unhandled opcode: " << std::hex << uint(opcode);
                throw std::logic_error(ss.str());
            } break;
        }

        if (visual_debug_mode) {
            std::cout << cpu << ' ' << pc << ' ' << std::hex << int(opcode) << '\n';
            char c;
            std::cin >> c;
        }
    }
}