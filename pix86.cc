#include "executor.hh"

#include <cstdint>
#include <fstream>
#include <iostream>
#include <vector>
#include <span>

int main([[maybe_unused]] int argc, char** argv) {
    if (argc > 1) {
        [[maybe_unused]] const auto filename = argv[1];
    }

    std::ifstream reader("test.txt");
    std::vector<std::uint8_t> code;
    uint c;
    while (reader >> std::hex >> c) {
        code.push_back(std::uint8_t(c));
    }

    // std::uint8_t code[] = {0x1, 0xD8, 0xF4}; // add    eax, ebx
    // std::uint8_t code[] = {
    //     0x53, // 0x0
    //     0x31, 0xD2, //0x1
    //     0xB9, 0x1, 0, 0, 0, // 0x3
    //     0x31, 0xC0, // 0x8
    //     0xEB, 0x6,
    //     // 0x8D, 0x74, 0x26, 0,
    //     0x89, 0xD9,
    //     0x8D, 0x1C, 0x2,
    //     0xA8, 0x1,
    //     0xF, 0x44, 0xD3,
    //     0x8D, 0x1C, 0x8,
    //     0x89, 0xC8,
    //     0x81, 0xF9, 0xFF, 0x8, 0x3D, 0, ////
    //     0x7E, 0xE9,
    //     0x89, 0xD0,
    //     0x5B, 0xC3,
    //     0xF4
    // };

    // std::cout << "Code size: " << sizeof(code) << std::endl;

    if (code.empty()) {
        return -1;
    }

    Executor ex(std::span(code.data(), code.size()));
    try {
        ex.execute(true);
    } catch (const CPU_HALT& ch) {
        std::cout << ch.x << std::endl;
    } catch (const std::logic_error& de) {
        std::cout << de.what() << '\n';
    }
}