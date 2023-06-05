#include "decoder.hh"
#include "memory.hh"

#include <algorithm>
#include <cstdint>

// std::tuple<Operands, unsigned int> decode_modregrm(std::uint8_t mrr, Memory& mem, unsigned long int pc, bool is8bit) {

void scratchpad() {
    std::uint8_t code[] = {0x8D, 0xF9, 0x1F};
    Memory mem(16);
    std::copy(std::begin(code), std::end(code), mem.begin());
    const auto [ops, skip] = decode_modregrm(code[1], mem, 0, false);
    std::cout << ops << std::endl;
}

int main() {
    scratchpad();
}