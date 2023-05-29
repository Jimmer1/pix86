#ifndef GENERIC_REFERENCE_HH
#define GENERIC_REFERENCE_HH

#include "util.hh"

template <typename Parent, typename Child>
class GenericRegisterReference {
private:
    Parent* parent_;
    Child child_;
    void(*destructor_)(Parent*, Child);
public:
    GenericRegisterReference() : parent_(nullptr), child_(Child{}), destructor_(nullptr) {}

    GenericRegisterReference(Parent* parent, Child(*constructor)(Parent), void(*destructor)(Parent*, Child))
        : parent_(parent), child_(constructor(*parent)), destructor_(destructor) {}

    ~GenericRegisterReference() {
        if (parent_ && destructor_)
            destructor_(parent_, child_);
    }

    // Debug helper
    const Parent* parent() const {
        return parent_;
    }

    operator const Child&() const {
        return child_;
    }

    operator Child&() {
        return child_;
    }
};

void grh_set_low_byte(std::uint32_t*, std::uint8_t);
void grh_set_low_word(std::uint32_t*, std::uint16_t);
void grh_set_low_word_high_byte(std::uint32_t*, std::uint8_t);
void grh_null_setter(std::uint32_t*, std::uint32_t);
std::uint32_t null_getter(std::uint32_t);

template <typename Child>
class GenericMemoryReference {
private:
    std::uint8_t* parent_{nullptr};
    Child child_{};
public:

    GenericMemoryReference() : parent_(nullptr), child_(Child{}) {}

    GenericMemoryReference(std::uint8_t* parent) : parent_(parent), child_(mread<Child>(parent)) {}
    
    ~GenericMemoryReference() {
        if (parent_)
            mwrite(parent_, child_);
    }

    operator const Child&() const {
        return child_;
    }

    operator Child&() {
        return child_;
    }
};

#endif