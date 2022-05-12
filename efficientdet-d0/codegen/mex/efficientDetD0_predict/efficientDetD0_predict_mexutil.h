//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// efficientDetD0_predict_mexutil.h
//
// Code generation for function 'efficientDetD0_predict_mexutil'
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

// Function Declarations
void checkRunTimeError(const char_T *errMsg, const char_T *file, uint32_T line);

emlrtRTEInfo createEmlrtInfoStruct(const char_T *file, uint32_T line);

// End of code generation (efficientDetD0_predict_mexutil.h)
