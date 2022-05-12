/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * cat.c
 *
 * Code generation for function 'cat'
 *
 */

/* Include files */
#include "cat.h"
#include "getQuadTree_emxutil.h"
#include "getQuadTree_types.h"
#include "rt_nonfinite.h"

/* Variable Definitions */
static emlrtRTEInfo e_emlrtRTEI =
    {
        71,    /* lineNo */
        27,    /* colNo */
        "cat", /* fName */
        "D:\\Program "
        "Files\\MATLAB\\R2021b\\toolbox\\eml\\lib\\matlab\\elmat\\cat.m" /* pName
                                                                          */
};

static emlrtRTEInfo u_emlrtRTEI =
    {
        56,    /* lineNo */
        20,    /* colNo */
        "cat", /* fName */
        "D:\\Program "
        "Files\\MATLAB\\R2021b\\toolbox\\eml\\lib\\matlab\\elmat\\cat.m" /* pName
                                                                          */
};

static emlrtRTEInfo v_emlrtRTEI =
    {
        100,   /* lineNo */
        14,    /* colNo */
        "cat", /* fName */
        "D:\\Program "
        "Files\\MATLAB\\R2021b\\toolbox\\eml\\lib\\matlab\\elmat\\cat.m" /* pName
                                                                          */
};

static emlrtRTEInfo w_emlrtRTEI =
    {
        1,     /* lineNo */
        14,    /* colNo */
        "cat", /* fName */
        "D:\\Program "
        "Files\\MATLAB\\R2021b\\toolbox\\eml\\lib\\matlab\\elmat\\cat.m" /* pName
                                                                          */
};

/* Function Definitions */
void b_cat(real_T varargin_2, real_T y_data[], int32_T y_size[2])
{
  y_size[0] = 1;
  y_size[1] = 1;
  y_data[0] = varargin_2;
}

void cat(const emlrtStack *sp, const emxArray_real32_T *varargin_1,
         const emxArray_real32_T *varargin_2, emxArray_real32_T *y)
{
  cell_wrap_3 r;
  cell_wrap_3 r1;
  int32_T i;
  int32_T j;
  const real32_T *varargin_1_data;
  const real32_T *varargin_2_data;
  real32_T *y_data;
  boolean_T exitg1;
  varargin_2_data = varargin_2->data;
  varargin_1_data = varargin_1->data;
  emlrtHeapReferenceStackEnterFcnR2012b((emlrtCTX)sp);
  i = y->size[0] * y->size[1];
  y->size[0] = 2;
  y->size[1] = varargin_1->size[1];
  emxEnsureCapacity_real32_T(sp, y, i, &u_emlrtRTEI);
  y_data = y->data;
  j = 0;
  exitg1 = false;
  while ((!exitg1) && (j < 2)) {
    if ((j + 1 != 1) && (y->size[1] != varargin_1->size[1])) {
      emlrtErrorWithMessageIdR2018a(
          sp, &e_emlrtRTEI, "Coder:MATLAB:catenate_dimensionMismatch",
          "Coder:MATLAB:catenate_dimensionMismatch", 0);
    } else {
      j++;
    }
  }
  j = 0;
  exitg1 = false;
  while ((!exitg1) && (j < 2)) {
    if ((j + 1 != 1) && (y->size[1] != varargin_2->size[1])) {
      emlrtErrorWithMessageIdR2018a(
          sp, &e_emlrtRTEI, "Coder:MATLAB:catenate_dimensionMismatch",
          "Coder:MATLAB:catenate_dimensionMismatch", 0);
    } else {
      j++;
    }
  }
  emxInitStruct_cell_wrap_3(sp, &r, &w_emlrtRTEI);
  i = r.f1->size[0] * r.f1->size[1];
  r.f1->size[0] = 1;
  r.f1->size[1] = varargin_1->size[1];
  emxEnsureCapacity_real32_T(sp, r.f1, i, &v_emlrtRTEI);
  j = varargin_1->size[1];
  for (i = 0; i < j; i++) {
    r.f1->data[i] = varargin_1_data[i];
  }
  emxInitStruct_cell_wrap_3(sp, &r1, &w_emlrtRTEI);
  i = r1.f1->size[0] * r1.f1->size[1];
  r1.f1->size[0] = 1;
  r1.f1->size[1] = varargin_2->size[1];
  emxEnsureCapacity_real32_T(sp, r1.f1, i, &v_emlrtRTEI);
  j = varargin_2->size[1];
  for (i = 0; i < j; i++) {
    r1.f1->data[i] = varargin_2_data[i];
  }
  i = varargin_1->size[1];
  for (j = 0; j < i; j++) {
    y_data[2 * j] = r.f1->data[j];
    y_data[2 * j + 1] = r1.f1->data[j];
  }
  emxFreeStruct_cell_wrap_3(sp, &r1);
  emxFreeStruct_cell_wrap_3(sp, &r);
  emlrtHeapReferenceStackLeaveFcnR2012b((emlrtCTX)sp);
}

/* End of code generation (cat.c) */
