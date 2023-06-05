#include <algorithm>
#include <cstdint>
#include <functional>
#include <limits>
#include <type_traits>

class Mmx {
public:
    union {
        std::uint32_t u32[2];
        std::uint16_t u16[4];
        std::uint8_t u8[8];
    } data_;

    template <typename I>
    [[nodiscard]] constexpr I& access(std::size_t index) {
        if constexpr (std::is_same_v<I, std::uint8_t>) {
            return data_.u8[index];
        } else if constexpr (std::is_same_v<I, std::uint16_t>) {
            return data_.u16[index];
        } else if constexpr (std::is_same_v<I, std::uint32_t>) {
            return data_.u32[index];
        }
    }

    template <typename I>
    [[nodiscard]] constexpr const auto& access(std::size_t index) const {
        if constexpr (std::is_same_v<I, std::uint8_t>) {
            return data_.u8[index];
        } else if constexpr (std::is_same_v<I, std::uint16_t>) {
            return data_.u16[index];
        } else if constexpr (std::is_same_v<I, std::uint32_t>) {
            return data_.u32[index];
        }
    }

    template <typename I>
    static constexpr std::size_t elements  = 16 / sizeof(I);
};

class MMX {
private:
    Mmx mmx[8];
public:

    template <typename I, typename Func>
    void mmx_op(Mmx& lhs, const Mmx& rhs, Func func) {
        for (std::size_t i = 0u; i < lhs.elements<I>; ++i) {
            lhs.access<I>(i) = func(lhs.access<I>(i), rhs.access<I>(i));
        } 
    }

    void paddb(Mmx& lhs, const Mmx& rhs) {
        mmx_op<std::uint8_t>(lhs, rhs, std::plus{});
    }

    void paddw(Mmx& lhs, const Mmx& rhs) {
        mmx_op<std::uint16_t>(lhs, rhs, std::plus<std::uint16_t>{});
    }

    void paddd(Mmx& lhs, const Mmx& rhs) {
        mmx_op<std::uint32_t>(lhs, rhs, std::plus<std::uint32_t>{});
    }


};