/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * getQuadTree.c
 *
 * Code generation for function 'getQuadTree'
 *
 */

/* Include files */
#include "getQuadTree.h"
#include "cat.h"
#include "getQuadTree_data.h"
#include "getQuadTree_emxutil.h"
#include "getQuadTree_types.h"
#include "indexShapeCheck.h"
#include "rt_nonfinite.h"
#include "mwmathutil.h"
#include <string.h>

/* Variable Definitions */
static emlrtRSInfo emlrtRSI = {
    91,                                         /* lineNo */
    "getQuadTree",                              /* fcnName */
    "D:\\correspondence\\render\\getQuadTree.m" /* pathName */
};

static emlrtRSInfo b_emlrtRSI = {
    81,                                         /* lineNo */
    "getQuadTree",                              /* fcnName */
    "D:\\correspondence\\render\\getQuadTree.m" /* pathName */
};

static emlrtRSInfo c_emlrtRSI = {
    51,                                         /* lineNo */
    "getQuadTree",                              /* fcnName */
    "D:\\correspondence\\render\\getQuadTree.m" /* pathName */
};

static emlrtRSInfo d_emlrtRSI = {
    41,                                         /* lineNo */
    "getQuadTree",                              /* fcnName */
    "D:\\correspondence\\render\\getQuadTree.m" /* pathName */
};

static emlrtRSInfo e_emlrtRSI = {
    40,                                         /* lineNo */
    "getQuadTree",                              /* fcnName */
    "D:\\correspondence\\render\\getQuadTree.m" /* pathName */
};

static emlrtRSInfo f_emlrtRSI = {
    39,                                         /* lineNo */
    "getQuadTree",                              /* fcnName */
    "D:\\correspondence\\render\\getQuadTree.m" /* pathName */
};

static emlrtRSInfo g_emlrtRSI = {
    38,                                         /* lineNo */
    "getQuadTree",                              /* fcnName */
    "D:\\correspondence\\render\\getQuadTree.m" /* pathName */
};

static emlrtRSInfo h_emlrtRSI = {
    37,                                         /* lineNo */
    "getQuadTree",                              /* fcnName */
    "D:\\correspondence\\render\\getQuadTree.m" /* pathName */
};

static emlrtRSInfo i_emlrtRSI = {
    36,                                         /* lineNo */
    "getQuadTree",                              /* fcnName */
    "D:\\correspondence\\render\\getQuadTree.m" /* pathName */
};

static emlrtRSInfo j_emlrtRSI = {
    29,                  /* lineNo */
    "reshapeSizeChecks", /* fcnName */
    "D:\\Program "
    "Files\\MATLAB\\R2021b\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\reshapeSizeChecks.m" /* pathName */
};

static emlrtRTEInfo emlrtRTEI = {
    116,               /* lineNo */
    9,                 /* colNo */
    "computeDimsData", /* fName */
    "D:\\Program "
    "Files\\MATLAB\\R2021b\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\reshapeSizeChecks.m" /* pName */
};

static emlrtRTEInfo b_emlrtRTEI = {
    59,                  /* lineNo */
    23,                  /* colNo */
    "reshapeSizeChecks", /* fName */
    "D:\\Program "
    "Files\\MATLAB\\R2021b\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\reshapeSizeChecks.m" /* pName */
};

static emlrtRTEInfo c_emlrtRTEI = {
    52,                  /* lineNo */
    13,                  /* colNo */
    "reshapeSizeChecks", /* fName */
    "D:\\Program "
    "Files\\MATLAB\\R2021b\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\reshapeSizeChecks.m" /* pName */
};

static emlrtRTEInfo d_emlrtRTEI = {
    47,                                         /* lineNo */
    9,                                          /* colNo */
    "getQuadTree",                              /* fName */
    "D:\\correspondence\\render\\getQuadTree.m" /* pName */
};

static emlrtBCInfo emlrtBCI = {
    1,                                           /* iFirst */
    10000,                                       /* iLast */
    88,                                          /* lineNo */
    25,                                          /* colNo */
    "bins",                                      /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    3                                            /* checkKind */
};

static emlrtBCInfo b_emlrtBCI = {
    1,                                           /* iFirst */
    10000,                                       /* iLast */
    105,                                         /* lineNo */
    34,                                          /* colNo */
    "bins",                                      /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    3                                            /* checkKind */
};

static emlrtDCInfo emlrtDCI = {
    113,                                         /* lineNo */
    22,                                          /* colNo */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    1                                            /* checkKind */
};

static emlrtBCInfo c_emlrtBCI = {
    1,                                           /* iFirst */
    61,                                          /* iLast */
    113,                                         /* lineNo */
    22,                                          /* colNo */
    "bins",                                      /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    3                                            /* checkKind */
};

static emlrtBCInfo d_emlrtBCI = {
    -1,                                          /* iFirst */
    -1,                                          /* iLast */
    127,                                         /* lineNo */
    62,                                          /* colNo */
    "distances",                                 /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtBCInfo e_emlrtBCI = {
    -1,                                          /* iFirst */
    -1,                                          /* iLast */
    129,                                         /* lineNo */
    68,                                          /* colNo */
    "distances",                                 /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtBCInfo f_emlrtBCI = {
    -1,                                          /* iFirst */
    -1,                                          /* iLast */
    130,                                         /* lineNo */
    68,                                          /* colNo */
    "distances",                                 /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtBCInfo g_emlrtBCI = {
    -1,                                          /* iFirst */
    -1,                                          /* iLast */
    131,                                         /* lineNo */
    68,                                          /* colNo */
    "distances",                                 /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtBCInfo h_emlrtBCI = {
    -1,                                          /* iFirst */
    -1,                                          /* iLast */
    132,                                         /* lineNo */
    68,                                          /* colNo */
    "distances",                                 /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtDCInfo b_emlrtDCI = {
    34,                                          /* lineNo */
    22,                                          /* colNo */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    1                                            /* checkKind */
};

static emlrtDCInfo c_emlrtDCI = {
    34,                                          /* lineNo */
    1,                                           /* colNo */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    1                                            /* checkKind */
};

static emlrtBCInfo i_emlrtBCI = {
    1,                                           /* iFirst */
    10000,                                       /* iLast */
    55,                                          /* lineNo */
    27,                                          /* colNo */
    "bins",                                      /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtDCInfo d_emlrtDCI = {
    55,                                          /* lineNo */
    27,                                          /* colNo */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    1                                            /* checkKind */
};

static emlrtBCInfo j_emlrtBCI = {
    -1,                                          /* iFirst */
    -1,                                          /* iLast */
    95,                                          /* lineNo */
    27,                                          /* colNo */
    "mins",                                      /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtDCInfo e_emlrtDCI = {
    95,                                          /* lineNo */
    27,                                          /* colNo */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    1                                            /* checkKind */
};

static emlrtBCInfo k_emlrtBCI = {
    1,                                           /* iFirst */
    61,                                          /* iLast */
    79,                                          /* lineNo */
    21,                                          /* colNo */
    "bins",                                      /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtBCInfo l_emlrtBCI = {
    -1,                                          /* iFirst */
    -1,                                          /* iLast */
    95,                                          /* lineNo */
    67,                                          /* colNo */
    "maxes",                                     /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtBCInfo m_emlrtBCI = {
    -1,                                          /* iFirst */
    -1,                                          /* iLast */
    96,                                          /* lineNo */
    28,                                          /* colNo */
    "mins",                                      /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtBCInfo n_emlrtBCI = {
    -1,                                          /* iFirst */
    -1,                                          /* iLast */
    96,                                          /* lineNo */
    66,                                          /* colNo */
    "maxes",                                     /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtBCInfo o_emlrtBCI = {
    -1,                                          /* iFirst */
    -1,                                          /* iLast */
    72,                                          /* lineNo */
    34,                                          /* colNo */
    "mins",                                      /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtDCInfo f_emlrtDCI = {
    72,                                          /* lineNo */
    34,                                          /* colNo */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    1                                            /* checkKind */
};

static emlrtBCInfo p_emlrtBCI = {
    -1,                                          /* iFirst */
    -1,                                          /* iLast */
    72,                                          /* lineNo */
    79,                                          /* colNo */
    "mins",                                      /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtBCInfo q_emlrtBCI = {
    -1,                                          /* iFirst */
    -1,                                          /* iLast */
    72,                                          /* lineNo */
    130,                                         /* colNo */
    "maxes",                                     /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtBCInfo r_emlrtBCI = {
    -1,                                          /* iFirst */
    -1,                                          /* iLast */
    72,                                          /* lineNo */
    177,                                         /* colNo */
    "maxes",                                     /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtBCInfo s_emlrtBCI = {
    1,                                           /* iFirst */
    10000,                                       /* iLast */
    110,                                         /* lineNo */
    44,                                          /* colNo */
    "bins",                                      /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtDCInfo g_emlrtDCI = {
    110,                                         /* lineNo */
    44,                                          /* colNo */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    1                                            /* checkKind */
};

static emlrtBCInfo t_emlrtBCI = {
    -1,                                          /* iFirst */
    -1,                                          /* iLast */
    119,                                         /* lineNo */
    38,                                          /* colNo */
    "mins",                                      /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtBCInfo u_emlrtBCI = {
    -1,                                          /* iFirst */
    -1,                                          /* iLast */
    119,                                         /* lineNo */
    68,                                          /* colNo */
    "maxes",                                     /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtBCInfo v_emlrtBCI = {
    -1,                                          /* iFirst */
    -1,                                          /* iLast */
    120,                                         /* lineNo */
    38,                                          /* colNo */
    "mins",                                      /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtBCInfo w_emlrtBCI = {
    -1,                                          /* iFirst */
    -1,                                          /* iLast */
    120,                                         /* lineNo */
    68,                                          /* colNo */
    "maxes",                                     /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtBCInfo x_emlrtBCI = {
    -1,                                          /* iFirst */
    -1,                                          /* iLast */
    122,                                         /* lineNo */
    55,                                          /* colNo */
    "mins",                                      /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtBCInfo y_emlrtBCI = {
    -1,                                          /* iFirst */
    -1,                                          /* iLast */
    122,                                         /* lineNo */
    30,                                          /* colNo */
    "distances",                                 /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtBCInfo ab_emlrtBCI = {
    -1,                                          /* iFirst */
    -1,                                          /* iLast */
    123,                                         /* lineNo */
    51,                                          /* colNo */
    "maxes",                                     /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtBCInfo bb_emlrtBCI = {
    -1,                                          /* iFirst */
    -1,                                          /* iLast */
    123,                                         /* lineNo */
    30,                                          /* colNo */
    "distances",                                 /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtBCInfo cb_emlrtBCI = {
    -1,                                          /* iFirst */
    -1,                                          /* iLast */
    124,                                         /* lineNo */
    55,                                          /* colNo */
    "mins",                                      /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtBCInfo db_emlrtBCI = {
    -1,                                          /* iFirst */
    -1,                                          /* iLast */
    124,                                         /* lineNo */
    30,                                          /* colNo */
    "distances",                                 /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtBCInfo eb_emlrtBCI = {
    -1,                                          /* iFirst */
    -1,                                          /* iLast */
    125,                                         /* lineNo */
    51,                                          /* colNo */
    "maxes",                                     /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtBCInfo fb_emlrtBCI = {
    -1,                                          /* iFirst */
    -1,                                          /* iLast */
    125,                                         /* lineNo */
    30,                                          /* colNo */
    "distances",                                 /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtBCInfo gb_emlrtBCI = {
    -1,                                          /* iFirst */
    -1,                                          /* iLast */
    127,                                         /* lineNo */
    34,                                          /* colNo */
    "distances",                                 /* aName */
    "getQuadTree",                               /* fName */
    "D:\\correspondence\\render\\getQuadTree.m", /* pName */
    0                                            /* checkKind */
};

static emlrtRTEInfo g_emlrtRTEI = {
    34,                                         /* lineNo */
    1,                                          /* colNo */
    "getQuadTree",                              /* fName */
    "D:\\correspondence\\render\\getQuadTree.m" /* pName */
};

static emlrtRTEInfo h_emlrtRTEI = {
    36,                                         /* lineNo */
    21,                                         /* colNo */
    "getQuadTree",                              /* fName */
    "D:\\correspondence\\render\\getQuadTree.m" /* pName */
};

static emlrtRTEInfo i_emlrtRTEI = {
    454,             /* lineNo */
    21,              /* colNo */
    "unaryMinOrMax", /* fName */
    "D:\\Program "
    "Files\\MATLAB\\R2021b\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\unaryMinOrMax.m" /* pName */
};

static emlrtRTEInfo j_emlrtRTEI = {
    37,                                         /* lineNo */
    21,                                         /* colNo */
    "getQuadTree",                              /* fName */
    "D:\\correspondence\\render\\getQuadTree.m" /* pName */
};

static emlrtRTEInfo k_emlrtRTEI = {
    38,                                         /* lineNo */
    21,                                         /* colNo */
    "getQuadTree",                              /* fName */
    "D:\\correspondence\\render\\getQuadTree.m" /* pName */
};

static emlrtRTEInfo l_emlrtRTEI = {
    39,                                         /* lineNo */
    22,                                         /* colNo */
    "getQuadTree",                              /* fName */
    "D:\\correspondence\\render\\getQuadTree.m" /* pName */
};

static emlrtRTEInfo m_emlrtRTEI = {
    142,                                        /* lineNo */
    1,                                          /* colNo */
    "getQuadTree",                              /* fName */
    "D:\\correspondence\\render\\getQuadTree.m" /* pName */
};

static emlrtRTEInfo n_emlrtRTEI = {
    36,                                         /* lineNo */
    1,                                          /* colNo */
    "getQuadTree",                              /* fName */
    "D:\\correspondence\\render\\getQuadTree.m" /* pName */
};

static emlrtRTEInfo o_emlrtRTEI = {
    37,                                         /* lineNo */
    1,                                          /* colNo */
    "getQuadTree",                              /* fName */
    "D:\\correspondence\\render\\getQuadTree.m" /* pName */
};

static emlrtRTEInfo p_emlrtRTEI = {
    38,                                         /* lineNo */
    1,                                          /* colNo */
    "getQuadTree",                              /* fName */
    "D:\\correspondence\\render\\getQuadTree.m" /* pName */
};

static emlrtRTEInfo q_emlrtRTEI = {
    39,                                         /* lineNo */
    1,                                          /* colNo */
    "getQuadTree",                              /* fName */
    "D:\\correspondence\\render\\getQuadTree.m" /* pName */
};

static emlrtRTEInfo r_emlrtRTEI = {
    40,                                         /* lineNo */
    1,                                          /* colNo */
    "getQuadTree",                              /* fName */
    "D:\\correspondence\\render\\getQuadTree.m" /* pName */
};

static emlrtRTEInfo s_emlrtRTEI = {
    41,                                         /* lineNo */
    1,                                          /* colNo */
    "getQuadTree",                              /* fName */
    "D:\\correspondence\\render\\getQuadTree.m" /* pName */
};

static emlrtRTEInfo t_emlrtRTEI = {
    1,                                          /* lineNo */
    30,                                         /* colNo */
    "getQuadTree",                              /* fName */
    "D:\\correspondence\\render\\getQuadTree.m" /* pName */
};

/* Function Definitions */
void getQuadTree(getQuadTreeStackData *SD, const emlrtStack *sp,
                 const emxArray_real32_T *allVerts2d, emxArray_real_T *bins,
                 emxArray_real_T *distances)
{
  emlrtStack b_st;
  emlrtStack st;
  emxArray_real32_T *maxes;
  emxArray_real32_T *mins;
  emxArray_real32_T *r;
  emxArray_real32_T *xMaxes;
  emxArray_real32_T *xMins;
  emxArray_real32_T *yMaxes;
  emxArray_real32_T *yMins;
  real_T bin[61];
  real_T canidateBounds[9];
  real_T binInd;
  real_T binInds_data;
  real_T count;
  real_T midX;
  real_T vertInd;
  real_T *distances_data;
  int32_T binInds_size[2];
  int32_T b_i;
  int32_T binsSize;
  int32_T c_i;
  int32_T calclen;
  int32_T exitg1;
  int32_T i;
  int32_T i1;
  int32_T i2;
  int32_T j;
  int32_T maxdimlen;
  const real32_T *allVerts2d_data;
  real32_T a;
  real32_T b;
  real32_T f;
  real32_T *r1;
  real32_T *xMaxes_data;
  real32_T *xMins_data;
  boolean_T exitg2;
  boolean_T fits;
  boolean_T horzSplit;
  st.prev = sp;
  st.tls = sp->tls;
  b_st.prev = &st;
  b_st.tls = st.tls;
  allVerts2d_data = allVerts2d->data;
  emlrtHeapReferenceStackEnterFcnR2012b((emlrtCTX)sp);
  /*  child1 = 1; */
  /*  child2 = 2; */
  /*  child3 = 3; */
  /*  child4 = 4; */
  memset(&bin[0], 0, 61U * sizeof(real_T));
  bin[5] = -1.0;
  bin[6] = 1.0;
  bin[7] = -1.0;
  bin[8] = 1.0;
  memset(&SD->f0.bins[0], 0, 610000U * sizeof(real_T));
  /*  bins = []; */
  /*  coder.varsize('bins'); */
  memcpy(&SD->f0.bins[0], &bin[0], 61U * sizeof(real_T));
  binsSize = 1;
  i = distances->size[0] * distances->size[1];
  distances->size[0] = 4;
  emxEnsureCapacity_real_T(sp, distances, i, &g_emlrtRTEI);
  count = (real_T)allVerts2d->size[1] / 3.0;
  if (count != muDoubleScalarFloor(count)) {
    emlrtIntegerCheckR2012b(count, &b_emlrtDCI, (emlrtCTX)sp);
  }
  i = distances->size[0] * distances->size[1];
  distances->size[1] = (int32_T)count;
  emxEnsureCapacity_real_T(sp, distances, i, &g_emlrtRTEI);
  distances_data = distances->data;
  count = (real_T)allVerts2d->size[1] / 3.0;
  if (count != muDoubleScalarFloor(count)) {
    emlrtIntegerCheckR2012b(count, &c_emlrtDCI, (emlrtCTX)sp);
  }
  maxdimlen = (int32_T)count << 2;
  for (i = 0; i < maxdimlen; i++) {
    distances_data[i] = 0.0;
  }
  emxInit_real32_T(sp, &r, &t_emlrtRTEI);
  maxdimlen = allVerts2d->size[1];
  i = r->size[0] * r->size[1];
  r->size[0] = 1;
  r->size[1] = allVerts2d->size[1];
  emxEnsureCapacity_real32_T(sp, r, i, &h_emlrtRTEI);
  r1 = r->data;
  for (i = 0; i < maxdimlen; i++) {
    r1[i] = allVerts2d_data[2 * i];
  }
  st.site = &i_emlrtRSI;
  i = allVerts2d->size[1];
  b_st.site = &j_emlrtRSI;
  calclen = allVerts2d->size[1] / 3;
  if (calclen > allVerts2d->size[1]) {
    emlrtErrorWithMessageIdR2018a(&b_st, &emlrtRTEI,
                                  "Coder:builtins:AssertionFailed",
                                  "Coder:builtins:AssertionFailed", 0);
  }
  maxdimlen = 1;
  if (allVerts2d->size[1] > 1) {
    maxdimlen = allVerts2d->size[1];
  }
  maxdimlen = muIntScalarMax_sint32(i, maxdimlen);
  if (3 > maxdimlen) {
    emlrtErrorWithMessageIdR2018a(&st, &c_emlrtRTEI,
                                  "Coder:toolbox:reshape_emptyReshapeLimit",
                                  "Coder:toolbox:reshape_emptyReshapeLimit", 0);
  }
  if (calclen > maxdimlen) {
    emlrtErrorWithMessageIdR2018a(&st, &c_emlrtRTEI,
                                  "Coder:toolbox:reshape_emptyReshapeLimit",
                                  "Coder:toolbox:reshape_emptyReshapeLimit", 0);
  }
  if (3 * calclen != allVerts2d->size[1]) {
    emlrtErrorWithMessageIdR2018a(
        &st, &b_emlrtRTEI, "Coder:MATLAB:getReshapeDims_notSameNumel",
        "Coder:MATLAB:getReshapeDims_notSameNumel", 0);
  }
  emxInit_real32_T(&st, &xMins, &n_emlrtRTEI);
  i = xMins->size[0] * xMins->size[1];
  xMins->size[0] = 1;
  xMins->size[1] = calclen;
  emxEnsureCapacity_real32_T(sp, xMins, i, &i_emlrtRTEI);
  xMins_data = xMins->data;
  if (calclen >= 1) {
    for (j = 0; j < calclen; j++) {
      a = r1[3 * j];
      maxdimlen = 3 * j + 1;
      b = r1[maxdimlen];
      if (muSingleScalarIsNaN(b)) {
        fits = false;
      } else if (muSingleScalarIsNaN(a)) {
        fits = true;
      } else {
        fits = (a > b);
      }
      if (fits) {
        a = r1[maxdimlen];
      }
      maxdimlen = 3 * j + 2;
      b = r1[maxdimlen];
      if (muSingleScalarIsNaN(b)) {
        fits = false;
      } else if (muSingleScalarIsNaN(a)) {
        fits = true;
      } else {
        fits = (a > b);
      }
      if (fits) {
        a = r1[maxdimlen];
      }
      xMins_data[j] = a;
    }
  }
  maxdimlen = allVerts2d->size[1];
  i = r->size[0] * r->size[1];
  r->size[0] = 1;
  r->size[1] = allVerts2d->size[1];
  emxEnsureCapacity_real32_T(sp, r, i, &j_emlrtRTEI);
  r1 = r->data;
  for (i = 0; i < maxdimlen; i++) {
    r1[i] = allVerts2d_data[2 * i];
  }
  st.site = &h_emlrtRSI;
  i = allVerts2d->size[1];
  b_st.site = &j_emlrtRSI;
  calclen = allVerts2d->size[1] / 3;
  if (calclen > allVerts2d->size[1]) {
    emlrtErrorWithMessageIdR2018a(&b_st, &emlrtRTEI,
                                  "Coder:builtins:AssertionFailed",
                                  "Coder:builtins:AssertionFailed", 0);
  }
  maxdimlen = 1;
  if (allVerts2d->size[1] > 1) {
    maxdimlen = allVerts2d->size[1];
  }
  maxdimlen = muIntScalarMax_sint32(i, maxdimlen);
  if (3 > maxdimlen) {
    emlrtErrorWithMessageIdR2018a(&st, &c_emlrtRTEI,
                                  "Coder:toolbox:reshape_emptyReshapeLimit",
                                  "Coder:toolbox:reshape_emptyReshapeLimit", 0);
  }
  if (calclen > maxdimlen) {
    emlrtErrorWithMessageIdR2018a(&st, &c_emlrtRTEI,
                                  "Coder:toolbox:reshape_emptyReshapeLimit",
                                  "Coder:toolbox:reshape_emptyReshapeLimit", 0);
  }
  if (3 * calclen != allVerts2d->size[1]) {
    emlrtErrorWithMessageIdR2018a(
        &st, &b_emlrtRTEI, "Coder:MATLAB:getReshapeDims_notSameNumel",
        "Coder:MATLAB:getReshapeDims_notSameNumel", 0);
  }
  emxInit_real32_T(&st, &xMaxes, &o_emlrtRTEI);
  i = xMaxes->size[0] * xMaxes->size[1];
  xMaxes->size[0] = 1;
  xMaxes->size[1] = calclen;
  emxEnsureCapacity_real32_T(sp, xMaxes, i, &i_emlrtRTEI);
  xMaxes_data = xMaxes->data;
  if (calclen >= 1) {
    for (j = 0; j < calclen; j++) {
      a = r1[3 * j];
      maxdimlen = 3 * j + 1;
      b = r1[maxdimlen];
      if (muSingleScalarIsNaN(b)) {
        fits = false;
      } else if (muSingleScalarIsNaN(a)) {
        fits = true;
      } else {
        fits = (a < b);
      }
      if (fits) {
        a = r1[maxdimlen];
      }
      maxdimlen = 3 * j + 2;
      b = r1[maxdimlen];
      if (muSingleScalarIsNaN(b)) {
        fits = false;
      } else if (muSingleScalarIsNaN(a)) {
        fits = true;
      } else {
        fits = (a < b);
      }
      if (fits) {
        a = r1[maxdimlen];
      }
      xMaxes_data[j] = a;
    }
  }
  maxdimlen = allVerts2d->size[1];
  i = r->size[0] * r->size[1];
  r->size[0] = 1;
  r->size[1] = allVerts2d->size[1];
  emxEnsureCapacity_real32_T(sp, r, i, &k_emlrtRTEI);
  r1 = r->data;
  for (i = 0; i < maxdimlen; i++) {
    r1[i] = allVerts2d_data[2 * i + 1];
  }
  st.site = &g_emlrtRSI;
  i = allVerts2d->size[1];
  b_st.site = &j_emlrtRSI;
  calclen = allVerts2d->size[1] / 3;
  if (calclen > allVerts2d->size[1]) {
    emlrtErrorWithMessageIdR2018a(&b_st, &emlrtRTEI,
                                  "Coder:builtins:AssertionFailed",
                                  "Coder:builtins:AssertionFailed", 0);
  }
  maxdimlen = 1;
  if (allVerts2d->size[1] > 1) {
    maxdimlen = allVerts2d->size[1];
  }
  maxdimlen = muIntScalarMax_sint32(i, maxdimlen);
  if (3 > maxdimlen) {
    emlrtErrorWithMessageIdR2018a(&st, &c_emlrtRTEI,
                                  "Coder:toolbox:reshape_emptyReshapeLimit",
                                  "Coder:toolbox:reshape_emptyReshapeLimit", 0);
  }
  if (calclen > maxdimlen) {
    emlrtErrorWithMessageIdR2018a(&st, &c_emlrtRTEI,
                                  "Coder:toolbox:reshape_emptyReshapeLimit",
                                  "Coder:toolbox:reshape_emptyReshapeLimit", 0);
  }
  if (3 * calclen != allVerts2d->size[1]) {
    emlrtErrorWithMessageIdR2018a(
        &st, &b_emlrtRTEI, "Coder:MATLAB:getReshapeDims_notSameNumel",
        "Coder:MATLAB:getReshapeDims_notSameNumel", 0);
  }
  emxInit_real32_T(&st, &yMins, &p_emlrtRTEI);
  i = yMins->size[0] * yMins->size[1];
  yMins->size[0] = 1;
  yMins->size[1] = calclen;
  emxEnsureCapacity_real32_T(sp, yMins, i, &i_emlrtRTEI);
  xMins_data = yMins->data;
  if (calclen >= 1) {
    for (j = 0; j < calclen; j++) {
      a = r1[3 * j];
      maxdimlen = 3 * j + 1;
      b = r1[maxdimlen];
      if (muSingleScalarIsNaN(b)) {
        fits = false;
      } else if (muSingleScalarIsNaN(a)) {
        fits = true;
      } else {
        fits = (a > b);
      }
      if (fits) {
        a = r1[maxdimlen];
      }
      maxdimlen = 3 * j + 2;
      b = r1[maxdimlen];
      if (muSingleScalarIsNaN(b)) {
        fits = false;
      } else if (muSingleScalarIsNaN(a)) {
        fits = true;
      } else {
        fits = (a > b);
      }
      if (fits) {
        a = r1[maxdimlen];
      }
      xMins_data[j] = a;
    }
  }
  maxdimlen = allVerts2d->size[1];
  i = r->size[0] * r->size[1];
  r->size[0] = 1;
  r->size[1] = allVerts2d->size[1];
  emxEnsureCapacity_real32_T(sp, r, i, &l_emlrtRTEI);
  r1 = r->data;
  for (i = 0; i < maxdimlen; i++) {
    r1[i] = allVerts2d_data[2 * i + 1];
  }
  st.site = &f_emlrtRSI;
  i = allVerts2d->size[1];
  b_st.site = &j_emlrtRSI;
  calclen = allVerts2d->size[1] / 3;
  if (calclen > allVerts2d->size[1]) {
    emlrtErrorWithMessageIdR2018a(&b_st, &emlrtRTEI,
                                  "Coder:builtins:AssertionFailed",
                                  "Coder:builtins:AssertionFailed", 0);
  }
  maxdimlen = 1;
  if (allVerts2d->size[1] > 1) {
    maxdimlen = allVerts2d->size[1];
  }
  maxdimlen = muIntScalarMax_sint32(i, maxdimlen);
  if (3 > maxdimlen) {
    emlrtErrorWithMessageIdR2018a(&st, &c_emlrtRTEI,
                                  "Coder:toolbox:reshape_emptyReshapeLimit",
                                  "Coder:toolbox:reshape_emptyReshapeLimit", 0);
  }
  if (calclen > maxdimlen) {
    emlrtErrorWithMessageIdR2018a(&st, &c_emlrtRTEI,
                                  "Coder:toolbox:reshape_emptyReshapeLimit",
                                  "Coder:toolbox:reshape_emptyReshapeLimit", 0);
  }
  if (3 * calclen != allVerts2d->size[1]) {
    emlrtErrorWithMessageIdR2018a(
        &st, &b_emlrtRTEI, "Coder:MATLAB:getReshapeDims_notSameNumel",
        "Coder:MATLAB:getReshapeDims_notSameNumel", 0);
  }
  emxInit_real32_T(&st, &yMaxes, &q_emlrtRTEI);
  i = yMaxes->size[0] * yMaxes->size[1];
  yMaxes->size[0] = 1;
  yMaxes->size[1] = calclen;
  emxEnsureCapacity_real32_T(sp, yMaxes, i, &i_emlrtRTEI);
  xMins_data = yMaxes->data;
  if (calclen >= 1) {
    for (j = 0; j < calclen; j++) {
      a = r1[3 * j];
      maxdimlen = 3 * j + 1;
      b = r1[maxdimlen];
      if (muSingleScalarIsNaN(b)) {
        fits = false;
      } else if (muSingleScalarIsNaN(a)) {
        fits = true;
      } else {
        fits = (a < b);
      }
      if (fits) {
        a = r1[maxdimlen];
      }
      maxdimlen = 3 * j + 2;
      b = r1[maxdimlen];
      if (muSingleScalarIsNaN(b)) {
        fits = false;
      } else if (muSingleScalarIsNaN(a)) {
        fits = true;
      } else {
        fits = (a < b);
      }
      if (fits) {
        a = r1[maxdimlen];
      }
      xMins_data[j] = a;
    }
  }
  emxFree_real32_T(sp, &r);
  emxInit_real32_T(sp, &mins, &r_emlrtRTEI);
  emxInit_real32_T(sp, &maxes, &s_emlrtRTEI);
  st.site = &e_emlrtRSI;
  cat(&st, xMins, yMins, mins);
  xMins_data = mins->data;
  st.site = &d_emlrtRSI;
  cat(&st, xMaxes, yMaxes, maxes);
  xMaxes_data = maxes->data;
  emxFree_real32_T(sp, &yMaxes);
  emxFree_real32_T(sp, &yMins);
  emxFree_real32_T(sp, &xMaxes);
  emxFree_real32_T(sp, &xMins);
  memset(&canidateBounds[0], 0, 9U * sizeof(real_T));
  i = (int32_T)(((real_T)allVerts2d->size[1] + 2.0) / 3.0);
  emlrtForLoopVectorCheckR2021a(1.0, 3.0, allVerts2d->size[1], mxDOUBLE_CLASS,
                                i, &d_emlrtRTEI, (emlrtCTX)sp);
  for (b_i = 0; b_i < i; b_i++) {
    c_i = b_i * 3 + 1;
    binInds_size[1] = 1;
    binInds_data = 1.0;
    do {
      exitg1 = 0;
      if (*emlrtBreakCheckR2012bFlagVar != 0) {
        emlrtBreakCheckR2012b((emlrtCTX)sp);
      }
      if (binInds_size[1] != 0) {
        binInd = binInds_data;
        st.site = &c_emlrtRSI;
        indexShapeCheck(&st);
        binInds_size[0] = 1;
        binInds_size[1] = 0;
        vertInd = ((real_T)c_i - 1.0) / 3.0 + 1.0;
        fits = false;
        maxdimlen = -1;
        if (binInds_data != (int32_T)muDoubleScalarFloor(binInds_data)) {
          emlrtIntegerCheckR2012b(binInds_data, &d_emlrtDCI, (emlrtCTX)sp);
        }
        if (((int32_T)binInds_data < 1) || ((int32_T)binInds_data > 10000)) {
          emlrtDynamicBoundsCheckR2012b((int32_T)binInds_data, 1, 10000,
                                        &i_emlrtBCI, (emlrtCTX)sp);
        }
        i1 = 61 * ((int32_T)binInds_data - 1);
        count = SD->f0.bins[i1 + 10];
        if (count < 4.0) {
          maxdimlen = 0;
          calclen = 0;
          exitg2 = false;
          while ((!exitg2) && (calclen < 4)) {
            maxdimlen = calclen;
            canidateBounds[5] = SD->f0.bins[i1 + 5];
            canidateBounds[6] = SD->f0.bins[i1 + 6];
            canidateBounds[7] = SD->f0.bins[i1 + 7];
            canidateBounds[8] = SD->f0.bins[i1 + 8];
            switch (calclen + 1) {
            case 1:
              canidateBounds[6] -=
                  (canidateBounds[6] - canidateBounds[5]) / 2.0;
              canidateBounds[7] +=
                  (canidateBounds[8] - canidateBounds[7]) / 2.0;
              break;
            case 2:
              canidateBounds[5] +=
                  (canidateBounds[6] - canidateBounds[5]) / 2.0;
              canidateBounds[7] +=
                  (canidateBounds[8] - canidateBounds[7]) / 2.0;
              break;
            case 3:
              canidateBounds[6] -=
                  (canidateBounds[6] - canidateBounds[5]) / 2.0;
              canidateBounds[8] -=
                  (canidateBounds[8] - canidateBounds[7]) / 2.0;
              break;
            default:
              canidateBounds[5] +=
                  (canidateBounds[6] - canidateBounds[5]) / 2.0;
              canidateBounds[8] -=
                  (canidateBounds[8] - canidateBounds[7]) / 2.0;
              break;
            }
            if (vertInd != muDoubleScalarFloor(vertInd)) {
              emlrtIntegerCheckR2012b(vertInd, &f_emlrtDCI, (emlrtCTX)sp);
            }
            if ((int32_T)vertInd > mins->size[1]) {
              emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1, mins->size[1],
                                            &o_emlrtBCI, (emlrtCTX)sp);
            }
            i2 = 2 * ((int32_T)vertInd - 1);
            if (xMins_data[i2] < canidateBounds[5]) {
              fits = true;
            } else {
              if ((int32_T)vertInd > mins->size[1]) {
                emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1,
                                              mins->size[1], &p_emlrtBCI,
                                              (emlrtCTX)sp);
              }
              j = 2 * ((int32_T)vertInd - 1) + 1;
              if (xMins_data[j] < canidateBounds[7]) {
                fits = true;
              } else {
                if ((int32_T)vertInd > maxes->size[1]) {
                  emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1,
                                                maxes->size[1], &q_emlrtBCI,
                                                (emlrtCTX)sp);
                }
                if (xMaxes_data[i2] > canidateBounds[6]) {
                  fits = true;
                } else {
                  if ((int32_T)vertInd > maxes->size[1]) {
                    emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1,
                                                  maxes->size[1], &r_emlrtBCI,
                                                  (emlrtCTX)sp);
                  }
                  if (xMaxes_data[j] > canidateBounds[8]) {
                    fits = true;
                  } else {
                    fits = false;
                  }
                }
              }
            }
            fits = !fits;
            if (fits) {
              exitg2 = true;
            } else {
              calclen++;
              if (*emlrtBreakCheckR2012bFlagVar != 0) {
                emlrtBreakCheckR2012b((emlrtCTX)sp);
              }
            }
          }
        }
        if (fits) {
          /*  create bin and add to stack */
          if (maxdimlen + 1 < 1) {
            emlrtDynamicBoundsCheckR2012b(0, 1, 61, &k_emlrtBCI, (emlrtCTX)sp);
          }
          i1 += maxdimlen;
          if (SD->f0.bins[i1] != 0.0) {
            /*  child already exists */
            st.site = &b_emlrtRSI;
            b_cat(SD->f0.bins[maxdimlen + 61 * ((int32_T)binInds_data - 1)],
                  (real_T *)&count, binInds_size);
            binInds_size[1] = 1;
            binInds_data = count;
          } else {
            /*  create new child */
            memset(&bin[0], 0, 61U * sizeof(real_T));
            bin[5] = canidateBounds[5];
            bin[6] = canidateBounds[6];
            bin[7] = canidateBounds[7];
            bin[8] = canidateBounds[8];
            bin[10] = count + 1.0;
            /*                  bins = cat(2, bins, newBin); */
            binsSize++;
            if (binsSize > 10000) {
              emlrtDynamicBoundsCheckR2012b(10001, 1, 10000, &emlrtBCI,
                                            (emlrtCTX)sp);
            }
            memcpy(&SD->f0.bins[binsSize * 61 + -61], &bin[0],
                   61U * sizeof(real_T));
            /* size(bins, 2); */
            SD->f0.bins[i1] = binsSize;
            st.site = &emlrtRSI;
            b_cat(binsSize, (real_T *)&count, binInds_size);
            binInds_size[1] = 1;
            binInds_data = count;
          }
        } else {
          /*  should we insert the triangle? */
          if (vertInd != muDoubleScalarFloor(vertInd)) {
            emlrtIntegerCheckR2012b(vertInd, &e_emlrtDCI, (emlrtCTX)sp);
          }
          if ((int32_T)vertInd > mins->size[1]) {
            emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1, mins->size[1],
                                          &j_emlrtBCI, (emlrtCTX)sp);
          }
          i2 = 2 * ((int32_T)vertInd - 1);
          if (!(xMins_data[i2] > SD->f0.bins[6])) {
            if ((int32_T)vertInd > maxes->size[1]) {
              emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1, maxes->size[1],
                                            &l_emlrtBCI, (emlrtCTX)sp);
            }
            a = xMaxes_data[i2];
            if (!(a < SD->f0.bins[5])) {
              if ((int32_T)vertInd > mins->size[1]) {
                emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1,
                                              mins->size[1], &m_emlrtBCI,
                                              (emlrtCTX)sp);
              }
              b = xMins_data[i2 + 1];
              if (!(b > SD->f0.bins[8])) {
                if ((int32_T)vertInd > maxes->size[1]) {
                  emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1,
                                                maxes->size[1], &n_emlrtBCI,
                                                (emlrtCTX)sp);
                }
                f = xMaxes_data[i2 + 1];
                if (!(f < SD->f0.bins[7])) {
                  count = SD->f0.bins[i1 + 9];
                  while (count >= 50.0) {
                    i1 = 61 * ((int32_T)binInd - 1);
                    if (SD->f0.bins[i1 + 4] == 0.0) {
                      /*  add new noverflow bin */
                      memset(&bin[0], 0, 61U * sizeof(real_T));
                      bin[5] = SD->f0.bins[i1 + 5];
                      bin[6] = SD->f0.bins[i1 + 6];
                      bin[7] = SD->f0.bins[i1 + 7];
                      bin[8] = SD->f0.bins[i1 + 8];
                      /*                          bins = cat(2, bins, newBin);
                       */
                      binsSize++;
                      if (binsSize > 10000) {
                        emlrtDynamicBoundsCheckR2012b(
                            10001, 1, 10000, &b_emlrtBCI, (emlrtCTX)sp);
                      }
                      memcpy(&SD->f0.bins[binsSize * 61 + -61], &bin[0],
                             61U * sizeof(real_T));
                      SD->f0.bins[i1 + 4] = binsSize;
                    }
                    binInd = SD->f0.bins[i1 + 4];
                    if (binInd != (int32_T)muDoubleScalarFloor(binInd)) {
                      emlrtIntegerCheckR2012b(binInd, &g_emlrtDCI,
                                              (emlrtCTX)sp);
                    }
                    if (((int32_T)binInd < 1) || ((int32_T)binInd > 10000)) {
                      emlrtDynamicBoundsCheckR2012b((int32_T)binInd, 1, 10000,
                                                    &s_emlrtBCI, (emlrtCTX)sp);
                    }
                    count = SD->f0.bins[61 * ((int32_T)binInd - 1) + 9];
                    if (*emlrtBreakCheckR2012bFlagVar != 0) {
                      emlrtBreakCheckR2012b((emlrtCTX)sp);
                    }
                  }
                  /*  insert vert */
                  if (count + 12.0 !=
                      (int32_T)muDoubleScalarFloor(count + 12.0)) {
                    emlrtIntegerCheckR2012b(count + 12.0, &emlrtDCI,
                                            (emlrtCTX)sp);
                  }
                  if (((int32_T)(count + 12.0) < 1) ||
                      ((int32_T)(count + 12.0) > 61)) {
                    emlrtDynamicBoundsCheckR2012b((int32_T)(count + 12.0), 1,
                                                  61, &c_emlrtBCI,
                                                  (emlrtCTX)sp);
                  }
                  maxdimlen = 61 * ((int32_T)binInd - 1);
                  SD->f0.bins[((int32_T)(count + 12.0) + maxdimlen) - 1] =
                      vertInd;
                  SD->f0.bins[maxdimlen + 9] = count + 1.0;
                  count = SD->f0.bins[61 * ((int32_T)binInd - 1) + 5];
                  midX = count +
                         (SD->f0.bins[61 * ((int32_T)binInd - 1) + 6] - count) /
                             2.0;
                  count = SD->f0.bins[61 * ((int32_T)binInd - 1) + 7];
                  count +=
                      (SD->f0.bins[61 * ((int32_T)binInd - 1) + 8] - count) /
                      2.0;
                  if ((int32_T)vertInd > mins->size[1]) {
                    emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1,
                                                  mins->size[1], &t_emlrtBCI,
                                                  (emlrtCTX)sp);
                  }
                  if (xMins_data[i2] < midX) {
                    if ((int32_T)vertInd > maxes->size[1]) {
                      emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1,
                                                    maxes->size[1], &u_emlrtBCI,
                                                    (emlrtCTX)sp);
                    }
                    if (a > midX) {
                      fits = true;
                    } else {
                      fits = false;
                    }
                  } else {
                    fits = false;
                  }
                  /* split vert */
                  if ((int32_T)vertInd > mins->size[1]) {
                    emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1,
                                                  mins->size[1], &v_emlrtBCI,
                                                  (emlrtCTX)sp);
                  }
                  if (b < count) {
                    if ((int32_T)vertInd > maxes->size[1]) {
                      emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1,
                                                    maxes->size[1], &w_emlrtBCI,
                                                    (emlrtCTX)sp);
                    }
                    if (f > count) {
                      horzSplit = true;
                    } else {
                      horzSplit = false;
                    }
                  } else {
                    horzSplit = false;
                  }
                  /* split horiontal */
                  if ((int32_T)vertInd > mins->size[1]) {
                    emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1,
                                                  mins->size[1], &x_emlrtBCI,
                                                  (emlrtCTX)sp);
                  }
                  if ((int32_T)vertInd > distances->size[1]) {
                    emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1,
                                                  distances->size[1],
                                                  &y_emlrtBCI, (emlrtCTX)sp);
                  }
                  i1 = 4 * ((int32_T)vertInd - 1);
                  distances_data[i1] = (real32_T)midX - xMins_data[i2];
                  if ((int32_T)vertInd > maxes->size[1]) {
                    emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1,
                                                  maxes->size[1], &ab_emlrtBCI,
                                                  (emlrtCTX)sp);
                  }
                  if ((int32_T)vertInd > distances->size[1]) {
                    emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1,
                                                  distances->size[1],
                                                  &bb_emlrtBCI, (emlrtCTX)sp);
                  }
                  distances_data[i1 + 1] = a - (real32_T)midX;
                  if ((int32_T)vertInd > mins->size[1]) {
                    emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1,
                                                  mins->size[1], &cb_emlrtBCI,
                                                  (emlrtCTX)sp);
                  }
                  if ((int32_T)vertInd > distances->size[1]) {
                    emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1,
                                                  distances->size[1],
                                                  &db_emlrtBCI, (emlrtCTX)sp);
                  }
                  distances_data[i1 + 2] = (real32_T)count - b;
                  if ((int32_T)vertInd > maxes->size[1]) {
                    emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1,
                                                  maxes->size[1], &eb_emlrtBCI,
                                                  (emlrtCTX)sp);
                  }
                  if ((int32_T)vertInd > distances->size[1]) {
                    emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1,
                                                  distances->size[1],
                                                  &fb_emlrtBCI, (emlrtCTX)sp);
                  }
                  distances_data[i1 + 3] = f - (real32_T)count;
                  if ((!fits) && (!horzSplit)) {
                    /*  depth limit must have been reached */
                    if ((int32_T)vertInd > distances->size[1]) {
                      emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1,
                                                    distances->size[1],
                                                    &d_emlrtBCI, (emlrtCTX)sp);
                    }
                    count = distances_data[i1 + 1];
                    midX = distances_data[i1 + 2];
                    binInd = distances_data[i1 + 3];
                    if ((int32_T)vertInd > distances->size[1]) {
                      emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1,
                                                    distances->size[1],
                                                    &gb_emlrtBCI, (emlrtCTX)sp);
                    }
                    distances_data[i1] =
                        muDoubleScalarMax(distances_data[i1], 0.0);
                    if ((int32_T)vertInd > distances->size[1]) {
                      emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1,
                                                    distances->size[1],
                                                    &gb_emlrtBCI, (emlrtCTX)sp);
                    }
                    distances_data[i1 + 1] = muDoubleScalarMax(count, 0.0);
                    if ((int32_T)vertInd > distances->size[1]) {
                      emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1,
                                                    distances->size[1],
                                                    &gb_emlrtBCI, (emlrtCTX)sp);
                    }
                    distances_data[i1 + 2] = muDoubleScalarMax(midX, 0.0);
                    if ((int32_T)vertInd > distances->size[1]) {
                      emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1,
                                                    distances->size[1],
                                                    &gb_emlrtBCI, (emlrtCTX)sp);
                    }
                    distances_data[i1 + 3] = muDoubleScalarMax(binInd, 0.0);
                  } else {
                    if ((int32_T)vertInd > distances->size[1]) {
                      emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1,
                                                    distances->size[1],
                                                    &e_emlrtBCI, (emlrtCTX)sp);
                    }
                    distances_data[i1] *= (real_T)fits;
                    if ((int32_T)vertInd > distances->size[1]) {
                      emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1,
                                                    distances->size[1],
                                                    &f_emlrtBCI, (emlrtCTX)sp);
                    }
                    distances_data[i1 + 1] *= (real_T)fits;
                    if ((int32_T)vertInd > distances->size[1]) {
                      emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1,
                                                    distances->size[1],
                                                    &g_emlrtBCI, (emlrtCTX)sp);
                    }
                    distances_data[i1 + 2] *= (real_T)horzSplit;
                    if ((int32_T)vertInd > distances->size[1]) {
                      emlrtDynamicBoundsCheckR2012b((int32_T)vertInd, 1,
                                                    distances->size[1],
                                                    &h_emlrtBCI, (emlrtCTX)sp);
                    }
                    distances_data[i1 + 3] *= (real_T)horzSplit;
                  }
                }
              }
            }
          }
        }
        if (*emlrtBreakCheckR2012bFlagVar != 0) {
          emlrtBreakCheckR2012b((emlrtCTX)sp);
        }
      } else {
        exitg1 = 1;
      }
    } while (exitg1 == 0);
  }
  emxFree_real32_T(sp, &maxes);
  emxFree_real32_T(sp, &mins);
  i = bins->size[0] * bins->size[1];
  bins->size[0] = 61;
  bins->size[1] = binsSize;
  emxEnsureCapacity_real_T(sp, bins, i, &m_emlrtRTEI);
  distances_data = bins->data;
  for (i = 0; i < binsSize; i++) {
    for (i1 = 0; i1 < 61; i1++) {
      i2 = i1 + 61 * i;
      distances_data[i2] = SD->f0.bins[i2];
    }
  }
  emlrtHeapReferenceStackLeaveFcnR2012b((emlrtCTX)sp);
}

/* End of code generation (getQuadTree.c) */
