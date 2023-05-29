#ifndef MEMORY_HH
#define MEMORY_HH

#include <algorithm>
#include <cassert>
#include <cstddef>
#include <cstdint>
#include <iostream>
#include <vector>

// using Memory = std::vector<std::uint8_t>;

class Memory {
private:
    std::uint8_t* data_ = nullptr;
    std::size_t size_ = 0;
public:
    Memory() {}
    Memory(std::size_t size) : data_(new std::uint8_t[size]), size_(size) {
        std::fill(data_, data_ + size, 0);
    }
    ~Memory() {delete[] data_;}
    std::uint8_t& operator[](std::size_t n) {
// #ifdef DEBUG_BUILD
//         if (n >= size)
//             throw std::domain_error("Memory access out of bounds.");
// #endif
        // std::cout << "Access address: " << n << std::endl;
        assert(n < size_);
        return data_[n];
    }

    operator bool() {
        return data_ != nullptr;
    }

    std::size_t size() {return size_;}
    std::uint8_t* data() {return data_;}

    std::uint8_t* begin() {return data_;}
    std::uint8_t* end() {return data_ + size_;}

    friend std::ostream& operator<<(std::ostream& os, const Memory& mem) {
        os << "{Memory: ";
        for (std::size_t i = 0; i < mem.size_; ++i) {
            std::cout << int(mem.data_[i]) << ' ';
        }
        os << '}';
        return os;
    }
};

#endif