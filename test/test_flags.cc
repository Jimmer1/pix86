#include "flags.hh"

#include <cassert>
#include <iostream>

void test_get_flags8() {
    Flags flags;
    bool t = flags.get_flags8() == 2;
    flags.sign = true;
    flags.parity = true;
    flags.carry = true;
    t = t && flags.get_flags8() == 0x87;
    assert(t);
}

void test_set_flags8() {
    Flags flags;
    flags.set_flags8(0);
    bool t = flags.sign == false
        && flags.zero == false
        && flags.adjust == false
        && flags.parity == false
        && flags.carry == false;
    flags.set_flags8(0x87);
    t = t && flags.sign == true
        && flags.zero == false
        && flags.adjust == false
        && flags.parity == true
        && flags.carry == true;

    assert(t);
}

void test_flags() {
    test_get_flags8();
    test_set_flags8();

    std::cout << "All flag tests passed!" << std::endl;
}