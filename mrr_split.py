mrr = int(input('>'), 16)
print(hex((mrr & 0xC0) >> 6), hex((mrr & 0x38) >> 3), hex(mrr & 0x7))

# template <std::uint8_t Opcode>
# struct isRegDest {
#     static constexpr bool value = Opcode & 2;
# };

# print("is reg dest? %s" % str(0xAF & 2))

# def make_mrr(mod, reg, rm):
#     return (mod << 6) | (reg << 3) | rm

# print(hex(make_mrr(3, 1, 0)))