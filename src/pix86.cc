#include "executor.hh"

#include <cstdint>
#include <fstream>
#include <iostream>
#include <vector>
#include <span>

// LCOV_EXCL_START
int main([[maybe_unused]] int argc, char** argv) {
    if (argc > 1) {
        [[maybe_unused]] const auto filename = argv[1];
    }

    std::ifstream reader(argv[1]);
    std::vector<std::uint8_t> code;
    uint c;
    while (reader >> std::hex >> c) {
        code.push_back(std::uint8_t(c));
    }

    if (code.empty()) {
        return -1;
    }

    Executor ex(std::span(code.data(), code.size()));
    try {
        ex.execute(true, false);
    } catch (const CPU_HALT& ch) {
        std::cout << ch.x << std::endl;
    } catch (const std::logic_error& de) {
        std::cout << de.what() << '\n';
    }
}
// LCOV_EXCL_STOP