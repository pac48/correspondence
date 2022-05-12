//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// efficientDetD0_predict_data.h
//
// Code generation for function 'efficientDetD0_predict_data'
//

#pragma once

// Include files
#include "rtwtypes.h"
#include "emlrt.h"
#include "mex.h"
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>

// Custom Header Code

#ifdef __CUDA_ARCH__
#undef printf
#endif

// Variable Declarations
extern emlrtCTX emlrtRootTLSGlobal;
extern emlrtContext emlrtContextGlobal;
extern int8_T (*xq_gpu_clone)[8];
extern int8_T (*b_xq_gpu_clone)[16];
extern int8_T (*c_xq_gpu_clone)[32];
extern int8_T (*d_xq_gpu_clone)[64];

// End of code generation (efficientDetD0_predict_data.h)
