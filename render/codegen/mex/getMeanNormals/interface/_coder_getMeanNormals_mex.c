/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_getMeanNormals_mex.c
 *
 * Code generation for function '_coder_getMeanNormals_mex'
 *
 */

/* Include files */
#include "_coder_getMeanNormals_mex.h"
#include "_coder_getMeanNormals_api.h"
#include "getMeanNormals_data.h"
#include "getMeanNormals_initialize.h"
#include "getMeanNormals_terminate.h"
#include "rt_nonfinite.h"

/* Function Definitions */
void getMeanNormals_mexFunction(int32_T nlhs, mxArray *plhs[1], int32_T nrhs,
                                const mxArray *prhs[3])
{
  emlrtStack st = {
      NULL, /* site */
      NULL, /* tls */
      NULL  /* prev */
  };
  const mxArray *outputs;
  st.tls = emlrtRootTLSGlobal;
  /* Check for proper number of arguments. */
  if (nrhs != 3) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:WrongNumberOfInputs", 5, 12, 3, 4,
                        14, "getMeanNormals");
  }
  if (nlhs > 1) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:TooManyOutputArguments", 3, 4, 14,
                        "getMeanNormals");
  }
  /* Call the function. */
  getMeanNormals_api(prhs, &outputs);
  /* Copy over outputs to the caller. */
  emlrtReturnArrays(1, &plhs[0], &outputs);
}

void mexFunction(int32_T nlhs, mxArray *plhs[], int32_T nrhs,
                 const mxArray *prhs[])
{
  mexAtExit(&getMeanNormals_atexit);
  /* Module initialization. */
  getMeanNormals_initialize();
  /* Dispatch the entry-point. */
  getMeanNormals_mexFunction(nlhs, plhs, nrhs, prhs);
  /* Module termination. */
  getMeanNormals_terminate();
}

emlrtCTX mexFunctionCreateRootTLS(void)
{
  emlrtCreateRootTLSR2021a(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1,
                           NULL);
  return emlrtRootTLSGlobal;
}

/* End of code generation (_coder_getMeanNormals_mex.c) */
