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

    unsigned int iopl : 2;

    bool nt = false;
    bool md = false;

    bool resume = false;
    bool virtual_8086 = false;
    bool alignment = false;
    bool vif = false;
    bool vip = false;
    bool id = false;


    std::uint8_t get_flags8() const;
    void set_flags8(std::uint8_t b);

    void set_adc_flags(std::uint32_t,
                       std::uint32_t,
                       std::uint32_t);

    void set_add_flags(std::uint32_t,
                       std::uint32_t,
                       std::uint32_t);
    
    void set_and_flags(std::uint32_t,
                       std::uint32_t,
                       std::uint32_t);

    void set_cmp_flags(std::uint32_t,
                       std::uint32_t,
                       std::uint32_t);

    void set_dec_flags(std::uint32_t,
                       std::uint32_t);

    void set_imul_flags(std::uint32_t,
                        std::uint32_t,
                        std::uint32_t);
    
    void set_imul_s_flags(std::uint32_t,
                          std::uint32_t,
                          std::uint32_t);

    void set_inc_flags(std::uint32_t,
                       std::uint32_t);

    void set_or_flags(std::uint32_t,
                      std::uint32_t,
                      std::uint32_t);

    void set_sbb_flags(std::uint32_t,
                       std::uint32_t,
                       std::uint32_t);

    void set_sar_flags(std::uint32_t,
                       std::uint32_t,
                       std::uint32_t);

    void set_sub_flags(std::uint32_t,
                       std::uint32_t,
                       std::uint32_t);

    void set_xor_flags(std::uint32_t,
                       std::uint32_t,
                       std::uint32_t);

// LCOV_EXCL_START
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
// LCOV_EXCL_STOP
};

#endif