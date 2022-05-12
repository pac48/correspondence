/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * div.c
 *
 * Code generation for function 'div'
 *
 */

/* Include files */
#include "div.h"
#include "getMeanNormals_data.h"
#include "getMeanNormals_emxutil.h"
#include "getMeanNormals_types.h"
#include "rt_nonfinite.h"

/* Function Definitions */
void binary_expand_op(const emlrtStack *sp, emxArray_real_T *meanNorms,
                      const emxArray_real_T *nums)
{
  emxArray_real_T *b_meanNorms;
  const real_T *nums_data;
  real_T *b_meanNorms_data;
  real_T *meanNorms_data;
  int32_T aux_0_1;
  int32_T aux_1_1;
  int32_T i;
  int32_T loop_ub;
  int32_T stride_0_1;
  int32_T stride_1_1;
  nums_data = nums->data;
  meanNorms_data = meanNorms->data;
  emlrtHeapReferenceStackEnterFcnR2012b((emlrtCTX)sp);
  emxInit_real_T(sp, &b_meanNorms, 2, &f_emlrtRTEI);
  i = b_meanNorms->size[0] * b_meanNorms->size[1];
  b_meanNorms->size[0] = 3;
  if (nums->size[0] == 1) {
    b_meanNorms->size[1] = meanNorms->size[1];
  } else {
    b_meanNorms->size[1] = nums->size[0];
  }
  emxEnsureCapacity_real_T(sp, b_meanNorms, i, &f_emlrtRTEI);
  b_meanNorms_data = b_meanNorms->data;
  stride_0_1 = (meanNorms->size[1] != 1);
  stride_1_1 = (nums->size[0] != 1);
  aux_0_1 = 0;
  aux_1_1 = 0;
  if (nums->size[0] == 1) {
    loop_ub = meanNorms->size[1];
  } else {
    loop_ub = nums->size[0];
  }
  for (i = 0; i < loop_ub; i++) {
    b_meanNorms_data[3 * i] = meanNorms_data[3 * aux_0_1] / nums_data[aux_1_1];
    b_meanNorms_data[3 * i + 1] =
        meanNorms_data[3 * aux_0_1 + 1] / nums_data[aux_1_1];
    b_meanNorms_data[3 * i + 2] =
        meanNorms_data[3 * aux_0_1 + 2] / nums_data[aux_1_1];
    aux_1_1 += stride_1_1;
    aux_0_1 += stride_0_1;
  }
  i = meanNorms->size[0] * meanNorms->size[1];
  meanNorms->size[0] = 3;
  meanNorms->size[1] = b_meanNorms->size[1];
  emxEnsureCapacity_real_T(sp, meanNorms, i, &g_emlrtRTEI);
  meanNorms_data = meanNorms->data;
  loop_ub = b_meanNorms->size[1];
  for (i = 0; i < loop_ub; i++) {
    meanNorms_data[3 * i] = b_meanNorms_data[3 * i];
    stride_0_1 = 3 * i + 1;
    meanNorms_data[stride_0_1] = b_meanNorms_data[stride_0_1];
    stride_0_1 = 3 * i + 2;
    meanNorms_data[stride_0_1] = b_meanNorms_data[stride_0_1];
  }
  emxFree_real_T(sp, &b_meanNorms);
  emlrtHeapReferenceStackLeaveFcnR2012b((emlrtCTX)sp);
}

/* End of code generation (div.c) */
