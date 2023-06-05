#include "fpu.hh"
#include "types.hh"

#include <array>
#include <cmath>
#include <numbers>

void FPU_Registers::push(const long double value) {
    data_.at(top_) = value;
    ++top_; 
}

void FPU_Registers::pop() {
    --top_;
}

long double& FPU_Registers::st(const index_t index) {
    return data_.at(top_-1 - index);
}

unsigned int& FPU_Registers::tag(const index_t index) {
    return tags_.at(top_-1 - index);
}


void FPU::f2xm1() {
    V.st(0) = std::exp2(V.st(0)) - 1;
}

void FPU::fabs() {
    V.st(0) = std::abs(V.st(0));
}

void FPU::fadd(unsigned int i) {
    V.st(0) += V.st(i);
}

void FPU::fadd_r(unsigned int i) {
    V.st(i) += V.st(0);
}

void FPU::faddp(unsigned int i) {
    V.st(i) += V.st(0);
    V.pop();
}

void FPU::fchs() {
    V.st(0) = -V.st(0);
}

void FPU::fcmovb(unsigned int i) {
    if (flags.carry) {
        V.st(0) = V.st(i);
    }
}

void FPU::fcmovbe(unsigned int i) {
    if (flags.carry || flags.zero) {
        V.st(0) = V.st(i);
    }
}

void FPU::fcmove(unsigned int i) {
    if (flags.zero) {
        V.st(0) = V.st(i);
    }
}

void FPU::fcmovnb(unsigned int i) {
    if (! flags.carry) {
        V.st(0) = V.st(i);
    }
}

void FPU::fcmovnbe(unsigned int i) {
    if (!flags.carry && !flags.zero) {
        V.st(0) = V.st(i);
    }
}

void FPU::fcmovne(unsigned int i) {
    if (! flags.zero) {
        V.st(0) = V.st(i);
    }
}

void FPU::fcmovnu(unsigned int i) {
    if (! flags.parity) {
        V.st(0) = V.st(i);
    }
}

void FPU::fcmovu(unsigned int i) {
    if (flags.parity) {
        V.st(0) = V.st(i);
    }
}

void FPU::fcom(const float80_t value) {
    if (V.st(0) > value) {
        c3 = c2 = c0 = 0;
    } else if (V.st(0) < value) {
        c3 = c2 = 0;
        c0 = 1;
    } else if (V.st(0) == value) {
        c3 = 1;
        c2 = c0 = 0;
    } else {
        c3 = c2 = c0 = 1;
    }
}

void FPU::fcom(unsigned int i) {
    fcom(V.st(i));
}

void FPU::fcomp(unsigned int i) {
    fcom(i);
    V.pop();
}

void FPU::fcos() {
    V.st(0) = std::cos(V.st(0));
}

void FPU::fdecstp() {
    if (V.top_ == 0) {
        V.top_ = 7;
    } else {
        --V.top_;
    }
}

void FPU::fdiv(unsigned int i) {
    V.st(0) /= V.st(i);
}

void FPU::fdiv_r(unsigned int i) {
    V.st(i) /= V.st(0);
}

void FPU::fdivp(unsigned int i) {
    V.st(i) /= V.st(0);
    V.pop();
}

void FPU::fdivr(unsigned int i) {
    V.st(0) = V.st(i) / V.st(0);
}

void FPU::fdivr_r(unsigned int i) {
    V.st(i) = V.st(0) / V.st(i);
}

void FPU::fdivrp(unsigned int i) {
    V.st(i) = V.st(0) / V.st(i);
    V.pop();
}

void FPU::ffree(unsigned int i) {
    V.tag(i) = 3;
}

void FPU::fincstp() {
    if (V.top_ == 7) {
        V.top_ = 0;
    } else {
        ++V.top_;
    }
}

void FPU::fld(const float80_t value) {
    V.push(value);
}

void FPU::fld(unsigned int i) {
    V.push(V.st(i));
}

void FPU::fld1() {
    V.push(1.0L);
}

void FPU::fldl2e() {
    V.push(std::log2(std::numbers::pi));
}

void FPU::fldl2t() {
    V.push(std::log2(10.0L));
}

void FPU::fldlg2() {
    V.push(std::log10(2.0L));
}

void FPU::fldln2() {
    V.push(std::log(2.0L));
}

void FPU::fldpi() {
    V.push(std::numbers::pi);
}

void FPU::fldz() {
    V.push(0.0L);
}

void FPU::fmul(unsigned int i) {
    V.st(0) *= V.st(i);
}

void FPU::fmul_r(unsigned int i) {
    V.st(i) *= V.st(0);
}

void FPU::fmulp(unsigned int i) {
    V.st(i) *= V.st(0);
    V.pop();
}

void FPU::fnop() {
    //
}

void FPU::fpatan() {
    V.st(1) = std::atan(V.st(1) / V.st(0));
    V.pop();
}

void FPU::fptan() {
    V.st(0) = std::tan(V.st(0));
    V.push(1.0L);
}

void FPU::fprem() {
    V.st(0) = std::fmod(V.st(0), V.st(1));
}

void FPU::fprem1() {
    V.st(0) = std::fmod(V.st(0), V.st(1));
}

void FPU::frndint() {
    V.st(0) = std::round(V.st(0));
}

void FPU::fscale() {
    V.st(0) = V.st(0) * std::exp2(std::trunc(V.st(1)));
}

void FPU::fsin() {
    V.st(0) = std::sin(V.st(0));
}

void FPU::fsincos() {
    auto tmp = std::cos(V.st(0));
    V.st(0) = std::sin(V.st(0));
    V.push(tmp);
}

void FPU::fsqrt() {
    V.st(0) = std::sqrt(V.st(0));
}

void FPU::fsti(unsigned int i) {
    V.st(i) = V.st(0);
}

void FPU::fstp(unsigned int i) {
    V.st(i) = V.st(0);
    V.pop();
}

void FPU::fsub(unsigned int i) {
    V.st(0) -= V.st(i);
}

void FPU::fsub_r(unsigned int i) {
    V.st(i) -= V.st(0);
}

void FPU::fsubp(unsigned int i) {
    V.st(i) -= V.st(0);
    V.pop();
}

void FPU::fsubr(unsigned int i) {
    V.st(0) = V.st(i) - V.st(0);
}

void FPU::fsubr_r(unsigned int i) {
    V.st(i) = V.st(0) - V.st(i);
}

void FPU::fsubrp(unsigned int i) {
    V.st(i) = V.st(0) - V.st(i);
    V.pop();
}

void FPU::fxam() {
    c1 = std::signbit(V.st(0));
    switch (std::fpclassify(V.st(0))) {
        case FP_INFINITE: {
            c3 = 0;
            c2 = c0 = 1;
        } break;

        case FP_ZERO: {
            c2 = c0 = 0;
            c3 = 1;
        } break;

        case FP_SUBNORMAL: {
            c3 = c2 = 1;
            c0 = 0;
        } break;

        case FP_NAN: {
            c3 = c2 = 0;
            c0 = 1;
        } break;

        case FP_NORMAL: {
            if (V.tag(0) == 3) {
                c3 = 1;
                c2 = c0 = 0;
            } else {
                c2 = 1;
                c3 = c0 = 0;
            }
        } break;

        default: {
            c3 = c2 = c0 = 0;
        } break;
    }
}

void FPU::fxch(unsigned int i) {
    std::swap(V.st(0), V.st(i));
}

void FPU::fxtract() {
    int exp;
    long double mant = std::frexp(V.st(0), &exp);
    V.st(0) = mant;
    V.push(static_cast<long double>(exp));
}

void FPU::fyl2x() {
    V.st(1) = V.st(1) * std::log2(V.st(0));
    V.pop();
}

void FPU::fyl2xp1() {
    V.st(1) = V.st(1) * std::log2(V.st(0) + 1.0L);
    V.pop();
}