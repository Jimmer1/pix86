#ifndef MEMORY_HH
#define MEMORY_HH

#include <cstddef>
#include <cstdint>
#include <iostream>

#include "types.hh"

class Memory {
private:
    std::uint8_t* data_ = nullptr;
    std::size_t size_ = 0;
public:
    Memory();
    Memory(const std::size_t size);
    ~Memory();
    
    std::uint8_t& operator[](const address_t index);
    const std::uint8_t& operator[](const address_t index) const;

    std::uint8_t& at(const address_t index);
    const std::uint8_t& at(const address_t index) const;

    operator bool() const noexcept;
    std::size_t size() const noexcept;
    std::uint8_t* data() noexcept;
    std::uint8_t* begin() noexcept;
    std::uint8_t* end() noexcept;

    Memory& operator=(const Memory& other) {
        if (this != &other) {
            std::uint8_t* ptr = new std::uint8_t[size_];
            std::copy(other.data_, other.data_ + size_, ptr);
            delete[] data_;
            data_ = ptr;
            size_ = other.size_;
        }
        return *this;
    }


// LCOV_EXCL_START
    friend std::ostream& operator<<(std::ostream& os, const Memory& mem) {
        os << "{Memory: ";
        for (std::size_t i = 0; i < mem.size_; ++i) {
            os << int(mem.data_[i]) << ' ';
        }
        os << '}';
        return os;
    }
// LCOV_EXCL_STOP
};

#endif