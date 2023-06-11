mrr = int(input('>'), 16)
print(hex((mrr & 0xC0) >> 6), hex((mrr & 0x38) >> 3), hex(mrr & 0x7))

opcode = 0x89
#print('dir is %s' % !(0x89 & 2)

# print("is reg dest? %s" % str(0xAF & 2))

def make_mrr(mod, reg, rm):
    return (mod << 6) | (reg << 3) | rm

mod, reg, rm = int(input('>')), int(input('>')), int(input('>'))

print(hex(make_mrr(mod, reg, rm)))
