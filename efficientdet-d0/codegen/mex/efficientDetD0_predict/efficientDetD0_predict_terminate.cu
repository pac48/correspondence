//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// efficientDetD0_predict_terminate.cu
//
// Code generation for function 'efficientDetD0_predict_terminate'
//

// Include files
#include "efficientDetD0_predict_terminate.h"
#include "_coder_efficientDetD0_predict_mex.h"
#include "efficientDetD0_predict.h"
#include "efficientDetD0_predict_data.h"
#include "rt_nonfinite.h"

// Function Definitions
void efficientDetD0_predict_atexit()
{
  mexFunctionCreateRootTLS();
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  efficientDetD0_predict_free();
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
  emlrtExitTimeCleanup(&emlrtContextGlobal);
  cudaFree(*xq_gpu_clone);
  cudaFree(*b_xq_gpu_clone);
  cudaFree(*c_xq_gpu_clone);
  cudaFree(*d_xq_gpu_clone);
}

void efficientDetD0_predict_terminate()
{
  cudaError_t errCode;
  errCode = cudaGetLastError();
  if (errCode != cudaSuccess) {
    emlrtThinCUDAError(static_cast<uint32_T>(errCode),
                       (char_T *)cudaGetErrorName(errCode),
                       (char_T *)cudaGetErrorString(errCode),
                       (char_T *)"SafeBuild", emlrtRootTLSGlobal);
  }
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

// End of code generation (efficientDetD0_predict_terminate.cu)
