#include "memory.hh"

#include <cassert>

void test_memory_bool_operator() {
    bool t = !bool(Memory()) && bool(Memory(1));
    assert(t);
}

void test_memory_index_operator() {
    auto m = Memory(8);
    m[4] = 0xFF;
    const bool t = m[4] == 0xFF;
    assert(t);
}

void test_memory_const_index_operator() {
    const auto m = Memory(8);
    const bool t = m[4] == 0;
    assert(t);
}

void test_memory_at() {
    auto mem = Memory(8);
    mem.at(4) = 0xFF;
    bool t = mem.at(4) == 0xFF;
    bool t2 = false;
    try {
        [[maybe_unused]] auto _ = mem.at(8);
    } catch (const std::exception& ex) {
        t2 = true;
    }
    t = t && t2;
    assert(t);
}

void test_memory_const_at() {
    const auto m2 = Memory(8);
    bool t = m2.at(4) == 0;
    bool t2 = false;
    try {
        [[maybe_unused]] auto _ = m2.at(8);
    } catch (const std::exception& ex) {
        t2 = true;
    }
    t = t && t2;
    assert(t);
}

void test_memory_size() {
    auto m = Memory(8);
    const bool t = m.size() == 8;
    assert(t);
}

void test_memory_data() {
    auto m = Memory(8);
    const bool t = m.data() == &m[0];
    assert(t);
}

void test_memory_begin() {
    auto m = Memory(8);
    const bool t = m.begin() == &m[0];
    assert(t);
}

void test_memory_end() {
    auto m = Memory(8);
    const bool t = m.end() == &m[m.size()];
    assert(t);
}

void test_memory() {
    test_memory_bool_operator();
    test_memory_index_operator();
    test_memory_const_index_operator();
    test_memory_at();
    test_memory_const_at();
    test_memory_size();
    test_memory_data();
    test_memory_begin();
    test_memory_end();

    std::cout << "All memory tests passed!" << std::endl;
}