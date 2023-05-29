#include <cstddef>
#include <cstdint>
#include <type_traits>
#include <functional>

class Xmm {
private:
    union {
        std::uint64_t u64[2];
        std::uint32_t u32[4];
        std::uint16_t u16[8];
        std::uint8_t u8[16];
        double f64[2];
        float f32[4];
    } data_;

public:
    template <typename I>
    [[nodiscard]] I& access(std::size_t index) {
        if constexpr (std::is_same_v<I, std::uint8_t>) {
            return data_.u8[index];
        } else if constexpr (std::is_same_v<I, std::uint16_t>) {
            return data_.u16[index];
        } else if constexpr (std::is_same_v<I, std::uint32_t>) {
            return data_.u32[index];
        } else if constexpr (std::is_same_v<I, float>) {
            return data_.f32[index];
        } else if constexpr (std::is_same_v<I, double>) {
            return data_.f64[index];
        } else {
            throw -1;
        }
    }

    template <typename I>
    [[nodiscard]] constexpr const I& access(std::size_t index) const {
        if constexpr (std::is_same_v<I, std::uint8_t>) {
            return data_.u8[index];
        } else if constexpr (std::is_same_v<I, std::uint16_t>) {
            return data_.u16[index];
        } else if constexpr (std::is_same_v<I, std::uint32_t>) {
            return data_.u32[index];
        } else if constexpr (std::is_same_v<I, float>) {
            return data_.f32[index];
        } else if constexpr (std::is_same_v<I, double>) {
            return data_.f64[index];
        } else {
            throw -1;
        }
    }

    template <typename I>
    static constexpr std::size_t elements  = 16 / sizeof(I);
};

class SSE {
public:
    Xmm reg[8];

    template <typename I, typename Func>
    void xmm_op(Xmm& lhs, const Xmm& rhs, Func func) {
        for (std::size_t i = 0u; i < lhs.elements<I>; ++i) {
            lhs.access<I>(i) = func(lhs.access<I>(i), rhs.access<I>(i));
        }
    }

    void paddb(Xmm& lhs, const Xmm& rhs) {
        xmm_op<std::uint8_t>(lhs, rhs, std::plus<std::uint8_t>{});
    }

    void paddw(Xmm& lhs, const Xmm& rhs) {
        xmm_op<std::uint16_t>(lhs, rhs, std::plus<std::uint16_t>{});
    }

    void paddd(Xmm& lhs, const Xmm& rhs) {
        xmm_op<std::uint32_t>(lhs, rhs, std::plus<std::uint32_t>{});
    }

    void paddq(Xmm& lhs, const Xmm& rhs) {
        xmm_op<std::uint64_t>(lhs, rhs, std::plus<std::uint64_t>{});
    }


};

