/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_getQuadTree_mex.c
 *
 * Code generation for function '_coder_getQuadTree_mex'
 *
 */

/* Include files */
#include "_coder_getQuadTree_mex.h"
#include "_coder_getQuadTree_api.h"
#include "getQuadTree_data.h"
#include "getQuadTree_initialize.h"
#include "getQuadTree_terminate.h"
#include "getQuadTree_types.h"
#include "rt_nonfinite.h"

/* Function Definitions */
void getQuadTree_mexFunction(getQuadTreeStackData *SD, int32_T nlhs,
                             mxArray *plhs[2], int32_T nrhs,
                             const mxArray *prhs[1])
{
  emlrtStack st = {
      NULL, /* site */
      NULL, /* tls */
      NULL  /* prev */
  };
  const mxArray *outputs[2];
  int32_T b_nlhs;
  st.tls = emlrtRootTLSGlobal;
  /* Check for proper number of arguments. */
  if (nrhs != 1) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:WrongNumberOfInputs", 5, 12, 1, 4,
                        11, "getQuadTree");
  }
  if (nlhs > 2) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:TooManyOutputArguments", 3, 4, 11,
                        "getQuadTree");
  }
  /* Call the function. */
  getQuadTree_api(SD, prhs[0], nlhs, outputs);
  /* Copy over outputs to the caller. */
  if (nlhs < 1) {
    b_nlhs = 1;
  } else {
    b_nlhs = nlhs;
  }
  emlrtReturnArrays(b_nlhs, &plhs[0], &outputs[0]);
}

void mexFunction(int32_T nlhs, mxArray *plhs[], int32_T nrhs,
                 const mxArray *prhs[])
{
  getQuadTreeStackData *getQuadTreeStackDataGlobal = NULL;
  getQuadTreeStackDataGlobal = (getQuadTreeStackData *)emlrtMxCalloc(
      (size_t)1, (size_t)1U * sizeof(getQuadTreeStackData));
  mexAtExit(&getQuadTree_atexit);
  /* Module initialization. */
  getQuadTree_initialize();
  /* Dispatch the entry-point. */
  getQuadTree_mexFunction(getQuadTreeStackDataGlobal, nlhs, plhs, nrhs, prhs);
  /* Module termination. */
  getQuadTree_terminate();
  emlrtMxFree(getQuadTreeStackDataGlobal);
}

emlrtCTX mexFunctionCreateRootTLS(void)
{
  emlrtCreateRootTLSR2021a(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1,
                           NULL);
  return emlrtRootTLSGlobal;
}

/* End of code generation (_coder_getQuadTree_mex.c) */
