//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// renderZBuffer.h
//
// Code generation for function 'renderZBuffer'
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
void renderZBuffer(
    const real32_T allVerts2d_data[], const int32_T allVerts2d_size[2],
    const real32_T allVertsCamera_data[], const int32_T allVertsCamera_size[2],
    const real32_T allColor_data[], const int32_T allColor_size[2],
    const real32_T boundingBox_data[], const int32_T boundingBox_size[2],
    const real32_T tree_data[], const int32_T tree_size[2],
    const real32_T idxAll_data[], const int32_T idxAll_size[3],
    const real32_T distances_data[], const int32_T distances_size[2],
    real32_T im[786432], real_T vertInds[262144]);

// End of code generation (renderZBuffer.h)
