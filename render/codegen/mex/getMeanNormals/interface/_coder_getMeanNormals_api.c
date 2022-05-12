/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_getMeanNormals_api.c
 *
 * Code generation for function '_coder_getMeanNormals_api'
 *
 */

/* Include files */
#include "_coder_getMeanNormals_api.h"
#include "getMeanNormals.h"
#include "getMeanNormals_data.h"
#include "getMeanNormals_emxutil.h"
#include "getMeanNormals_types.h"
#include "rt_nonfinite.h"

/* Variable Definitions */
static emlrtRTEInfo b_emlrtRTEI = {
    1,                           /* lineNo */
    1,                           /* colNo */
    "_coder_getMeanNormals_api", /* fName */
    ""                           /* pName */
};

/* Function Declarations */
static void b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                               const emlrtMsgIdentifier *parentId,
                               emxArray_real32_T *y);

static void c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *vertOrder,
                               const char_T *identifier, emxArray_int32_T *y);

static void d_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                               const emlrtMsgIdentifier *parentId,
                               emxArray_int32_T *y);

static void e_emlrt_marshallIn(const emlrtStack *sp, const mxArray *meanNorms,
                               const char_T *identifier, emxArray_real_T *y);

static void emlrt_marshallIn(const emlrtStack *sp, const mxArray *normals,
                             const char_T *identifier, emxArray_real32_T *y);

static void emlrt_marshallOut(const emxArray_real_T *u, const mxArray *y);

static void f_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                               const emlrtMsgIdentifier *parentId,
                               emxArray_real_T *y);

static void g_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                               const emlrtMsgIdentifier *msgId,
                               emxArray_real32_T *ret);

static void h_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                               const emlrtMsgIdentifier *msgId,
                               emxArray_int32_T *ret);

static void i_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                               const emlrtMsgIdentifier *msgId,
                               emxArray_real_T *ret);

/* Function Definitions */
static void b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                               const emlrtMsgIdentifier *parentId,
                               emxArray_real32_T *y)
{
  g_emlrt_marshallIn(sp, emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
}

static void c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *vertOrder,
                               const char_T *identifier, emxArray_int32_T *y)
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char_T *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  d_emlrt_marshallIn(sp, emlrtAlias(vertOrder), &thisId, y);
  emlrtDestroyArray(&vertOrder);
}

static void d_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                               const emlrtMsgIdentifier *parentId,
                               emxArray_int32_T *y)
{
  h_emlrt_marshallIn(sp, emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
}

static void e_emlrt_marshallIn(const emlrtStack *sp, const mxArray *meanNorms,
                               const char_T *identifier, emxArray_real_T *y)
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char_T *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  f_emlrt_marshallIn(sp, emlrtAlias(meanNorms), &thisId, y);
  emlrtDestroyArray(&meanNorms);
}

static void emlrt_marshallIn(const emlrtStack *sp, const mxArray *normals,
                             const char_T *identifier, emxArray_real32_T *y)
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char_T *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  b_emlrt_marshallIn(sp, emlrtAlias(normals), &thisId, y);
  emlrtDestroyArray(&normals);
}

static void emlrt_marshallOut(const emxArray_real_T *u, const mxArray *y)
{
  const real_T *u_data;
  u_data = u->data;
  emlrtMxSetData((mxArray *)y, (void *)&u_data[0]);
  emlrtSetDimensions((mxArray *)y, &u->size[0], 2);
}

static void f_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                               const emlrtMsgIdentifier *parentId,
                               emxArray_real_T *y)
{
  i_emlrt_marshallIn(sp, emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
}

static void g_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                               const emlrtMsgIdentifier *msgId,
                               emxArray_real32_T *ret)
{
  static const int32_T dims[2] = {-1, 3};
  int32_T iv[2];
  int32_T i;
  const boolean_T bv[2] = {true, false};
  emlrtCheckVsBuiltInR2012b((emlrtCTX)sp, msgId, src, (const char_T *)"single",
                            false, 2U, (void *)&dims[0], &bv[0], &iv[0]);
  ret->allocatedSize = iv[0] * iv[1];
  i = ret->size[0] * ret->size[1];
  ret->size[0] = iv[0];
  ret->size[1] = iv[1];
  emxEnsureCapacity_real32_T(sp, ret, i, (emlrtRTEInfo *)NULL);
  ret->data = (real32_T *)emlrtMxGetData(src);
  ret->canFreeData = false;
  emlrtDestroyArray(&src);
}

static void h_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                               const emlrtMsgIdentifier *msgId,
                               emxArray_int32_T *ret)
{
  static const int32_T dims = -1;
  int32_T i;
  int32_T i1;
  const boolean_T b = true;
  emlrtCheckVsBuiltInR2012b((emlrtCTX)sp, msgId, src, (const char_T *)"int32",
                            false, 1U, (void *)&dims, &b, &i);
  ret->allocatedSize = i;
  i1 = ret->size[0];
  ret->size[0] = i;
  emxEnsureCapacity_int32_T(sp, ret, i1, (emlrtRTEInfo *)NULL);
  ret->data = (int32_T *)emlrtMxGetData(src);
  ret->canFreeData = false;
  emlrtDestroyArray(&src);
}

static void i_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                               const emlrtMsgIdentifier *msgId,
                               emxArray_real_T *ret)
{
  static const int32_T dims[2] = {3, -1};
  int32_T iv[2];
  int32_T i;
  const boolean_T bv[2] = {false, true};
  emlrtCheckVsBuiltInR2012b((emlrtCTX)sp, msgId, src, (const char_T *)"double",
                            false, 2U, (void *)&dims[0], &bv[0], &iv[0]);
  ret->allocatedSize = iv[0] * iv[1];
  i = ret->size[0] * ret->size[1];
  ret->size[0] = iv[0];
  ret->size[1] = iv[1];
  emxEnsureCapacity_real_T(sp, ret, i, (emlrtRTEInfo *)NULL);
  ret->data = (real_T *)emlrtMxGetData(src);
  ret->canFreeData = false;
  emlrtDestroyArray(&src);
}

void getMeanNormals_api(const mxArray *const prhs[3], const mxArray **plhs)
{
  emlrtStack st = {
      NULL, /* site */
      NULL, /* tls */
      NULL  /* prev */
  };
  emxArray_int32_T *vertOrder;
  emxArray_real32_T *normals;
  emxArray_real_T *meanNorms;
  const mxArray *prhs_copy_idx_2;
  st.tls = emlrtRootTLSGlobal;
  emlrtHeapReferenceStackEnterFcnR2012b(&st);
  emxInit_real32_T(&st, &normals, &b_emlrtRTEI);
  emxInit_int32_T(&st, &vertOrder, &b_emlrtRTEI);
  emxInit_real_T(&st, &meanNorms, 2, &b_emlrtRTEI);
  prhs_copy_idx_2 = emlrtProtectR2012b(prhs[2], 2, true, -1);
  /* Marshall function inputs */
  normals->canFreeData = false;
  emlrt_marshallIn(&st, emlrtAlias(prhs[0]), "normals", normals);
  vertOrder->canFreeData = false;
  c_emlrt_marshallIn(&st, emlrtAlias(prhs[1]), "vertOrder", vertOrder);
  meanNorms->canFreeData = false;
  e_emlrt_marshallIn(&st, emlrtAlias(prhs_copy_idx_2), "meanNorms", meanNorms);
  /* Invoke the target function */
  getMeanNormals(&st, normals, vertOrder, meanNorms);
  /* Marshall function outputs */
  meanNorms->canFreeData = false;
  emlrt_marshallOut(meanNorms, prhs_copy_idx_2);
  *plhs = prhs_copy_idx_2;
  emxFree_real_T(&st, &meanNorms);
  emxFree_int32_T(&st, &vertOrder);
  emxFree_real32_T(&st, &normals);
  emlrtHeapReferenceStackLeaveFcnR2012b(&st);
}

/* End of code generation (_coder_getMeanNormals_api.c) */
