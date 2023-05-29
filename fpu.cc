#include "fpu.hh"

#include <array>
#include <cmath>
#include <numbers>

long double& FPU::st(unsigned int i) {
    return v.at(top - i);
}

void FPU::stack_pop() {
    ++top;
}

void FPU::stack_push(long double x) {
    v.at(top--) = x;
}

int& FPU::tag(unsigned int i) {
    return tagvals[top - i];
}

void FPU::f2xm1() {
    st(0) = std::exp2(st(0)) - 1;
}

void FPU::fabs() {
    st(0) = std::abs(st(0));
}

void FPU::fadd(unsigned int i) {
    st(0) += st(i);
}

void FPU::fadd_r(unsigned int i) {
    st(i) += st(0);
}

void FPU::faddp(unsigned int i) {
    st(i) += st(0);
    stack_pop();
}

void FPU::fchs() {
    st(0) = -st(0);
}

void FPU::fcmovb(unsigned int i) {
    if (flags.carry) {
        st(0) = st(i);
    }
}

void FPU::fcmovbe(unsigned int i) {
    if (flags.carry || flags.zero) {
        st(0) = st(i);
    }
}

void FPU::fcmove(unsigned int i) {
    if (flags.zero) {
        st(0) = st(i);
    }
}

void FPU::fcmovnb(unsigned int i) {
    if (! flags.carry) {
        st(0) = st(i);
    }
}

void FPU::fcmovnbe(unsigned int i) {
    if (!flags.carry && !flags.zero) {
        st(0) = st(i);
    }
}

void FPU::fcmovne(unsigned int i) {
    if (! flags.zero) {
        st(0) = st(i);
    }
}

void FPU::fcmovnu(unsigned int i) {
    if (! flags.parity) {
        st(0) = st(i);
    }
}

void FPU::fcmovu(unsigned int i) {
    if (flags.parity) {
        st(0) = st(i);
    }
}

void FPU::fcom(unsigned int i) {
    if (st(0) > st(i)) {
        c3 = c2 = c0 = 0;
    } else if (st(0) < st(i)) {
        c3 = c2 = 0;
        c0 = 1;
    } else if (st(0) == st(i)) {
        c3 = 1;
        c2 = c0 = 0;
    } else {
        c3 = c2 = c0 = 1;
    }
}

void FPU::fcomp(unsigned int i) {
    fcom(i);
    stack_pop();
}

void FPU::fcos() {
    st(0) = std::cos(st(0));
}

void FPU::fdecstp() {
    if (top == 0) {
        top = 7;
    } else {
        --top;
    }
}

void FPU::fdiv(unsigned int i) {
    st(0) /= st(i);
}

void FPU::fdiv_r(unsigned int i) {
    st(i) /= st(0);
}

void FPU::fdivp(unsigned int i) {
    st(i) /= st(0);
    stack_pop();
}

void FPU::fdivr(unsigned int i) {
    st(0) = st(i) / st(0);
}

void FPU::fdivr_r(unsigned int i) {
    st(i) = st(0) / st(i);
}

void FPU::fdivrp(unsigned int i) {
    st(i) = st(0) / st(i);
    stack_pop();
}

void FPU::ffree(unsigned int i) {
    tag(i) = 3;
}

void FPU::fincstp() {
    if (top == 7) {
        top = 0;
    } else {
        ++top;
    }
}

void FPU::fld(long double x) {
    stack_push(x);
}

void FPU::fld1() {
    stack_push(1.0L);
}

void FPU::fldl2e() {
    stack_push(std::log2(std::numbers::pi));
}

void FPU::fldl2t() {
    stack_push(std::log2(10.0L));
}

void FPU::fldlg2() {
    stack_push(std::log10(2.0L));
}

void FPU::fldln2() {
    stack_push(std::log(2.0L));
}

void FPU::fldpi() {
    stack_push(std::numbers::pi);
}

void FPU::fldz() {
    stack_push(0.0L);
}

void FPU::fmul(unsigned int i) {
    st(0) *= st(i);
}

void FPU::fmul_r(unsigned int i) {
    st(i) *= st(0);
}

void FPU::fmulp(unsigned int i) {
    st(i) *= st(0);
    stack_pop();
}

void FPU::fnop() {
    //
}

void FPU::fpatan() {
    st(1) = std::atan(st(1) / st(0));
    stack_pop();
}

void FPU::fptan() {
    st(0) = std::tan(st(0));
    stack_push(1.0L);
}

void FPU::fprem() {
    st(0) = std::fmod(st(0), st(1));
}

void FPU::fprem1() {
    st(0) = std::fmod(st(0), st(1));
}

void FPU::frndint() {
    st(0) = std::round(st(0));
}

void FPU::fscale() {
    st(0) = st(0) * std::exp2(std::trunc(st(1)));
}

void FPU::fsin() {
    st(0) = std::sin(st(0));
}

void FPU::fsincos() {
    auto tmp = std::cos(st(0));
    st(0) = std::sin(st(0));
    stack_push(tmp);
}

void FPU::fsqrt() {
    st(0) = std::sqrt(st(0));
}

void FPU::fsti(unsigned int i) {
    st(i) = st(0);
}

void FPU::fstp(unsigned int i) {
    st(i) = st(0);
    stack_pop();
}

void FPU::fsub(unsigned int i) {
    st(0) -= st(i);
}

void FPU::fsub_r(unsigned int i) {
    st(i) -= st(0);
}

void FPU::fsubp(unsigned int i) {
    st(i) -= st(0);
    stack_pop();
}

void FPU::fsubr(unsigned int i) {
    st(0) = st(i) - st(0);
}

void FPU::fsubr_r(unsigned int i) {
    st(i) = st(0) - st(i);
}

void FPU::fsubrp(unsigned int i) {
    st(i) = st(0) - st(i);
    stack_pop();
}

void FPU::fxam() {
    c1 = std::signbit(st(0));
    switch (std::fpclassify(st(0))) {
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
            if (tag(0) == 3) {
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

void FPU::fxch(long double& sti) {
    std::swap(st(0), sti);
}

void FPU::fxtract() {
    int exp;
    long double mant = std::frexp(st(0), &exp);
    st(0) = mant;
    stack_push(static_cast<long double>(exp));
}

void FPU::fyl2x() {
    st(1) = st(1) * std::log2(st(0));
    stack_pop();
}

void FPU::fyl2xp1() {
    st(1) = st(1) * std::log2(st(0) + 1.0L);
    stack_pop();
}