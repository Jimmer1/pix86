#ifndef FLAGS_HH
#define FLAGS_HH

#include <cstdint>
#include <iostream>

class Flags {
public:
    bool carry = false;
    bool parity = false;
    bool adjust = false;
    bool zero = false;
    bool sign = false;
    
    bool direction = false;
    bool overflow = false;

    std::uint8_t get_flags8() const {
        std::uint8_t tmp = (sign << 7)
            | (zero << 6)
            | (adjust << 4)
            | (parity << 2)
            | 0x2
            | carry;
        return tmp;
    }

    void set_flags8(std::uint8_t u8) {
        sign = u8 & (1 << 7);
        zero = u8 & (1 << 6);
        adjust = u8 & (1 << 4);
        parity = u8 & (1 << 2);
        carry = u8 & 1;
    }

    friend std::ostream& operator<<(std::ostream& os, const Flags& flags) {
        os << "{cf: " << flags.carry
            << ", pf: " << flags.parity
            << ", af: " << flags.adjust
            << ", zf: " << flags.zero
            << ", sf: " << flags.sign
            << ", df: " << flags.direction
            << ", of: " << flags.overflow << '}';
        return os;
    }
};

#endif