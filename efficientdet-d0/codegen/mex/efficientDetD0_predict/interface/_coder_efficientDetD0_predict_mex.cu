//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// _coder_efficientDetD0_predict_mex.cu
//
// Code generation for function '_coder_efficientDetD0_predict_mex'
//

// Include files
#include "_coder_efficientDetD0_predict_mex.h"
#include "_coder_efficientDetD0_predict_api.h"
#include "efficientDetD0_predict_data.h"
#include "efficientDetD0_predict_initialize.h"
#include "efficientDetD0_predict_terminate.h"
#include "efficientDetD0_predict_types.h"
#include "rt_nonfinite.h"

// Function Definitions
void mexFunction(int32_T nlhs, mxArray *plhs[], int32_T nrhs,
                 const mxArray *prhs[])
{
  efficientDetD0_predictStackData *c_efficientDetD0_predictStackDa{nullptr};
  c_efficientDetD0_predictStackDa = new efficientDetD0_predictStackData;
  mexAtExit(&efficientDetD0_predict_atexit);
  // Module initialization.
  efficientDetD0_predict_initialize();
  // Dispatch the entry-point.
  unsafe_efficientDetD0_predict_mexFunction(c_efficientDetD0_predictStackDa,
                                            nlhs, plhs, nrhs, prhs);
  // Module termination.
  efficientDetD0_predict_terminate();
  delete c_efficientDetD0_predictStackDa;
}

emlrtCTX mexFunctionCreateRootTLS()
{
  emlrtCreateRootTLSR2021a(&emlrtRootTLSGlobal, &emlrtContextGlobal, nullptr, 1,
                           nullptr);
  return emlrtRootTLSGlobal;
}

void unsafe_efficientDetD0_predict_mexFunction(
    efficientDetD0_predictStackData *SD, int32_T nlhs, mxArray *plhs[1],
    int32_T nrhs, const mxArray *prhs[2])
{
  const mxArray *outputs[1];
  // Check for proper number of arguments.
  if (nrhs < 2) {
    emlrtErrMsgIdAndTxt(
        emlrtRootTLSGlobal, "EMLRT:runTime:TooFewInputsConstants", 9, 4, 22,
        "efficientDetD0_predict", 4, 22, "efficientDetD0_predict", 4, 22,
        "efficientDetD0_predict");
  }
  if (nrhs != 2) {
    emlrtErrMsgIdAndTxt(emlrtRootTLSGlobal, "EMLRT:runTime:WrongNumberOfInputs",
                        5, 12, 2, 4, 22, "efficientDetD0_predict");
  }
  if (nlhs > 1) {
    emlrtErrMsgIdAndTxt(emlrtRootTLSGlobal,
                        "EMLRT:runTime:TooManyOutputArguments", 3, 4, 22,
                        "efficientDetD0_predict");
  }
  // Call the function.
  b_efficientDetD0_predict_api(SD, prhs, outputs);
  // Copy over outputs to the caller.
  emlrtReturnArrays(1, &plhs[0], &outputs[0]);
}

// End of code generation (_coder_efficientDetD0_predict_mex.cu)
