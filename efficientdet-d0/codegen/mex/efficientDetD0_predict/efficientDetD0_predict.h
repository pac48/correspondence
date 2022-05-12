//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// efficientDetD0_predict.h
//
// Code generation for function 'efficientDetD0_predict'
//

#pragma once

// Include files
#include "efficientDetD0_predict_types.h"
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
void efficientDetD0_predict(efficientDetD0_predictStackData *SD,
                            const real32_T image[786432], cell_4 *out);

void efficientDetD0_predict_free();

void efficientDetD0_predict_init();

// End of code generation (efficientDetD0_predict.h)
