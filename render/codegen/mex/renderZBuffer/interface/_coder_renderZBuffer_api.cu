//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// _coder_renderZBuffer_api.cu
//
// Code generation for function '_coder_renderZBuffer_api'
//

// Include files
#include "_coder_renderZBuffer_api.h"
#include "renderZBuffer.h"
#include "renderZBuffer_data.h"
#include "rt_nonfinite.h"

// Function Declarations
static void b_emlrtGPUGetDataReadOnlyVardim(const int32_T iv[2],
                                            const mxGPUArray *r,
                                            real32_T **r1_data,
                                            int32_T r1_size[2]);

static void c_emlrtGPUGetDataReadOnlyVardim(const int32_T iv[2],
                                            const mxGPUArray *r,
                                            real32_T **r1_data,
                                            int32_T r1_size[2]);

static void d_emlrtGPUGetDataReadOnlyVardim(const int32_T iv[2],
                                            const mxGPUArray *r,
                                            real32_T **r1_data,
                                            int32_T r1_size[2]);

static void e_emlrtGPUGetDataReadOnlyVardim(const int32_T iv[3],
                                            const mxGPUArray *r,
                                            real32_T **r1_data,
                                            int32_T r1_size[3]);

static void emlrtGPUGetDataReadOnlyVardim(const int32_T iv[2],
                                          const mxGPUArray *r,
                                          real32_T **r1_data,
                                          int32_T r1_size[2]);

// Function Definitions
static void b_emlrtGPUGetDataReadOnlyVardim(const int32_T iv[2],
                                            const mxGPUArray *r,
                                            real32_T **r1_data,
                                            int32_T r1_size[2])
{
  r1_size[0] = iv[0];
  r1_size[1] = iv[1];
  *r1_data = (real32_T *)emlrtGPUGetDataReadOnly(r);
}

static void c_emlrtGPUGetDataReadOnlyVardim(const int32_T iv[2],
                                            const mxGPUArray *r,
                                            real32_T **r1_data,
                                            int32_T r1_size[2])
{
  r1_size[0] = iv[0];
  r1_size[1] = iv[1];
  *r1_data = (real32_T *)emlrtGPUGetDataReadOnly(r);
}

static void d_emlrtGPUGetDataReadOnlyVardim(const int32_T iv[2],
                                            const mxGPUArray *r,
                                            real32_T **r1_data,
                                            int32_T r1_size[2])
{
  r1_size[0] = iv[0];
  r1_size[1] = iv[1];
  *r1_data = (real32_T *)emlrtGPUGetDataReadOnly(r);
}

static void e_emlrtGPUGetDataReadOnlyVardim(const int32_T iv[3],
                                            const mxGPUArray *r,
                                            real32_T **r1_data,
                                            int32_T r1_size[3])
{
  r1_size[0] = iv[0];
  r1_size[1] = iv[1];
  r1_size[2] = iv[2];
  *r1_data = (real32_T *)emlrtGPUGetDataReadOnly(r);
}

static void emlrtGPUGetDataReadOnlyVardim(const int32_T iv[2],
                                          const mxGPUArray *r,
                                          real32_T **r1_data,
                                          int32_T r1_size[2])
{
  r1_size[0] = iv[0];
  r1_size[1] = iv[1];
  *r1_data = (real32_T *)emlrtGPUGetDataReadOnly(r);
}

void renderZBuffer_api(const mxArray *const prhs[7], int32_T nlhs,
                       const mxArray *plhs[2])
{
  static const int32_T f_dims[3]{50, 10000, 4};
  static const int32_T i_dims[3]{512, 512, 3};
  static const int32_T b_dims[2]{3, 1000000};
  static const int32_T c_dims[2]{3, 1000000};
  static const int32_T d_dims[2]{4, 333333};
  static const int32_T dims[2]{2, 1000000};
  static const int32_T e_dims[2]{61, 10000};
  static const int32_T g_dims[2]{4, 333333};
  static const int32_T h_dims[2]{512, 512};
  const mxGPUArray *allColor_gpu;
  const mxGPUArray *allVerts2d_gpu;
  const mxGPUArray *allVertsCamera_gpu;
  const mxGPUArray *boundingBox_gpu;
  const mxGPUArray *distances_gpu;
  const mxGPUArray *idxAll_gpu;
  const mxGPUArray *tree_gpu;
  mxGPUArray *im_gpu;
  mxGPUArray *vertInds_gpu;
  real_T(*vertInds)[262144];
  int32_T b_idxAll_size[3];
  int32_T idxAll_size[3];
  int32_T allColor_size[2];
  int32_T allVerts2d_size[2];
  int32_T allVertsCamera_size[2];
  int32_T b_allColor_size[2];
  int32_T b_allVerts2d_size[2];
  int32_T b_allVertsCamera_size[2];
  int32_T boundingBox_size[2];
  int32_T distances_size[2];
  int32_T tree_size[2];
  real32_T(*allColor_data)[3000000];
  real32_T(*allVertsCamera_data)[3000000];
  real32_T(*allVerts2d_data)[2000000];
  real32_T(*idxAll_data)[2000000];
  real32_T(*boundingBox_data)[1333332];
  real32_T(*distances_data)[1333332];
  real32_T(*im)[786432];
  real32_T(*tree_data)[610000];
  const boolean_T bv5[3]{false, true, false};
  const boolean_T bv[2]{false, true};
  const boolean_T bv1[2]{false, true};
  const boolean_T bv2[2]{false, true};
  const boolean_T bv3[2]{false, true};
  const boolean_T bv4[2]{false, true};
  const boolean_T bv6[2]{false, true};
  emlrtInitGPU(emlrtRootTLSGlobal);
  // Marshall function inputs
  allVerts2d_gpu = emlrt_marshallInGPUVardim(
      emlrtRootTLSGlobal, prhs[0], (const char_T *)"allVerts2d",
      (const char_T *)"single", false, 2, (void *)&dims[0], true, &bv[0],
      &b_allVerts2d_size[0]);
  emlrtGPUGetDataReadOnlyVardim(b_allVerts2d_size, allVerts2d_gpu,
                                (real32_T **)&allVerts2d_data, allVerts2d_size);
  allVertsCamera_gpu = emlrt_marshallInGPUVardim(
      emlrtRootTLSGlobal, prhs[1], (const char_T *)"allVertsCamera",
      (const char_T *)"single", false, 2, (void *)&b_dims[0], true, &bv1[0],
      &b_allVertsCamera_size[0]);
  b_emlrtGPUGetDataReadOnlyVardim(b_allVertsCamera_size, allVertsCamera_gpu,
                                  (real32_T **)&allVertsCamera_data,
                                  allVertsCamera_size);
  allColor_gpu = emlrt_marshallInGPUVardim(
      emlrtRootTLSGlobal, prhs[2], (const char_T *)"allColor",
      (const char_T *)"single", false, 2, (void *)&c_dims[0], true, &bv2[0],
      &b_allColor_size[0]);
  b_emlrtGPUGetDataReadOnlyVardim(b_allColor_size, allColor_gpu,
                                  (real32_T **)&allColor_data, allColor_size);
  boundingBox_gpu = emlrt_marshallInGPUVardim(
      emlrtRootTLSGlobal, prhs[3], (const char_T *)"boundingBox",
      (const char_T *)"single", false, 2, (void *)&d_dims[0], true, &bv3[0],
      &boundingBox_size[0]);
  c_emlrtGPUGetDataReadOnlyVardim(boundingBox_size, boundingBox_gpu,
                                  (real32_T **)&boundingBox_data,
                                  b_allColor_size);
  tree_gpu = emlrt_marshallInGPUVardim(
      emlrtRootTLSGlobal, prhs[4], (const char_T *)"tree",
      (const char_T *)"single", false, 2, (void *)&e_dims[0], true, &bv4[0],
      &tree_size[0]);
  d_emlrtGPUGetDataReadOnlyVardim(tree_size, tree_gpu, (real32_T **)&tree_data,
                                  b_allVertsCamera_size);
  idxAll_gpu = emlrt_marshallInGPUVardim(
      emlrtRootTLSGlobal, prhs[5], (const char_T *)"idxAll",
      (const char_T *)"single", false, 3, (void *)&f_dims[0], true, &bv5[0],
      &b_idxAll_size[0]);
  e_emlrtGPUGetDataReadOnlyVardim(b_idxAll_size, idxAll_gpu,
                                  (real32_T **)&idxAll_data, idxAll_size);
  distances_gpu = emlrt_marshallInGPUVardim(
      emlrtRootTLSGlobal, prhs[6], (const char_T *)"distances",
      (const char_T *)"single", false, 2, (void *)&g_dims[0], true, &bv6[0],
      &distances_size[0]);
  c_emlrtGPUGetDataReadOnlyVardim(distances_size, distances_gpu,
                                  (real32_T **)&distances_data,
                                  b_allVerts2d_size);
  // Create GpuArrays for outputs
  vertInds_gpu = emlrtGPUCreateNumericArray((const char_T *)"double", false, 2,
                                            (void *)&h_dims[0]);
  vertInds = (real_T(*)[262144])emlrtGPUGetData(vertInds_gpu);
  // Create GpuArrays for outputs
  im_gpu = emlrtGPUCreateNumericArray((const char_T *)"single", false, 3,
                                      (void *)&i_dims[0]);
  im = (real32_T(*)[786432])emlrtGPUGetData(im_gpu);
  // Invoke the target function
  renderZBuffer(*allVerts2d_data, allVerts2d_size, *allVertsCamera_data,
                allVertsCamera_size, *allColor_data, allColor_size,
                *boundingBox_data, b_allColor_size, *tree_data,
                b_allVertsCamera_size, *idxAll_data, idxAll_size,
                *distances_data, b_allVerts2d_size, *im, *vertInds);
  // Marshall function outputs
  plhs[0] = emlrt_marshallOutGPU(im_gpu);
  emlrtDestroyGPUArray(im_gpu);
  if (nlhs > 1) {
    plhs[1] = emlrt_marshallOutGPU(vertInds_gpu);
  }
  emlrtDestroyGPUArray(vertInds_gpu);
  // Destroy GPUArrays
  emlrtDestroyGPUArray(allVerts2d_gpu);
  emlrtDestroyGPUArray(allVertsCamera_gpu);
  emlrtDestroyGPUArray(allColor_gpu);
  emlrtDestroyGPUArray(boundingBox_gpu);
  emlrtDestroyGPUArray(tree_gpu);
  emlrtDestroyGPUArray(idxAll_gpu);
  emlrtDestroyGPUArray(distances_gpu);
}

// End of code generation (_coder_renderZBuffer_api.cu)
