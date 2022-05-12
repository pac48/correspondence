//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// _coder_renderZBuffer_mex.cu
//
// Code generation for function '_coder_renderZBuffer_mex'
//

// Include files
#include "_coder_renderZBuffer_mex.h"
#include "_coder_renderZBuffer_api.h"
#include "renderZBuffer_data.h"
#include "renderZBuffer_initialize.h"
#include "renderZBuffer_terminate.h"
#include "rt_nonfinite.h"

// Function Definitions
void mexFunction(int32_T nlhs, mxArray *plhs[], int32_T nrhs,
                 const mxArray *prhs[])
{
  mexAtExit(&renderZBuffer_atexit);
  // Module initialization.
  renderZBuffer_initialize();
  // Dispatch the entry-point.
  unsafe_renderZBuffer_mexFunction(nlhs, plhs, nrhs, prhs);
  // Module termination.
  renderZBuffer_terminate();
}

emlrtCTX mexFunctionCreateRootTLS()
{
  emlrtCreateRootTLSR2021a(&emlrtRootTLSGlobal, &emlrtContextGlobal, nullptr, 1,
                           nullptr);
  return emlrtRootTLSGlobal;
}

void unsafe_renderZBuffer_mexFunction(int32_T nlhs, mxArray *plhs[2],
                                      int32_T nrhs, const mxArray *prhs[7])
{
  const mxArray *outputs[2];
  int32_T b_nlhs;
  // Check for proper number of arguments.
  if (nrhs != 7) {
    emlrtErrMsgIdAndTxt(emlrtRootTLSGlobal, "EMLRT:runTime:WrongNumberOfInputs",
                        5, 12, 7, 4, 13, "renderZBuffer");
  }
  if (nlhs > 2) {
    emlrtErrMsgIdAndTxt(emlrtRootTLSGlobal,
                        "EMLRT:runTime:TooManyOutputArguments", 3, 4, 13,
                        "renderZBuffer");
  }
  // Call the function.
  renderZBuffer_api(prhs, nlhs, outputs);
  // Copy over outputs to the caller.
  if (nlhs < 1) {
    b_nlhs = 1;
  } else {
    b_nlhs = nlhs;
  }
  emlrtReturnArrays(b_nlhs, &plhs[0], &outputs[0]);
}

// End of code generation (_coder_renderZBuffer_mex.cu)
