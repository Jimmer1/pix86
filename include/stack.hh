#ifndef STACK_HH
#define STACK_HH

#include "memory.hh"
#include "types.hh"
#include "util.hh"

#include <cstddef>
#include <cstdint>

class Stack {
private:
    Memory mem_;
    std::uint32_t& esp_;
public:
    Stack(std::size_t size, std::uint32_t& esp) : mem_(size), esp_(esp) {}

    const std::uint8_t* mem_access(const address_t address) const {
        return &mem_[address];
    }

    std::uint32_t esp() const {
        return esp_;
    }

    template <typename I>
    I pop() noexcept {
        auto tmp = mread<I>(&mem_[esp_]);
        esp_ += sizeof(I);
        return tmp;
    }

    template <typename I>
    void push(const I value) {
        esp_ -= sizeof(I);
        mwrite<I>(&mem_[esp_], value);
    }
};

#endif