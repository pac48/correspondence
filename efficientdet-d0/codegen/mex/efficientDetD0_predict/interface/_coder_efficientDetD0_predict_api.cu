//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// _coder_efficientDetD0_predict_api.cu
//
// Code generation for function '_coder_efficientDetD0_predict_api'
//

// Include files
#include "_coder_efficientDetD0_predict_api.h"
#include "efficientDetD0_predict.h"
#include "efficientDetD0_predict_data.h"
#include "efficientDetD0_predict_types.h"
#include "rt_nonfinite.h"

// Function Declarations
static real32_T (*b_emlrt_marshallIn(const mxArray *src,
                                     const emlrtMsgIdentifier *msgId))[786432];

static real32_T (*emlrt_marshallIn(const mxArray *image,
                                   const char_T *identifier))[786432];

static real32_T (*emlrt_marshallIn(const mxArray *u,
                                   const emlrtMsgIdentifier *parentId))[786432];

static const mxArray *emlrt_marshallOut(const cell_4 *u);

// Function Definitions
static real32_T (*b_emlrt_marshallIn(const mxArray *src,
                                     const emlrtMsgIdentifier *msgId))[786432]
{
  static const int32_T dims[3]{512, 512, 3};
  real32_T(*ret)[786432];
  emlrtCheckBuiltInR2012b(emlrtRootTLSGlobal, msgId, src,
                          (const char_T *)"single", false, 3U,
                          (void *)&dims[0]);
  ret = (real32_T(*)[786432])emlrtMxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static real32_T (*emlrt_marshallIn(const mxArray *image,
                                   const char_T *identifier))[786432]
{
  emlrtMsgIdentifier thisId;
  real32_T(*y)[786432];
  thisId.fIdentifier = const_cast<const char_T *>(identifier);
  thisId.fParent = nullptr;
  thisId.bParentIsCell = false;
  y = emlrt_marshallIn(emlrtAlias(image), &thisId);
  emlrtDestroyArray(&image);
  return y;
}

static real32_T (*emlrt_marshallIn(const mxArray *u,
                                   const emlrtMsgIdentifier *parentId))[786432]
{
  real32_T(*y)[786432];
  y = b_emlrt_marshallIn(emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static const mxArray *emlrt_marshallOut(const cell_4 *u)
{
  static const int32_T iv1[3]{4, 4, 810};
  static const int32_T iv13[3]{8, 8, 36};
  static const int32_T iv17[3]{16, 16, 810};
  static const int32_T iv21[3]{16, 16, 36};
  static const int32_T iv25[3]{32, 32, 810};
  static const int32_T iv29[3]{32, 32, 36};
  static const int32_T iv33[3]{64, 64, 810};
  static const int32_T iv37[3]{64, 64, 36};
  static const int32_T iv5[3]{4, 4, 36};
  static const int32_T iv9[3]{8, 8, 810};
  static const int32_T iv10[2]{1, 4};
  static const int32_T iv11[2]{0, 0};
  static const int32_T iv12[2]{0, 0};
  static const int32_T iv14[2]{1, 4};
  static const int32_T iv15[2]{0, 0};
  static const int32_T iv16[2]{0, 0};
  static const int32_T iv18[2]{1, 4};
  static const int32_T iv19[2]{0, 0};
  static const int32_T iv2[2]{1, 4};
  static const int32_T iv20[2]{0, 0};
  static const int32_T iv22[2]{1, 4};
  static const int32_T iv23[2]{0, 0};
  static const int32_T iv24[2]{0, 0};
  static const int32_T iv26[2]{1, 4};
  static const int32_T iv27[2]{0, 0};
  static const int32_T iv28[2]{0, 0};
  static const int32_T iv3[2]{0, 0};
  static const int32_T iv30[2]{1, 4};
  static const int32_T iv31[2]{0, 0};
  static const int32_T iv32[2]{0, 0};
  static const int32_T iv34[2]{1, 4};
  static const int32_T iv35[2]{0, 0};
  static const int32_T iv36[2]{0, 0};
  static const int32_T iv38[2]{1, 4};
  static const int32_T iv39[2]{0, 0};
  static const int32_T iv4[2]{0, 0};
  static const int32_T iv40[2]{0, 0};
  static const int32_T iv6[2]{1, 4};
  static const int32_T iv7[2]{0, 0};
  static const int32_T iv8[2]{0, 0};
  static const char_T b_u[4]{'S', 'S', 'C', 'B'};
  const mxArray *propValues[4];
  const mxArray *ab_y;
  const mxArray *ac_y;
  const mxArray *b_y;
  const mxArray *bb_y;
  const mxArray *c_y;
  const mxArray *cb_y;
  const mxArray *d_y;
  const mxArray *db_y;
  const mxArray *e_y;
  const mxArray *eb_y;
  const mxArray *f_y;
  const mxArray *fb_y;
  const mxArray *g_y;
  const mxArray *gb_y;
  const mxArray *h_y;
  const mxArray *hb_y;
  const mxArray *i_y;
  const mxArray *ib_y;
  const mxArray *j_y;
  const mxArray *jb_y;
  const mxArray *k_y;
  const mxArray *kb_y;
  const mxArray *l_y;
  const mxArray *lb_y;
  const mxArray *m;
  const mxArray *m1;
  const mxArray *m10;
  const mxArray *m11;
  const mxArray *m16;
  const mxArray *m17;
  const mxArray *m18;
  const mxArray *m19;
  const mxArray *m2;
  const mxArray *m24;
  const mxArray *m25;
  const mxArray *m26;
  const mxArray *m27;
  const mxArray *m3;
  const mxArray *m32;
  const mxArray *m33;
  const mxArray *m34;
  const mxArray *m35;
  const mxArray *m4;
  const mxArray *m40;
  const mxArray *m41;
  const mxArray *m42;
  const mxArray *m43;
  const mxArray *m48;
  const mxArray *m49;
  const mxArray *m50;
  const mxArray *m51;
  const mxArray *m56;
  const mxArray *m57;
  const mxArray *m58;
  const mxArray *m59;
  const mxArray *m64;
  const mxArray *m65;
  const mxArray *m66;
  const mxArray *m67;
  const mxArray *m72;
  const mxArray *m73;
  const mxArray *m74;
  const mxArray *m75;
  const mxArray *m8;
  const mxArray *m9;
  const mxArray *m_y;
  const mxArray *mb_y;
  const mxArray *n_y;
  const mxArray *nb_y;
  const mxArray *o_y;
  const mxArray *ob_y;
  const mxArray *p_y;
  const mxArray *pb_y;
  const mxArray *q_y;
  const mxArray *qb_y;
  const mxArray *r_y;
  const mxArray *rb_y;
  const mxArray *s_y;
  const mxArray *sb_y;
  const mxArray *t_y;
  const mxArray *tb_y;
  const mxArray *u_y;
  const mxArray *ub_y;
  const mxArray *v_y;
  const mxArray *vb_y;
  const mxArray *w_y;
  const mxArray *wb_y;
  const mxArray *x_y;
  const mxArray *xb_y;
  const mxArray *y;
  const mxArray *y_y;
  const mxArray *yb_y;
  int32_T iv[1];
  int32_T b_i;
  int32_T c_i;
  int32_T i;
  int32_T i1;
  real32_T *pData;
  const char_T *b_propClasses[4]{
      "deep.internal.coder.dlarray", "deep.internal.coder.dlarray",
      "deep.internal.coder.dlarray", "deep.internal.coder.dlarray"};
  const char_T *b_propNames[4]{"Data", "DimensionMetadata", "ViewToDataMap",
                               "DataToViewMap"};
  const char_T *c_propClasses[4]{
      "deep.internal.coder.dlarray", "deep.internal.coder.dlarray",
      "deep.internal.coder.dlarray", "deep.internal.coder.dlarray"};
  const char_T *c_propNames[4]{"Data", "DimensionMetadata", "ViewToDataMap",
                               "DataToViewMap"};
  const char_T *d_propClasses[4]{
      "deep.internal.coder.dlarray", "deep.internal.coder.dlarray",
      "deep.internal.coder.dlarray", "deep.internal.coder.dlarray"};
  const char_T *d_propNames[4]{"Data", "DimensionMetadata", "ViewToDataMap",
                               "DataToViewMap"};
  const char_T *e_propClasses[4]{
      "deep.internal.coder.dlarray", "deep.internal.coder.dlarray",
      "deep.internal.coder.dlarray", "deep.internal.coder.dlarray"};
  const char_T *e_propNames[4]{"Data", "DimensionMetadata", "ViewToDataMap",
                               "DataToViewMap"};
  const char_T *f_propClasses[4]{
      "deep.internal.coder.dlarray", "deep.internal.coder.dlarray",
      "deep.internal.coder.dlarray", "deep.internal.coder.dlarray"};
  const char_T *f_propNames[4]{"Data", "DimensionMetadata", "ViewToDataMap",
                               "DataToViewMap"};
  const char_T *g_propClasses[4]{
      "deep.internal.coder.dlarray", "deep.internal.coder.dlarray",
      "deep.internal.coder.dlarray", "deep.internal.coder.dlarray"};
  const char_T *g_propNames[4]{"Data", "DimensionMetadata", "ViewToDataMap",
                               "DataToViewMap"};
  const char_T *h_propClasses[4]{
      "deep.internal.coder.dlarray", "deep.internal.coder.dlarray",
      "deep.internal.coder.dlarray", "deep.internal.coder.dlarray"};
  const char_T *h_propNames[4]{"Data", "DimensionMetadata", "ViewToDataMap",
                               "DataToViewMap"};
  const char_T *i_propClasses[4]{
      "deep.internal.coder.dlarray", "deep.internal.coder.dlarray",
      "deep.internal.coder.dlarray", "deep.internal.coder.dlarray"};
  const char_T *i_propNames[4]{"Data", "DimensionMetadata", "ViewToDataMap",
                               "DataToViewMap"};
  const char_T *j_propClasses[4]{
      "deep.internal.coder.dlarray", "deep.internal.coder.dlarray",
      "deep.internal.coder.dlarray", "deep.internal.coder.dlarray"};
  const char_T *j_propNames[4]{"Data", "DimensionMetadata", "ViewToDataMap",
                               "DataToViewMap"};
  const char_T *propClasses[4]{
      "deep.internal.coder.dlarray", "deep.internal.coder.dlarray",
      "deep.internal.coder.dlarray", "deep.internal.coder.dlarray"};
  const char_T *propNames[4]{"Data", "DimensionMetadata", "ViewToDataMap",
                             "DataToViewMap"};
  y = nullptr;
  iv[0] = 10;
  emlrtAssign(&y, emlrtCreateCellArrayR2014a(1, &iv[0]));
  b_y = nullptr;
  m = nullptr;
  m1 = nullptr;
  m2 = nullptr;
  m3 = nullptr;
  emlrtAssign(&b_y, emlrtCreateClassInstance(
                        (const char_T *)"deep.internal.coder.dlarray"));
  m = nullptr;
  c_y = nullptr;
  m4 =
      emlrtCreateNumericArray(3, (const void *)&iv1[0], mxSINGLE_CLASS, mxREAL);
  pData = (real32_T *)emlrtMxGetData(m4);
  for (b_i = 0; b_i < 810; b_i++) {
    for (c_i = 0; c_i < 4; c_i++) {
      i = (c_i + b_i * 4) * 4;
      pData[i] = u->f1.Data[(c_i << 2) + (b_i << 4)];
      pData[i + 1] = u->f1.Data[((c_i << 2) + (b_i << 4)) + 1];
      pData[i + 2] = u->f1.Data[((c_i << 2) + (b_i << 4)) + 2];
      pData[i + 3] = u->f1.Data[((c_i << 2) + (b_i << 4)) + 3];
    }
  }
  emlrtAssign(&c_y, m4);
  emlrtAssign(&m, c_y);
  propValues[0] = m;
  m1 = nullptr;
  d_y = nullptr;
  m4 = emlrtCreateCharArray(2, &iv2[0]);
  emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 4, m4, &b_u[0]);
  emlrtAssign(&d_y, m4);
  emlrtAssign(&m1, d_y);
  propValues[1] = m1;
  m2 = nullptr;
  e_y = nullptr;
  m4 =
      emlrtCreateNumericArray(2, (const void *)&iv3[0], mxDOUBLE_CLASS, mxREAL);
  emlrtAssign(&e_y, m4);
  emlrtAssign(&m2, e_y);
  propValues[2] = m2;
  m3 = nullptr;
  f_y = nullptr;
  m4 =
      emlrtCreateNumericArray(2, (const void *)&iv4[0], mxDOUBLE_CLASS, mxREAL);
  emlrtAssign(&f_y, m4);
  emlrtAssign(&m3, f_y);
  propValues[3] = m3;
  emlrtSetAllProperties(emlrtRootTLSGlobal, &b_y, 0, 4,
                        (const char_T **)&propNames[0],
                        (const char_T **)&propClasses[0], &propValues[0]);
  emlrtAssign(&b_y, emlrtConvertInstanceToRedirectSource(
                        emlrtRootTLSGlobal, b_y, 0,
                        (const char_T *)"deep.internal.coder.dlarray"));
  emlrtSetCell(y, 0, b_y);
  g_y = nullptr;
  m8 = nullptr;
  m9 = nullptr;
  m10 = nullptr;
  m11 = nullptr;
  emlrtAssign(&g_y, emlrtCreateClassInstance(
                        (const char_T *)"deep.internal.coder.dlarray"));
  m8 = nullptr;
  h_y = nullptr;
  m4 =
      emlrtCreateNumericArray(3, (const void *)&iv5[0], mxSINGLE_CLASS, mxREAL);
  pData = (real32_T *)emlrtMxGetData(m4);
  for (i = 0; i < 36; i++) {
    for (b_i = 0; b_i < 4; b_i++) {
      i1 = (b_i + i * 4) * 4;
      pData[i1] = u->f2.Data[(b_i << 2) + (i << 4)];
      pData[i1 + 1] = u->f2.Data[((b_i << 2) + (i << 4)) + 1];
      pData[i1 + 2] = u->f2.Data[((b_i << 2) + (i << 4)) + 2];
      pData[i1 + 3] = u->f2.Data[((b_i << 2) + (i << 4)) + 3];
    }
  }
  emlrtAssign(&h_y, m4);
  emlrtAssign(&m8, h_y);
  propValues[0] = m8;
  m9 = nullptr;
  i_y = nullptr;
  m4 = emlrtCreateCharArray(2, &iv6[0]);
  emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 4, m4, &b_u[0]);
  emlrtAssign(&i_y, m4);
  emlrtAssign(&m9, i_y);
  propValues[1] = m9;
  m10 = nullptr;
  j_y = nullptr;
  m4 =
      emlrtCreateNumericArray(2, (const void *)&iv7[0], mxDOUBLE_CLASS, mxREAL);
  emlrtAssign(&j_y, m4);
  emlrtAssign(&m10, j_y);
  propValues[2] = m10;
  m11 = nullptr;
  k_y = nullptr;
  m4 =
      emlrtCreateNumericArray(2, (const void *)&iv8[0], mxDOUBLE_CLASS, mxREAL);
  emlrtAssign(&k_y, m4);
  emlrtAssign(&m11, k_y);
  propValues[3] = m11;
  emlrtSetAllProperties(emlrtRootTLSGlobal, &g_y, 0, 4,
                        (const char_T **)&b_propNames[0],
                        (const char_T **)&b_propClasses[0], &propValues[0]);
  emlrtAssign(&g_y, emlrtConvertInstanceToRedirectSource(
                        emlrtRootTLSGlobal, g_y, 0,
                        (const char_T *)"deep.internal.coder.dlarray"));
  emlrtSetCell(y, 1, g_y);
  l_y = nullptr;
  m16 = nullptr;
  m17 = nullptr;
  m18 = nullptr;
  m19 = nullptr;
  emlrtAssign(&l_y, emlrtCreateClassInstance(
                        (const char_T *)"deep.internal.coder.dlarray"));
  m16 = nullptr;
  m_y = nullptr;
  m4 =
      emlrtCreateNumericArray(3, (const void *)&iv9[0], mxSINGLE_CLASS, mxREAL);
  pData = (real32_T *)emlrtMxGetData(m4);
  for (i = 0; i < 810; i++) {
    for (b_i = 0; b_i < 8; b_i++) {
      i1 = (b_i + i * 8) * 8;
      for (c_i = 0; c_i < 8; c_i++) {
        pData[i1 + c_i] = u->f3.Data[(c_i + (b_i << 3)) + (i << 6)];
      }
    }
  }
  emlrtAssign(&m_y, m4);
  emlrtAssign(&m16, m_y);
  propValues[0] = m16;
  m17 = nullptr;
  n_y = nullptr;
  m4 = emlrtCreateCharArray(2, &iv10[0]);
  emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 4, m4, &b_u[0]);
  emlrtAssign(&n_y, m4);
  emlrtAssign(&m17, n_y);
  propValues[1] = m17;
  m18 = nullptr;
  o_y = nullptr;
  m4 = emlrtCreateNumericArray(2, (const void *)&iv11[0], mxDOUBLE_CLASS,
                               mxREAL);
  emlrtAssign(&o_y, m4);
  emlrtAssign(&m18, o_y);
  propValues[2] = m18;
  m19 = nullptr;
  p_y = nullptr;
  m4 = emlrtCreateNumericArray(2, (const void *)&iv12[0], mxDOUBLE_CLASS,
                               mxREAL);
  emlrtAssign(&p_y, m4);
  emlrtAssign(&m19, p_y);
  propValues[3] = m19;
  emlrtSetAllProperties(emlrtRootTLSGlobal, &l_y, 0, 4,
                        (const char_T **)&c_propNames[0],
                        (const char_T **)&c_propClasses[0], &propValues[0]);
  emlrtAssign(&l_y, emlrtConvertInstanceToRedirectSource(
                        emlrtRootTLSGlobal, l_y, 0,
                        (const char_T *)"deep.internal.coder.dlarray"));
  emlrtSetCell(y, 2, l_y);
  q_y = nullptr;
  m24 = nullptr;
  m25 = nullptr;
  m26 = nullptr;
  m27 = nullptr;
  emlrtAssign(&q_y, emlrtCreateClassInstance(
                        (const char_T *)"deep.internal.coder.dlarray"));
  m24 = nullptr;
  r_y = nullptr;
  m4 = emlrtCreateNumericArray(3, (const void *)&iv13[0], mxSINGLE_CLASS,
                               mxREAL);
  pData = (real32_T *)emlrtMxGetData(m4);
  for (i = 0; i < 36; i++) {
    for (b_i = 0; b_i < 8; b_i++) {
      i1 = (b_i + i * 8) * 8;
      for (c_i = 0; c_i < 8; c_i++) {
        pData[i1 + c_i] = u->f4.Data[(c_i + (b_i << 3)) + (i << 6)];
      }
    }
  }
  emlrtAssign(&r_y, m4);
  emlrtAssign(&m24, r_y);
  propValues[0] = m24;
  m25 = nullptr;
  s_y = nullptr;
  m4 = emlrtCreateCharArray(2, &iv14[0]);
  emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 4, m4, &b_u[0]);
  emlrtAssign(&s_y, m4);
  emlrtAssign(&m25, s_y);
  propValues[1] = m25;
  m26 = nullptr;
  t_y = nullptr;
  m4 = emlrtCreateNumericArray(2, (const void *)&iv15[0], mxDOUBLE_CLASS,
                               mxREAL);
  emlrtAssign(&t_y, m4);
  emlrtAssign(&m26, t_y);
  propValues[2] = m26;
  m27 = nullptr;
  u_y = nullptr;
  m4 = emlrtCreateNumericArray(2, (const void *)&iv16[0], mxDOUBLE_CLASS,
                               mxREAL);
  emlrtAssign(&u_y, m4);
  emlrtAssign(&m27, u_y);
  propValues[3] = m27;
  emlrtSetAllProperties(emlrtRootTLSGlobal, &q_y, 0, 4,
                        (const char_T **)&d_propNames[0],
                        (const char_T **)&d_propClasses[0], &propValues[0]);
  emlrtAssign(&q_y, emlrtConvertInstanceToRedirectSource(
                        emlrtRootTLSGlobal, q_y, 0,
                        (const char_T *)"deep.internal.coder.dlarray"));
  emlrtSetCell(y, 3, q_y);
  v_y = nullptr;
  m32 = nullptr;
  m33 = nullptr;
  m34 = nullptr;
  m35 = nullptr;
  emlrtAssign(&v_y, emlrtCreateClassInstance(
                        (const char_T *)"deep.internal.coder.dlarray"));
  m32 = nullptr;
  w_y = nullptr;
  m4 = emlrtCreateNumericArray(3, (const void *)&iv17[0], mxSINGLE_CLASS,
                               mxREAL);
  pData = (real32_T *)emlrtMxGetData(m4);
  for (i = 0; i < 810; i++) {
    for (b_i = 0; b_i < 16; b_i++) {
      i1 = (b_i + i * 16) * 16;
      for (c_i = 0; c_i < 16; c_i++) {
        pData[i1 + c_i] = u->f5.Data[(c_i + (b_i << 4)) + (i << 8)];
      }
    }
  }
  emlrtAssign(&w_y, m4);
  emlrtAssign(&m32, w_y);
  propValues[0] = m32;
  m33 = nullptr;
  x_y = nullptr;
  m4 = emlrtCreateCharArray(2, &iv18[0]);
  emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 4, m4, &b_u[0]);
  emlrtAssign(&x_y, m4);
  emlrtAssign(&m33, x_y);
  propValues[1] = m33;
  m34 = nullptr;
  y_y = nullptr;
  m4 = emlrtCreateNumericArray(2, (const void *)&iv19[0], mxDOUBLE_CLASS,
                               mxREAL);
  emlrtAssign(&y_y, m4);
  emlrtAssign(&m34, y_y);
  propValues[2] = m34;
  m35 = nullptr;
  ab_y = nullptr;
  m4 = emlrtCreateNumericArray(2, (const void *)&iv20[0], mxDOUBLE_CLASS,
                               mxREAL);
  emlrtAssign(&ab_y, m4);
  emlrtAssign(&m35, ab_y);
  propValues[3] = m35;
  emlrtSetAllProperties(emlrtRootTLSGlobal, &v_y, 0, 4,
                        (const char_T **)&e_propNames[0],
                        (const char_T **)&e_propClasses[0], &propValues[0]);
  emlrtAssign(&v_y, emlrtConvertInstanceToRedirectSource(
                        emlrtRootTLSGlobal, v_y, 0,
                        (const char_T *)"deep.internal.coder.dlarray"));
  emlrtSetCell(y, 4, v_y);
  bb_y = nullptr;
  m40 = nullptr;
  m41 = nullptr;
  m42 = nullptr;
  m43 = nullptr;
  emlrtAssign(&bb_y, emlrtCreateClassInstance(
                         (const char_T *)"deep.internal.coder.dlarray"));
  m40 = nullptr;
  cb_y = nullptr;
  m4 = emlrtCreateNumericArray(3, (const void *)&iv21[0], mxSINGLE_CLASS,
                               mxREAL);
  pData = (real32_T *)emlrtMxGetData(m4);
  for (i = 0; i < 36; i++) {
    for (b_i = 0; b_i < 16; b_i++) {
      i1 = (b_i + i * 16) * 16;
      for (c_i = 0; c_i < 16; c_i++) {
        pData[i1 + c_i] = u->f6.Data[(c_i + (b_i << 4)) + (i << 8)];
      }
    }
  }
  emlrtAssign(&cb_y, m4);
  emlrtAssign(&m40, cb_y);
  propValues[0] = m40;
  m41 = nullptr;
  db_y = nullptr;
  m4 = emlrtCreateCharArray(2, &iv22[0]);
  emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 4, m4, &b_u[0]);
  emlrtAssign(&db_y, m4);
  emlrtAssign(&m41, db_y);
  propValues[1] = m41;
  m42 = nullptr;
  eb_y = nullptr;
  m4 = emlrtCreateNumericArray(2, (const void *)&iv23[0], mxDOUBLE_CLASS,
                               mxREAL);
  emlrtAssign(&eb_y, m4);
  emlrtAssign(&m42, eb_y);
  propValues[2] = m42;
  m43 = nullptr;
  fb_y = nullptr;
  m4 = emlrtCreateNumericArray(2, (const void *)&iv24[0], mxDOUBLE_CLASS,
                               mxREAL);
  emlrtAssign(&fb_y, m4);
  emlrtAssign(&m43, fb_y);
  propValues[3] = m43;
  emlrtSetAllProperties(emlrtRootTLSGlobal, &bb_y, 0, 4,
                        (const char_T **)&f_propNames[0],
                        (const char_T **)&f_propClasses[0], &propValues[0]);
  emlrtAssign(&bb_y, emlrtConvertInstanceToRedirectSource(
                         emlrtRootTLSGlobal, bb_y, 0,
                         (const char_T *)"deep.internal.coder.dlarray"));
  emlrtSetCell(y, 5, bb_y);
  gb_y = nullptr;
  m48 = nullptr;
  m49 = nullptr;
  m50 = nullptr;
  m51 = nullptr;
  emlrtAssign(&gb_y, emlrtCreateClassInstance(
                         (const char_T *)"deep.internal.coder.dlarray"));
  m48 = nullptr;
  hb_y = nullptr;
  m4 = emlrtCreateNumericArray(3, (const void *)&iv25[0], mxSINGLE_CLASS,
                               mxREAL);
  pData = (real32_T *)emlrtMxGetData(m4);
  for (i = 0; i < 810; i++) {
    for (b_i = 0; b_i < 32; b_i++) {
      i1 = (b_i + i * 32) * 32;
      for (c_i = 0; c_i < 32; c_i++) {
        pData[i1 + c_i] = u->f7.Data[(c_i + (b_i << 5)) + (i << 10)];
      }
    }
  }
  emlrtAssign(&hb_y, m4);
  emlrtAssign(&m48, hb_y);
  propValues[0] = m48;
  m49 = nullptr;
  ib_y = nullptr;
  m4 = emlrtCreateCharArray(2, &iv26[0]);
  emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 4, m4, &b_u[0]);
  emlrtAssign(&ib_y, m4);
  emlrtAssign(&m49, ib_y);
  propValues[1] = m49;
  m50 = nullptr;
  jb_y = nullptr;
  m4 = emlrtCreateNumericArray(2, (const void *)&iv27[0], mxDOUBLE_CLASS,
                               mxREAL);
  emlrtAssign(&jb_y, m4);
  emlrtAssign(&m50, jb_y);
  propValues[2] = m50;
  m51 = nullptr;
  kb_y = nullptr;
  m4 = emlrtCreateNumericArray(2, (const void *)&iv28[0], mxDOUBLE_CLASS,
                               mxREAL);
  emlrtAssign(&kb_y, m4);
  emlrtAssign(&m51, kb_y);
  propValues[3] = m51;
  emlrtSetAllProperties(emlrtRootTLSGlobal, &gb_y, 0, 4,
                        (const char_T **)&g_propNames[0],
                        (const char_T **)&g_propClasses[0], &propValues[0]);
  emlrtAssign(&gb_y, emlrtConvertInstanceToRedirectSource(
                         emlrtRootTLSGlobal, gb_y, 0,
                         (const char_T *)"deep.internal.coder.dlarray"));
  emlrtSetCell(y, 6, gb_y);
  lb_y = nullptr;
  m56 = nullptr;
  m57 = nullptr;
  m58 = nullptr;
  m59 = nullptr;
  emlrtAssign(&lb_y, emlrtCreateClassInstance(
                         (const char_T *)"deep.internal.coder.dlarray"));
  m56 = nullptr;
  mb_y = nullptr;
  m4 = emlrtCreateNumericArray(3, (const void *)&iv29[0], mxSINGLE_CLASS,
                               mxREAL);
  pData = (real32_T *)emlrtMxGetData(m4);
  for (i = 0; i < 36; i++) {
    for (b_i = 0; b_i < 32; b_i++) {
      i1 = (b_i + i * 32) * 32;
      for (c_i = 0; c_i < 32; c_i++) {
        pData[i1 + c_i] = u->f8.Data[(c_i + (b_i << 5)) + (i << 10)];
      }
    }
  }
  emlrtAssign(&mb_y, m4);
  emlrtAssign(&m56, mb_y);
  propValues[0] = m56;
  m57 = nullptr;
  nb_y = nullptr;
  m4 = emlrtCreateCharArray(2, &iv30[0]);
  emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 4, m4, &b_u[0]);
  emlrtAssign(&nb_y, m4);
  emlrtAssign(&m57, nb_y);
  propValues[1] = m57;
  m58 = nullptr;
  ob_y = nullptr;
  m4 = emlrtCreateNumericArray(2, (const void *)&iv31[0], mxDOUBLE_CLASS,
                               mxREAL);
  emlrtAssign(&ob_y, m4);
  emlrtAssign(&m58, ob_y);
  propValues[2] = m58;
  m59 = nullptr;
  pb_y = nullptr;
  m4 = emlrtCreateNumericArray(2, (const void *)&iv32[0], mxDOUBLE_CLASS,
                               mxREAL);
  emlrtAssign(&pb_y, m4);
  emlrtAssign(&m59, pb_y);
  propValues[3] = m59;
  emlrtSetAllProperties(emlrtRootTLSGlobal, &lb_y, 0, 4,
                        (const char_T **)&h_propNames[0],
                        (const char_T **)&h_propClasses[0], &propValues[0]);
  emlrtAssign(&lb_y, emlrtConvertInstanceToRedirectSource(
                         emlrtRootTLSGlobal, lb_y, 0,
                         (const char_T *)"deep.internal.coder.dlarray"));
  emlrtSetCell(y, 7, lb_y);
  qb_y = nullptr;
  m64 = nullptr;
  m65 = nullptr;
  m66 = nullptr;
  m67 = nullptr;
  emlrtAssign(&qb_y, emlrtCreateClassInstance(
                         (const char_T *)"deep.internal.coder.dlarray"));
  m64 = nullptr;
  rb_y = nullptr;
  m4 = emlrtCreateNumericArray(3, (const void *)&iv33[0], mxSINGLE_CLASS,
                               mxREAL);
  pData = (real32_T *)emlrtMxGetData(m4);
  for (i = 0; i < 810; i++) {
    for (b_i = 0; b_i < 64; b_i++) {
      i1 = (b_i + i * 64) * 64;
      for (c_i = 0; c_i < 64; c_i++) {
        pData[i1 + c_i] = u->f9.Data[(c_i + (b_i << 6)) + (i << 12)];
      }
    }
  }
  emlrtAssign(&rb_y, m4);
  emlrtAssign(&m64, rb_y);
  propValues[0] = m64;
  m65 = nullptr;
  sb_y = nullptr;
  m4 = emlrtCreateCharArray(2, &iv34[0]);
  emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 4, m4, &b_u[0]);
  emlrtAssign(&sb_y, m4);
  emlrtAssign(&m65, sb_y);
  propValues[1] = m65;
  m66 = nullptr;
  tb_y = nullptr;
  m4 = emlrtCreateNumericArray(2, (const void *)&iv35[0], mxDOUBLE_CLASS,
                               mxREAL);
  emlrtAssign(&tb_y, m4);
  emlrtAssign(&m66, tb_y);
  propValues[2] = m66;
  m67 = nullptr;
  ub_y = nullptr;
  m4 = emlrtCreateNumericArray(2, (const void *)&iv36[0], mxDOUBLE_CLASS,
                               mxREAL);
  emlrtAssign(&ub_y, m4);
  emlrtAssign(&m67, ub_y);
  propValues[3] = m67;
  emlrtSetAllProperties(emlrtRootTLSGlobal, &qb_y, 0, 4,
                        (const char_T **)&i_propNames[0],
                        (const char_T **)&i_propClasses[0], &propValues[0]);
  emlrtAssign(&qb_y, emlrtConvertInstanceToRedirectSource(
                         emlrtRootTLSGlobal, qb_y, 0,
                         (const char_T *)"deep.internal.coder.dlarray"));
  emlrtSetCell(y, 8, qb_y);
  vb_y = nullptr;
  m72 = nullptr;
  m73 = nullptr;
  m74 = nullptr;
  m75 = nullptr;
  emlrtAssign(&vb_y, emlrtCreateClassInstance(
                         (const char_T *)"deep.internal.coder.dlarray"));
  m72 = nullptr;
  wb_y = nullptr;
  m4 = emlrtCreateNumericArray(3, (const void *)&iv37[0], mxSINGLE_CLASS,
                               mxREAL);
  pData = (real32_T *)emlrtMxGetData(m4);
  for (i = 0; i < 36; i++) {
    for (b_i = 0; b_i < 64; b_i++) {
      i1 = (b_i + i * 64) * 64;
      for (c_i = 0; c_i < 64; c_i++) {
        pData[i1 + c_i] = u->f10.Data[(c_i + (b_i << 6)) + (i << 12)];
      }
    }
  }
  emlrtAssign(&wb_y, m4);
  emlrtAssign(&m72, wb_y);
  propValues[0] = m72;
  m73 = nullptr;
  xb_y = nullptr;
  m4 = emlrtCreateCharArray(2, &iv38[0]);
  emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 4, m4, &b_u[0]);
  emlrtAssign(&xb_y, m4);
  emlrtAssign(&m73, xb_y);
  propValues[1] = m73;
  m74 = nullptr;
  yb_y = nullptr;
  m4 = emlrtCreateNumericArray(2, (const void *)&iv39[0], mxDOUBLE_CLASS,
                               mxREAL);
  emlrtAssign(&yb_y, m4);
  emlrtAssign(&m74, yb_y);
  propValues[2] = m74;
  m75 = nullptr;
  ac_y = nullptr;
  m4 = emlrtCreateNumericArray(2, (const void *)&iv40[0], mxDOUBLE_CLASS,
                               mxREAL);
  emlrtAssign(&ac_y, m4);
  emlrtAssign(&m75, ac_y);
  propValues[3] = m75;
  emlrtSetAllProperties(emlrtRootTLSGlobal, &vb_y, 0, 4,
                        (const char_T **)&j_propNames[0],
                        (const char_T **)&j_propClasses[0], &propValues[0]);
  emlrtAssign(&vb_y, emlrtConvertInstanceToRedirectSource(
                         emlrtRootTLSGlobal, vb_y, 0,
                         (const char_T *)"deep.internal.coder.dlarray"));
  emlrtSetCell(y, 9, vb_y);
  return y;
}

void b_efficientDetD0_predict_api(efficientDetD0_predictStackData *SD,
                                  const mxArray *const prhs[2],
                                  const mxArray *plhs[1])
{
  static const uint32_T uv1[4]{4010505648U, 1608742644U, 1278356587U,
                               1350868194U};
  static const char_T *sv1[1]{"matFile"};
  int32_T iv[1];
  real32_T(*image)[786432];
  // Check constant function inputs
  iv[0] = 4;
  emlrtCheckArrayChecksumR2018b(emlrtRootTLSGlobal, prhs[0], false, &iv[0],
                                (const char_T **)&sv1[0], &uv1[0]);
  // Marshall function inputs
  image = emlrt_marshallIn(emlrtAlias(prhs[1]), "image");
  // Invoke the target function
  efficientDetD0_predict(SD, *image, &SD->f1.out);
  // Marshall function outputs
  plhs[0] = emlrt_marshallOut(&SD->f1.out);
}

// End of code generation (_coder_efficientDetD0_predict_api.cu)
