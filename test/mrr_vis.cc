#include <algorithm>
#include <cstdint>
#include <fstream>
#include <iostream>
#include <vector>
#include <span>

#include "decoder.hh"
#include "memory.hh"

constexpr bool is_8bit(const std::uint8_t opcode) noexcept {
    return !(opcode & 1);
}

// LCOV_EXCL_START
int main([[maybe_unused]] int argc, char** argv) {
    
    if (argc < 2) {
        std::cout << "Too few arguments passed to " << argv[0] << "\n"
            << "Call this program as: " << argv[0] << ' ' << "<byte_file>\n";
        return 1;
    }
    
    std::ifstream reader(argv[1]);
    std::vector<std::uint8_t> code;
    unsigned int c;
    while (reader >> std::hex >> c) {
        code.push_back(std::uint8_t(c));
    }

    if (code.empty()) {
        return -1;
    }

    Memory mem(16);
    std::copy(code.begin(), code.end(), mem.begin());

    const auto [ops, skip] = decode_modregrm(code[1], mem, 0, is_8bit(code[0]));
    std::cout << ops << std::endl;
}
// LCOV_EXCL_STOP