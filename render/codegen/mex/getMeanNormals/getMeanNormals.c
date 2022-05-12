/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * getMeanNormals.c
 *
 * Code generation for function 'getMeanNormals'
 *
 */

/* Include files */
#include "getMeanNormals.h"
#include "div.h"
#include "getMeanNormals_data.h"
#include "getMeanNormals_emxutil.h"
#include "getMeanNormals_types.h"
#include "rt_nonfinite.h"

/* Variable Definitions */
static emlrtRSInfo emlrtRSI = {
    14,                                            /* lineNo */
    "getMeanNormals",                              /* fcnName */
    "D:\\correspondence\\render\\getMeanNormals.m" /* pathName */
};

static emlrtRSInfo b_emlrtRSI = {
    34,               /* lineNo */
    "rdivide_helper", /* fcnName */
    "D:\\Program "
    "Files\\MATLAB\\R2021b\\toolbox\\eml\\eml\\+coder\\+internal\\rdivide_"
    "helper.m" /* pathName */
};

static emlrtRSInfo c_emlrtRSI = {
    51,    /* lineNo */
    "div", /* fcnName */
    "D:\\Program "
    "Files\\MATLAB\\R2021b\\toolbox\\eml\\eml\\+coder\\+internal\\div.m" /* pathName
                                                                          */
};

static emlrtBCInfo emlrtBCI = {
    -1,                                             /* iFirst */
    -1,                                             /* iLast */
    6,                                              /* lineNo */
    21,                                             /* colNo */
    "vertOrder",                                    /* aName */
    "getMeanNormals",                               /* fName */
    "D:\\correspondence\\render\\getMeanNormals.m", /* pName */
    0                                               /* checkKind */
};

static emlrtECInfo emlrtECI = {
    2,                                             /* nDims */
    9,                                             /* lineNo */
    8,                                             /* colNo */
    "getMeanNormals",                              /* fName */
    "D:\\correspondence\\render\\getMeanNormals.m" /* pName */
};

static emlrtBCInfo b_emlrtBCI = {
    -1,                                             /* iFirst */
    -1,                                             /* iLast */
    11,                                             /* lineNo */
    21,                                             /* colNo */
    "vertOrder",                                    /* aName */
    "getMeanNormals",                               /* fName */
    "D:\\correspondence\\render\\getMeanNormals.m", /* pName */
    0                                               /* checkKind */
};

static emlrtBCInfo c_emlrtBCI = {
    -1,                                             /* iFirst */
    -1,                                             /* iLast */
    12,                                             /* lineNo */
    38,                                             /* colNo */
    "meanNorms",                                    /* aName */
    "getMeanNormals",                               /* fName */
    "D:\\correspondence\\render\\getMeanNormals.m", /* pName */
    0                                               /* checkKind */
};

static emlrtBCInfo d_emlrtBCI = {
    -1,                                             /* iFirst */
    -1,                                             /* iLast */
    12,                                             /* lineNo */
    52,                                             /* colNo */
    "tmp4",                                         /* aName */
    "getMeanNormals",                               /* fName */
    "D:\\correspondence\\render\\getMeanNormals.m", /* pName */
    0                                               /* checkKind */
};

static emlrtBCInfo e_emlrtBCI = {
    -1,                                             /* iFirst */
    -1,                                             /* iLast */
    12,                                             /* lineNo */
    18,                                             /* colNo */
    "meanNorms",                                    /* aName */
    "getMeanNormals",                               /* fName */
    "D:\\correspondence\\render\\getMeanNormals.m", /* pName */
    0                                               /* checkKind */
};

static emlrtRTEInfo emlrtRTEI = {
    13,                     /* lineNo */
    27,                     /* colNo */
    "assertCompatibleDims", /* fName */
    "D:\\Program "
    "Files\\MATLAB\\R2021b\\toolbox\\shared\\coder\\coder\\lib\\+coder\\+"
    "internal\\assertCompatibleDims.m" /* pName */
};

static emlrtBCInfo f_emlrtBCI = {
    -1,                                             /* iFirst */
    -1,                                             /* iLast */
    9,                                              /* lineNo */
    21,                                             /* colNo */
    "meanNorms",                                    /* aName */
    "getMeanNormals",                               /* fName */
    "D:\\correspondence\\render\\getMeanNormals.m", /* pName */
    0                                               /* checkKind */
};

static emlrtBCInfo g_emlrtBCI = {
    -1,                                             /* iFirst */
    -1,                                             /* iLast */
    7,                                              /* lineNo */
    22,                                             /* colNo */
    "nums",                                         /* aName */
    "getMeanNormals",                               /* fName */
    "D:\\correspondence\\render\\getMeanNormals.m", /* pName */
    0                                               /* checkKind */
};

static emlrtRTEInfo c_emlrtRTEI = {
    3,                                             /* lineNo */
    1,                                             /* colNo */
    "getMeanNormals",                              /* fName */
    "D:\\correspondence\\render\\getMeanNormals.m" /* pName */
};

static emlrtRTEInfo d_emlrtRTEI = {
    4,                                             /* lineNo */
    1,                                             /* colNo */
    "getMeanNormals",                              /* fName */
    "D:\\correspondence\\render\\getMeanNormals.m" /* pName */
};

static emlrtRTEInfo e_emlrtRTEI = {
    9,                                             /* lineNo */
    1,                                             /* colNo */
    "getMeanNormals",                              /* fName */
    "D:\\correspondence\\render\\getMeanNormals.m" /* pName */
};

static emlrtRSInfo d_emlrtRSI = {
    52,    /* lineNo */
    "div", /* fcnName */
    "D:\\Program "
    "Files\\MATLAB\\R2021b\\toolbox\\eml\\eml\\+coder\\+internal\\div.m" /* pathName
                                                                          */
};

static emlrtRSInfo e_emlrtRSI = {
    9,                                             /* lineNo */
    "getMeanNormals",                              /* fcnName */
    "D:\\correspondence\\render\\getMeanNormals.m" /* pathName */
};

/* Function Declarations */
static void b_binary_expand_op(const emlrtStack *sp, emxArray_real32_T *tmp4,
                               const emxArray_real_T *meanNorms,
                               const emxArray_int32_T *vertOrder,
                               const emxArray_real32_T *tmp3);

/* Function Definitions */
static void b_binary_expand_op(const emlrtStack *sp, emxArray_real32_T *tmp4,
                               const emxArray_real_T *meanNorms,
                               const emxArray_int32_T *vertOrder,
                               const emxArray_real32_T *tmp3)
{
  const real_T *meanNorms_data;
  const int32_T *vertOrder_data;
  int32_T aux_0_1;
  int32_T aux_1_1;
  int32_T i;
  int32_T loop_ub;
  int32_T stride_0_1;
  int32_T stride_1_1;
  const real32_T *tmp3_data;
  real32_T *tmp4_data;
  tmp3_data = tmp3->data;
  vertOrder_data = vertOrder->data;
  meanNorms_data = meanNorms->data;
  i = tmp4->size[0] * tmp4->size[1];
  tmp4->size[0] = 3;
  if (tmp3->size[1] == 1) {
    tmp4->size[1] = vertOrder->size[0];
  } else {
    tmp4->size[1] = tmp3->size[1];
  }
  emxEnsureCapacity_real32_T(sp, tmp4, i, &e_emlrtRTEI);
  tmp4_data = tmp4->data;
  stride_0_1 = (vertOrder->size[0] != 1);
  stride_1_1 = (tmp3->size[1] != 1);
  aux_0_1 = 0;
  aux_1_1 = 0;
  if (tmp3->size[1] == 1) {
    loop_ub = vertOrder->size[0];
  } else {
    loop_ub = tmp3->size[1];
  }
  for (i = 0; i < loop_ub; i++) {
    tmp4_data[3 * i] =
        (real32_T)meanNorms_data[3 * (vertOrder_data[aux_0_1] - 1)] +
        tmp3_data[3 * aux_1_1];
    tmp4_data[3 * i + 1] =
        (real32_T)meanNorms_data[3 * (vertOrder_data[aux_0_1] - 1) + 1] +
        tmp3_data[3 * aux_1_1 + 1];
    tmp4_data[3 * i + 2] =
        (real32_T)meanNorms_data[3 * (vertOrder_data[aux_0_1] - 1) + 2] +
        tmp3_data[3 * aux_1_1 + 2];
    aux_1_1 += stride_1_1;
    aux_0_1 += stride_0_1;
  }
}

void getMeanNormals(const emlrtStack *sp, const emxArray_real32_T *normals,
                    const emxArray_int32_T *vertOrder,
                    emxArray_real_T *meanNorms)
{
  emlrtStack b_st;
  emlrtStack c_st;
  emlrtStack st;
  emxArray_real32_T *tmp3;
  emxArray_real32_T *tmp4;
  emxArray_real_T *c_meanNorms;
  emxArray_real_T *nums;
  real_T meanNorms_idx_1;
  real_T meanNorms_idx_2;
  real_T *b_meanNorms_data;
  real_T *meanNorms_data;
  real_T *nums_data;
  const int32_T *vertOrder_data;
  int32_T b_meanNorms;
  int32_T i;
  int32_T loop_ub;
  const real32_T *normals_data;
  real32_T *tmp3_data;
  real32_T *tmp4_data;
  st.prev = sp;
  st.tls = sp->tls;
  b_st.prev = &st;
  b_st.tls = st.tls;
  c_st.prev = &b_st;
  c_st.tls = b_st.tls;
  meanNorms_data = meanNorms->data;
  vertOrder_data = vertOrder->data;
  normals_data = normals->data;
  emlrtHeapReferenceStackEnterFcnR2012b((emlrtCTX)sp);
  emxInit_real_T(sp, &nums, 1, &c_emlrtRTEI);
  i = nums->size[0];
  nums->size[0] = meanNorms->size[1];
  emxEnsureCapacity_real_T(sp, nums, i, &c_emlrtRTEI);
  nums_data = nums->data;
  loop_ub = meanNorms->size[1];
  for (i = 0; i < loop_ub; i++) {
    nums_data[i] = 0.0;
  }
  emxInit_real32_T(sp, &tmp3, &d_emlrtRTEI);
  i = tmp3->size[0] * tmp3->size[1];
  tmp3->size[0] = 3;
  tmp3->size[1] = normals->size[0];
  emxEnsureCapacity_real32_T(sp, tmp3, i, &d_emlrtRTEI);
  tmp3_data = tmp3->data;
  loop_ub = normals->size[0];
  for (i = 0; i < loop_ub; i++) {
    tmp3_data[3 * i] = normals_data[i];
    tmp3_data[3 * i + 1] = normals_data[i + normals->size[0]];
    tmp3_data[3 * i + 2] = normals_data[i + normals->size[0] * 2];
  }
  i = vertOrder->size[0];
  for (loop_ub = 0; loop_ub < i; loop_ub++) {
    if (loop_ub + 1 > vertOrder->size[0]) {
      emlrtDynamicBoundsCheckR2012b(loop_ub + 1, 1, vertOrder->size[0],
                                    &emlrtBCI, (emlrtCTX)sp);
    }
    if ((vertOrder_data[loop_ub] < 1) ||
        (vertOrder_data[loop_ub] > nums->size[0])) {
      emlrtDynamicBoundsCheckR2012b(vertOrder_data[loop_ub], 1, nums->size[0],
                                    &g_emlrtBCI, (emlrtCTX)sp);
    }
    nums_data[vertOrder_data[loop_ub] - 1]++;
    if (*emlrtBreakCheckR2012bFlagVar != 0) {
      emlrtBreakCheckR2012b((emlrtCTX)sp);
    }
  }
  b_meanNorms = meanNorms->size[1];
  loop_ub = vertOrder->size[0];
  for (i = 0; i < loop_ub; i++) {
    if ((vertOrder_data[i] < 1) || (vertOrder_data[i] > b_meanNorms)) {
      emlrtDynamicBoundsCheckR2012b(vertOrder_data[i], 1, b_meanNorms,
                                    &f_emlrtBCI, (emlrtCTX)sp);
    }
  }
  if ((vertOrder->size[0] != tmp3->size[1]) &&
      ((vertOrder->size[0] != 1) && (tmp3->size[1] != 1))) {
    emlrtDimSizeImpxCheckR2021b(vertOrder->size[0], tmp3->size[1], &emlrtECI,
                                (emlrtCTX)sp);
  }
  emxInit_real32_T(sp, &tmp4, &e_emlrtRTEI);
  if (vertOrder->size[0] == tmp3->size[1]) {
    i = tmp4->size[0] * tmp4->size[1];
    tmp4->size[0] = 3;
    tmp4->size[1] = vertOrder->size[0];
    emxEnsureCapacity_real32_T(sp, tmp4, i, &e_emlrtRTEI);
    tmp4_data = tmp4->data;
    loop_ub = vertOrder->size[0];
    for (i = 0; i < loop_ub; i++) {
      tmp4_data[3 * i] = (real32_T)meanNorms_data[3 * (vertOrder_data[i] - 1)] +
                         tmp3_data[3 * i];
      b_meanNorms = 3 * i + 1;
      tmp4_data[b_meanNorms] =
          (real32_T)meanNorms_data[3 * (vertOrder_data[i] - 1) + 1] +
          tmp3_data[b_meanNorms];
      b_meanNorms = 3 * i + 2;
      tmp4_data[b_meanNorms] =
          (real32_T)meanNorms_data[3 * (vertOrder_data[i] - 1) + 2] +
          tmp3_data[b_meanNorms];
    }
  } else {
    st.site = &e_emlrtRSI;
    b_binary_expand_op(&st, tmp4, meanNorms, vertOrder, tmp3);
    tmp4_data = tmp4->data;
  }
  emxFree_real32_T(sp, &tmp3);
  i = vertOrder->size[0];
  for (loop_ub = 0; loop_ub < i; loop_ub++) {
    if ((loop_ub + 1 < 1) || (loop_ub + 1 > vertOrder->size[0])) {
      emlrtDynamicBoundsCheckR2012b(loop_ub + 1, 1, vertOrder->size[0],
                                    &b_emlrtBCI, (emlrtCTX)sp);
    }
    b_meanNorms = meanNorms->size[1];
    if ((vertOrder_data[loop_ub] < 1) ||
        (vertOrder_data[loop_ub] > b_meanNorms)) {
      emlrtDynamicBoundsCheckR2012b(vertOrder_data[loop_ub], 1, b_meanNorms,
                                    &c_emlrtBCI, (emlrtCTX)sp);
    }
    if ((loop_ub + 1 < 1) || (loop_ub + 1 > tmp4->size[1])) {
      emlrtDynamicBoundsCheckR2012b(loop_ub + 1, 1, tmp4->size[1], &d_emlrtBCI,
                                    (emlrtCTX)sp);
    }
    b_meanNorms = meanNorms->size[1];
    if ((vertOrder_data[loop_ub] < 1) ||
        (vertOrder_data[loop_ub] > b_meanNorms)) {
      emlrtDynamicBoundsCheckR2012b(vertOrder_data[loop_ub], 1, b_meanNorms,
                                    &e_emlrtBCI, (emlrtCTX)sp);
    }
    meanNorms_idx_1 =
        (real32_T)meanNorms_data[3 * (vertOrder_data[loop_ub] - 1) + 1] +
        tmp4_data[3 * loop_ub + 1];
    meanNorms_idx_2 =
        (real32_T)meanNorms_data[3 * (vertOrder_data[loop_ub] - 1) + 2] +
        tmp4_data[3 * loop_ub + 2];
    meanNorms_data[3 * (vertOrder_data[loop_ub] - 1)] =
        (real32_T)meanNorms_data[3 * (vertOrder_data[loop_ub] - 1)] +
        tmp4_data[3 * loop_ub];
    meanNorms_data[3 * (vertOrder_data[loop_ub] - 1) + 1] = meanNorms_idx_1;
    meanNorms_data[3 * (vertOrder_data[loop_ub] - 1) + 2] = meanNorms_idx_2;
    if (*emlrtBreakCheckR2012bFlagVar != 0) {
      emlrtBreakCheckR2012b((emlrtCTX)sp);
    }
  }
  emxFree_real32_T(sp, &tmp4);
  st.site = &emlrtRSI;
  b_st.site = &b_emlrtRSI;
  c_st.site = &c_emlrtRSI;
  if ((meanNorms->size[1] != 1) && (nums->size[0] != 1) &&
      (nums->size[0] != meanNorms->size[1])) {
    emlrtErrorWithMessageIdR2018a(&c_st, &emlrtRTEI,
                                  "MATLAB:sizeDimensionsMustMatch",
                                  "MATLAB:sizeDimensionsMustMatch", 0);
  }
  if (nums->size[0] == meanNorms->size[1]) {
    emxInit_real_T(&b_st, &c_meanNorms, 2, &f_emlrtRTEI);
    i = c_meanNorms->size[0] * c_meanNorms->size[1];
    c_meanNorms->size[0] = 3;
    c_meanNorms->size[1] = meanNorms->size[1];
    emxEnsureCapacity_real_T(&b_st, c_meanNorms, i, &f_emlrtRTEI);
    b_meanNorms_data = c_meanNorms->data;
    loop_ub = meanNorms->size[1];
    for (i = 0; i < loop_ub; i++) {
      b_meanNorms_data[3 * i] = meanNorms_data[3 * i] / nums_data[i];
      b_meanNorms = 3 * i + 1;
      b_meanNorms_data[b_meanNorms] =
          meanNorms_data[b_meanNorms] / nums_data[i];
      b_meanNorms = 3 * i + 2;
      b_meanNorms_data[b_meanNorms] =
          meanNorms_data[b_meanNorms] / nums_data[i];
    }
    i = meanNorms->size[0] * meanNorms->size[1];
    meanNorms->size[0] = 3;
    meanNorms->size[1] = c_meanNorms->size[1];
    emxEnsureCapacity_real_T(&b_st, meanNorms, i, &g_emlrtRTEI);
    meanNorms_data = meanNorms->data;
    loop_ub = c_meanNorms->size[1];
    for (i = 0; i < loop_ub; i++) {
      meanNorms_data[3 * i] = b_meanNorms_data[3 * i];
      b_meanNorms = 3 * i + 1;
      meanNorms_data[b_meanNorms] = b_meanNorms_data[b_meanNorms];
      b_meanNorms = 3 * i + 2;
      meanNorms_data[b_meanNorms] = b_meanNorms_data[b_meanNorms];
    }
    emxFree_real_T(&b_st, &c_meanNorms);
  } else {
    c_st.site = &d_emlrtRSI;
    binary_expand_op(&c_st, meanNorms, nums);
  }
  emxFree_real_T(&b_st, &nums);
  emlrtHeapReferenceStackLeaveFcnR2012b((emlrtCTX)sp);
}

/* End of code generation (getMeanNormals.c) */
