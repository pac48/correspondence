//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// efficientDetD0_predict_initialize.cu
//
// Code generation for function 'efficientDetD0_predict_initialize'
//

// Include files
#include "efficientDetD0_predict_initialize.h"
#include "_coder_efficientDetD0_predict_mex.h"
#include "efficientDetD0_predict.h"
#include "efficientDetD0_predict_data.h"
#include "rt_nonfinite.h"

// Function Declarations
static void efficientDetD0_predict_once();

// Function Definitions
static void efficientDetD0_predict_once()
{
  mex_InitInfAndNan();
  efficientDetD0_predict_init();
  cudaMalloc(&xq_gpu_clone, sizeof(int8_T[8]));
  cudaMalloc(&b_xq_gpu_clone, sizeof(int8_T[16]));
  cudaMalloc(&c_xq_gpu_clone, sizeof(int8_T[32]));
  cudaMalloc(&d_xq_gpu_clone, sizeof(int8_T[64]));
}

void efficientDetD0_predict_initialize()
{
  mexFunctionCreateRootTLS();
  emlrtClearAllocCountR2012b(emlrtRootTLSGlobal, false, 0U, nullptr);
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  emlrtLicenseCheckR2012b(emlrtRootTLSGlobal,
                          (const char_T *)"distrib_computing_toolbox", 2);
  emlrtLicenseCheckR2012b(emlrtRootTLSGlobal,
                          (const char_T *)"neural_network_toolbox", 2);
  if (emlrtFirstTimeR2012b(emlrtRootTLSGlobal)) {
    efficientDetD0_predict_once();
  }
  cudaGetLastError();
}

// End of code generation (efficientDetD0_predict_initialize.cu)
