#include "memory.hh"

#include <algorithm>
#include <cstddef>
#include <cstdint>
#include <sstream>
#include <stdexcept>

Memory::Memory() {}

Memory::Memory(const std::size_t size) : data_(new std::uint8_t[size]), size_(size) {
    std::fill(data_, data_ + size, 0);
}

Memory::~Memory() {delete[] data_;}

std::uint8_t& Memory::operator[](const address_t index) {
    return data_[index];
}

const std::uint8_t& Memory::operator[](const address_t index) const {
    return data_[index];
}

std::uint8_t& Memory::at(const address_t index) {
    if (index >= size_) {
        std::stringstream ss;
        ss << "Invalid access address of size: " << size_ << " and address: " << index << '\n';
        throw std::domain_error(ss.str());
    }
    return data_[index];
}

const std::uint8_t& Memory::at(const address_t index) const {
    if (index >= size_) {
        std::stringstream ss;
        ss << "Invalid access address of size: " << size_ << " and address: " << index << '\n';
        throw std::domain_error(ss.str());
    }
    return data_[index];
}

Memory::operator bool() const noexcept {
    return data_ != nullptr;
}

std::size_t Memory::size() const noexcept {return size_;}
std::uint8_t* Memory::data() noexcept {return data_;}

std::uint8_t* Memory::begin() noexcept {return data_;}
std::uint8_t* Memory::end() noexcept {return data_ + size_;}

