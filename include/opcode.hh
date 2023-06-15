#ifndef OPCODE_HH
#define OPCODE_HH

#include <type_traits>

enum class Opcode {

    NULL_OP,
    ENUM_START,

    AAA,
    AAD,
    AAM,
    AAS,

    ADC8,
    ADC16_32,
    ADD8,
    ADD16_32,
    AND8,
    AND16_32,

    CBW,
    CDQ,

    CLC,
    CLD,

    CMOVC16_32,
    CMOVNC16_32,
    CMOVNO16_32,
    CMOVO16_32,

    CMC,

    CMP8,
    CMP16_32,

    CWD,
    CWDE,

    DAA,
    DAS,

    DEC16,
    DEC32,

    HLT,

    INC16,
    INC32,

    LAHF,

    OR8,
    OR16_32,

    POPA,
    POPAD,

    PUSH8,
    PUSH16,
    PUSH32,
    PUSHA,
    PUSHAD,
    PUSH_CS,
    PUSH_DS,
    POP_DS,
    POP_ES,
    PUSH_ES,
    PUSH_FS,
    PUSH_GS,
    POP_SS,
    PUSH_SS,

    SAHF,
    SALC,

    SBB8,
    SBB16_32,

    STC,
    STD,

    SUB8,
    SUB16_32,

    XCHG,
    XLAT,

    XOR8,
    XOR16_32

    ENUM_END
};

constexpr auto op_cast(const Opcode& op) {
    return std::underlying_type_t<Opcode>(op);
}


#endif