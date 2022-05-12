/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * getMeanNormals_initialize.c
 *
 * Code generation for function 'getMeanNormals_initialize'
 *
 */

/* Include files */
#include "getMeanNormals_initialize.h"
#include "_coder_getMeanNormals_mex.h"
#include "getMeanNormals_data.h"
#include "rt_nonfinite.h"

/* Function Definitions */
void getMeanNormals_initialize(void)
{
  emlrtStack st = {
      NULL, /* site */
      NULL, /* tls */
      NULL  /* prev */
  };
  mex_InitInfAndNan();
  mexFunctionCreateRootTLS();
  emlrtBreakCheckR2012bFlagVar = emlrtGetBreakCheckFlagAddressR2012b();
  st.tls = emlrtRootTLSGlobal;
  emlrtClearAllocCountR2012b(&st, false, 0U, NULL);
  emlrtEnterRtStackR2012b(&st);
  emlrtFirstTimeR2012b(emlrtRootTLSGlobal);
}

/* End of code generation (getMeanNormals_initialize.c) */
