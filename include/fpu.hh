#ifndef FPU_HH
#define FPU_HH

#include "flags.hh"
#include "types.hh"

#include <array>
#include <tuple>

class FPU_Registers {
private:
    std::array<long double, 8> data_;
    std::array<unsigned int, 8> tags_;
public:
    unsigned int top_ = 0;
    void push(const long double);
    void pop();
    long double& st(const index_t);
    unsigned int& tag(const index_t);
};

class FPU {
public:
    FPU_Registers V;
private:
    unsigned int c3 = 0, c2 = 0, c1 = 0, c0 = 0;
    int rc = 0;
    Flags& flags;
public:

    auto c_vals() const {
        return std::tuple{c0, c1, c2, c3};
    }

    FPU(Flags& flags_) : flags(flags_) {}

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
    void fcom(float80_t);
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
    void fld(unsigned int);
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
    void fsti(unsigned int);
    void fstp(unsigned int);
    void fsub(unsigned int);
    void fsub_r(unsigned int);
    void fsubp(unsigned int);
    void fsubr(unsigned int);
    void fsubr_r(unsigned int);
    void fsubrp(unsigned int);
    void fxam();
    void fxch(unsigned int);
    void fxtract();
    void fyl2x();
    void fyl2xp1();
};

#endif