//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// predict.h
//
// Code generation for function 'predict'
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

// Type Declarations
class efficientDetD0_coco0_0;

namespace coder {
struct k_dlarray;

}

// Function Declarations
namespace coder {
void dlnetwork_predict(
    efficientDetD0_coco0_0 *obj, const k_dlarray *varargin_1,
    real32_T varargout_1_Data[12960], real32_T varargout_2_Data[576],
    real32_T varargout_3_Data[51840], real32_T varargout_4_Data[2304],
    real32_T varargout_5_Data[207360], real32_T varargout_6_Data[9216],
    real32_T varargout_7_Data[829440], real32_T varargout_8_Data[36864],
    real32_T varargout_9_Data[3317760], real32_T varargout_10_Data[147456]);

}

// End of code generation (predict.h)
