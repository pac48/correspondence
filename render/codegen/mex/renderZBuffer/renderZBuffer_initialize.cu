//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// renderZBuffer_initialize.cu
//
// Code generation for function 'renderZBuffer_initialize'
//

// Include files
#include "renderZBuffer_initialize.h"
#include "_coder_renderZBuffer_mex.h"
#include "renderZBuffer_data.h"
#include "rt_nonfinite.h"

// Function Definitions
void renderZBuffer_initialize()
{
  mex_InitInfAndNan();
  mexFunctionCreateRootTLS();
  emlrtClearAllocCountR2012b(emlrtRootTLSGlobal, false, 0U, nullptr);
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  emlrtLicenseCheckR2012b(emlrtRootTLSGlobal,
                          (const char_T *)"distrib_computing_toolbox", 2);
  emlrtFirstTimeR2012b(emlrtRootTLSGlobal);
  cudaGetLastError();
}

// End of code generation (renderZBuffer_initialize.cu)
