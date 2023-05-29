#ifndef FPU_HH
#define FPU_HH

#include <array>
#include <tuple>

#include "flags.hh"

class FPU {
private:
    std::array<long double, 8> v;
    unsigned int top = 7;
    std::array<int, 8> tagvals;
    unsigned int c3 = 0, c2 = 0, c1 = 0, c0 = 0;

    Flags& flags;
protected:
    // Test helper functions.
    // Exempt from testing, I hope there aren't any fucking bugs in this.
    auto& V() noexcept {
        return v;
    }

    auto& get_top() noexcept {
        return top;
    }

    auto& get_tagvals() noexcept {
        return tagvals;
    }

    std::tuple<unsigned int, unsigned int, unsigned int, unsigned int>
    get_c_vals() noexcept {
        return {c3, c2, c1, c0};
    }

public:

    FPU(Flags& flags_) : flags(flags_) {}

    long double& st(unsigned int);
    void stack_pop();
    void stack_push(long double);
    int& tag(unsigned int);
public:
    void f2xm1();
    void fabs();
    void fadd(unsigned int);
    void fadd_r(unsigned int);
    void faddp(unsigned int);
    void fchs();
    void fcmovb(unsigned int);
    void fcmovbe(unsigned int);
    void fcmove(unsigned int);
    void fcmovnb(unsigned int);
    void fcmovnbe(unsigned int);
    void fcmovne(unsigned int);
    void fcmovnu(unsigned int);
    void fcmovu(unsigned int);
    void fcom(unsigned int);
    void fcomp(unsigned int);
    void fcos();
    void fdecstp();
    void fdiv(unsigned int);
    void fdiv_r(unsigned int);
    void fdivp(unsigned int);
    void fdivr(unsigned int);
    void fdivr_r(unsigned int);
    void fdivrp(unsigned int);
    void ffree(unsigned int);
    void fincstp();
    void fld(long double);
    void fld1();
    void fldl2e();
    void fldl2t();
    void fldlg2();
    void fldln2();
    void fldpi();
    void fldz();
    void fmul(unsigned int);
    void fmul_r(unsigned int);
    void fmulp(unsigned int);
    void fnop();
    void fpatan();
    void fptan();
    void fprem();
    void fprem1();
    void frndint();
    void fscale();
    void fsin();
    void fsincos();
    void fsqrt();
    void fst(long double);
    void fsti(unsigned int);
    void fstp(unsigned int);
    void fsub(unsigned int);
    void fsub_r(unsigned int);
    void fsubp(unsigned int);
    void fsubr(unsigned int);
    void fsubr_r(unsigned int);
    void fsubrp(unsigned int);
    void fxam();
    void fxch(long double&);
    void fxtract();
    void fyl2x();
    void fyl2xp1();
};

#endif