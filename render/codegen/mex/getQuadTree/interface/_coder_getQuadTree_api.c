/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_getQuadTree_api.c
 *
 * Code generation for function '_coder_getQuadTree_api'
 *
 */

/* Include files */
#include "_coder_getQuadTree_api.h"
#include "getQuadTree.h"
#include "getQuadTree_data.h"
#include "getQuadTree_emxutil.h"
#include "getQuadTree_types.h"
#include "rt_nonfinite.h"

/* Variable Definitions */
static emlrtRTEInfo x_emlrtRTEI = {
    1,                        /* lineNo */
    1,                        /* colNo */
    "_coder_getQuadTree_api", /* fName */
    ""                        /* pName */
};

/* Function Declarations */
static void b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                               const emlrtMsgIdentifier *parentId,
                               emxArray_real32_T *y);

static void c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                               const emlrtMsgIdentifier *msgId,
                               emxArray_real32_T *ret);

static void emlrt_marshallIn(const emlrtStack *sp, const mxArray *allVerts2d,
                             const char_T *identifier, emxArray_real32_T *y);

static const mxArray *emlrt_marshallOut(const emxArray_real_T *u);

/* Function Definitions */
static void b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                               const emlrtMsgIdentifier *parentId,
                               emxArray_real32_T *y)
{
  c_emlrt_marshallIn(sp, emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
}

static void c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                               const emlrtMsgIdentifier *msgId,
                               emxArray_real32_T *ret)
{
  static const int32_T dims[2] = {2, -1};
  int32_T iv[2];
  int32_T i;
  const boolean_T bv[2] = {false, true};
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

static void emlrt_marshallIn(const emlrtStack *sp, const mxArray *allVerts2d,
                             const char_T *identifier, emxArray_real32_T *y)
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char_T *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  b_emlrt_marshallIn(sp, emlrtAlias(allVerts2d), &thisId, y);
  emlrtDestroyArray(&allVerts2d);
}

static const mxArray *emlrt_marshallOut(const emxArray_real_T *u)
{
  static const int32_T iv[2] = {0, 0};
  const mxArray *m;
  const mxArray *y;
  const real_T *u_data;
  u_data = u->data;
  y = NULL;
  m = emlrtCreateNumericArray(2, (const void *)&iv[0], mxDOUBLE_CLASS, mxREAL);
  emlrtMxSetData((mxArray *)m, (void *)&u_data[0]);
  emlrtSetDimensions((mxArray *)m, &u->size[0], 2);
  emlrtAssign(&y, m);
  return y;
}

void getQuadTree_api(getQuadTreeStackData *SD, const mxArray *prhs,
                     int32_T nlhs, const mxArray *plhs[2])
{
  emlrtStack st = {
      NULL, /* site */
      NULL, /* tls */
      NULL  /* prev */
  };
  emxArray_real32_T *allVerts2d;
  emxArray_real_T *bins;
  emxArray_real_T *distances;
  st.tls = emlrtRootTLSGlobal;
  emlrtHeapReferenceStackEnterFcnR2012b(&st);
  emxInit_real32_T(&st, &allVerts2d, &x_emlrtRTEI);
  emxInit_real_T(&st, &bins, &x_emlrtRTEI);
  emxInit_real_T(&st, &distances, &x_emlrtRTEI);
  /* Marshall function inputs */
  allVerts2d->canFreeData = false;
  emlrt_marshallIn(&st, emlrtAlias(prhs), "allVerts2d", allVerts2d);
  /* Invoke the target function */
  getQuadTree(SD, &st, allVerts2d, bins, distances);
  /* Marshall function outputs */
  bins->canFreeData = false;
  plhs[0] = emlrt_marshallOut(bins);
  emxFree_real_T(&st, &bins);
  emxFree_real32_T(&st, &allVerts2d);
  if (nlhs > 1) {
    distances->canFreeData = false;
    plhs[1] = emlrt_marshallOut(distances);
  }
  emxFree_real_T(&st, &distances);
  emlrtHeapReferenceStackLeaveFcnR2012b(&st);
}

/* End of code generation (_coder_getQuadTree_api.c) */
