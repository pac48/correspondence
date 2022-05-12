//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// efficientDetD0_predict_types.h
//
// Code generation for function 'efficientDetD0_predict'
//

#pragma once

// Include files
#include "rtwtypes.h"
#include "emlrt.h"

// Custom Header Code

#ifdef __CUDA_ARCH__
#undef printf
#endif

// Type Definitions
namespace coder {
struct dlarray {
  real32_T Data[12960];
};

struct b_dlarray {
  real32_T Data[576];
};

struct c_dlarray {
  real32_T Data[51840];
};

struct d_dlarray {
  real32_T Data[2304];
};

struct e_dlarray {
  real32_T Data[207360];
};

struct f_dlarray {
  real32_T Data[9216];
};

struct g_dlarray {
  real32_T Data[829440];
};

struct h_dlarray {
  real32_T Data[36864];
};

struct i_dlarray {
  real32_T Data[3317760];
};

struct j_dlarray {
  real32_T Data[147456];
};

} // namespace coder
struct cell_4 {
  coder::dlarray f1;
  coder::b_dlarray f2;
  coder::c_dlarray f3;
  coder::d_dlarray f4;
  coder::e_dlarray f5;
  coder::f_dlarray f6;
  coder::g_dlarray f7;
  coder::h_dlarray f8;
  coder::i_dlarray f9;
  coder::j_dlarray f10;
};

namespace coder {
struct k_dlarray {
  real32_T Data[786432];
};

} // namespace coder
struct b_efficientDetD0_predict {
  coder::k_dlarray expl_temp;
};

struct efficientDetD0_predict_api {
  cell_4 out;
};

struct efficientDetD0_predictStackData {
  b_efficientDetD0_predict f0;
  efficientDetD0_predict_api f1;
};

// End of code generation (efficientDetD0_predict_types.h)
