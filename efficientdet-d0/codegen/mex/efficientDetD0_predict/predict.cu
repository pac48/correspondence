//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// predict.cu
//
// Code generation for function 'predict'
//

// Include files
#include "predict.h"
#include "dlnetwork.h"
#include "efficientDetD0_predict_data.h"
#include "efficientDetD0_predict_internal_types.h"
#include "efficientDetD0_predict_mexutil.h"
#include "efficientDetD0_predict_types.h"
#include "rt_nonfinite.h"
#include "MWCudaDimUtility.hpp"

// Type Definitions
struct cell_wrap_6 {
  real32_T f1[786432];
};

// Function Declarations
static __global__ void
dlnetwork_predict_kernel1(const coder::k_dlarray *varargin_1,
                          cell_wrap_6 inputDataT[1]);

static __global__ void
dlnetwork_predict_kernel10(const real32_T output[3317760],
                           real32_T varargout_9_Data[3317760]);

static __global__ void
dlnetwork_predict_kernel11(const real32_T output[147456],
                           real32_T varargout_10_Data[147456]);

static __global__ void
dlnetwork_predict_kernel2(const real32_T output[12960],
                          real32_T varargout_1_Data[12960]);

static __global__ void
dlnetwork_predict_kernel3(const real32_T output[576],
                          real32_T varargout_2_Data[576]);

static __global__ void
dlnetwork_predict_kernel4(const real32_T output[51840],
                          real32_T varargout_3_Data[51840]);

static __global__ void
dlnetwork_predict_kernel5(const real32_T output[2304],
                          real32_T varargout_4_Data[2304]);

static __global__ void
dlnetwork_predict_kernel6(const real32_T output[207360],
                          real32_T varargout_5_Data[207360]);

static __global__ void
dlnetwork_predict_kernel7(const real32_T output[9216],
                          real32_T varargout_6_Data[9216]);

static __global__ void
dlnetwork_predict_kernel8(const real32_T output[829440],
                          real32_T varargout_7_Data[829440]);

static __global__ void
dlnetwork_predict_kernel9(const real32_T output[36864],
                          real32_T varargout_8_Data[36864]);

// Function Definitions
static __global__ __launch_bounds__(512, 1) void dlnetwork_predict_kernel1(
    const coder::k_dlarray *varargin_1, cell_wrap_6 inputDataT[1])
{
  uint64_T threadId;
  int32_T i;
  int32_T i1;
  int32_T p;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  i = static_cast<int32_T>(threadId % 512ULL);
  threadId = (threadId - static_cast<uint64_T>(i)) / 512ULL;
  i1 = static_cast<int32_T>(threadId % 512ULL);
  threadId = (threadId - static_cast<uint64_T>(i1)) / 512ULL;
  p = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(p < 3)) &&
                            (static_cast<int32_T>(i1 < 512)))) &&
      (static_cast<int32_T>(i < 512))) {
    inputDataT[0].f1[(i + (i1 << 9)) + (p << 18)] =
        varargin_1->Data[(i1 + (i << 9)) + (p << 18)];
  }
}

static __global__ __launch_bounds__(512, 1) void dlnetwork_predict_kernel10(
    const real32_T output[3317760], real32_T varargout_9_Data[3317760])
{
  uint64_T threadId;
  int32_T i;
  int32_T i1;
  int32_T p;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  i = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(i)) / 64ULL;
  i1 = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(i1)) / 64ULL;
  p = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(p < 810)) &&
                            (static_cast<int32_T>(i1 < 64)))) &&
      (static_cast<int32_T>(i < 64))) {
    varargout_9_Data[(i + (i1 << 6)) + (p << 12)] =
        output[(i1 + (i << 6)) + (p << 12)];
  }
}

static __global__ __launch_bounds__(512, 1) void dlnetwork_predict_kernel11(
    const real32_T output[147456], real32_T varargout_10_Data[147456])
{
  uint64_T threadId;
  int32_T i;
  int32_T i1;
  int32_T p;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  i = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(i)) / 64ULL;
  i1 = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(i1)) / 64ULL;
  p = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(p < 36)) &&
                            (static_cast<int32_T>(i1 < 64)))) &&
      (static_cast<int32_T>(i < 64))) {
    varargout_10_Data[(i + (i1 << 6)) + (p << 12)] =
        output[(i1 + (i << 6)) + (p << 12)];
  }
}

static __global__ __launch_bounds__(512, 1) void dlnetwork_predict_kernel2(
    const real32_T output[12960], real32_T varargout_1_Data[12960])
{
  uint64_T threadId;
  int32_T i;
  int32_T i1;
  int32_T p;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  i = static_cast<int32_T>(threadId % 4ULL);
  threadId = (threadId - static_cast<uint64_T>(i)) / 4ULL;
  i1 = static_cast<int32_T>(threadId % 4ULL);
  threadId = (threadId - static_cast<uint64_T>(i1)) / 4ULL;
  p = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(p < 810)) &&
                            (static_cast<int32_T>(i1 < 4)))) &&
      (static_cast<int32_T>(i < 4))) {
    varargout_1_Data[(i + (i1 << 2)) + (p << 4)] =
        output[(i1 + (i << 2)) + (p << 4)];
  }
}

static __global__ __launch_bounds__(512, 1) void dlnetwork_predict_kernel3(
    const real32_T output[576], real32_T varargout_2_Data[576])
{
  uint64_T threadId;
  int32_T i;
  int32_T i1;
  int32_T p;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  i = static_cast<int32_T>(threadId % 4ULL);
  threadId = (threadId - static_cast<uint64_T>(i)) / 4ULL;
  i1 = static_cast<int32_T>(threadId % 4ULL);
  threadId = (threadId - static_cast<uint64_T>(i1)) / 4ULL;
  p = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(p < 36)) &&
                            (static_cast<int32_T>(i1 < 4)))) &&
      (static_cast<int32_T>(i < 4))) {
    varargout_2_Data[(i + (i1 << 2)) + (p << 4)] =
        output[(i1 + (i << 2)) + (p << 4)];
  }
}

static __global__ __launch_bounds__(512, 1) void dlnetwork_predict_kernel4(
    const real32_T output[51840], real32_T varargout_3_Data[51840])
{
  uint64_T threadId;
  int32_T i;
  int32_T i1;
  int32_T p;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  i = static_cast<int32_T>(threadId % 8ULL);
  threadId = (threadId - static_cast<uint64_T>(i)) / 8ULL;
  i1 = static_cast<int32_T>(threadId % 8ULL);
  threadId = (threadId - static_cast<uint64_T>(i1)) / 8ULL;
  p = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(p < 810)) &&
                            (static_cast<int32_T>(i1 < 8)))) &&
      (static_cast<int32_T>(i < 8))) {
    varargout_3_Data[(i + (i1 << 3)) + (p << 6)] =
        output[(i1 + (i << 3)) + (p << 6)];
  }
}

static __global__ __launch_bounds__(512, 1) void dlnetwork_predict_kernel5(
    const real32_T output[2304], real32_T varargout_4_Data[2304])
{
  uint64_T threadId;
  int32_T i;
  int32_T i1;
  int32_T p;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  i = static_cast<int32_T>(threadId % 8ULL);
  threadId = (threadId - static_cast<uint64_T>(i)) / 8ULL;
  i1 = static_cast<int32_T>(threadId % 8ULL);
  threadId = (threadId - static_cast<uint64_T>(i1)) / 8ULL;
  p = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(p < 36)) &&
                            (static_cast<int32_T>(i1 < 8)))) &&
      (static_cast<int32_T>(i < 8))) {
    varargout_4_Data[(i + (i1 << 3)) + (p << 6)] =
        output[(i1 + (i << 3)) + (p << 6)];
  }
}

static __global__ __launch_bounds__(512, 1) void dlnetwork_predict_kernel6(
    const real32_T output[207360], real32_T varargout_5_Data[207360])
{
  uint64_T threadId;
  int32_T i;
  int32_T i1;
  int32_T p;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  i = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(i)) / 16ULL;
  i1 = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(i1)) / 16ULL;
  p = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(p < 810)) &&
                            (static_cast<int32_T>(i1 < 16)))) &&
      (static_cast<int32_T>(i < 16))) {
    varargout_5_Data[(i + (i1 << 4)) + (p << 8)] =
        output[(i1 + (i << 4)) + (p << 8)];
  }
}

static __global__ __launch_bounds__(512, 1) void dlnetwork_predict_kernel7(
    const real32_T output[9216], real32_T varargout_6_Data[9216])
{
  uint64_T threadId;
  int32_T i;
  int32_T i1;
  int32_T p;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  i = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(i)) / 16ULL;
  i1 = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(i1)) / 16ULL;
  p = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(p < 36)) &&
                            (static_cast<int32_T>(i1 < 16)))) &&
      (static_cast<int32_T>(i < 16))) {
    varargout_6_Data[(i + (i1 << 4)) + (p << 8)] =
        output[(i1 + (i << 4)) + (p << 8)];
  }
}

static __global__ __launch_bounds__(512, 1) void dlnetwork_predict_kernel8(
    const real32_T output[829440], real32_T varargout_7_Data[829440])
{
  uint64_T threadId;
  int32_T i;
  int32_T i1;
  int32_T p;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  i = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(i)) / 32ULL;
  i1 = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(i1)) / 32ULL;
  p = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(p < 810)) &&
                            (static_cast<int32_T>(i1 < 32)))) &&
      (static_cast<int32_T>(i < 32))) {
    varargout_7_Data[(i + (i1 << 5)) + (p << 10)] =
        output[(i1 + (i << 5)) + (p << 10)];
  }
}

static __global__ __launch_bounds__(512, 1) void dlnetwork_predict_kernel9(
    const real32_T output[36864], real32_T varargout_8_Data[36864])
{
  uint64_T threadId;
  int32_T i;
  int32_T i1;
  int32_T p;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  i = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(i)) / 32ULL;
  i1 = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(i1)) / 32ULL;
  p = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(p < 36)) &&
                            (static_cast<int32_T>(i1 < 32)))) &&
      (static_cast<int32_T>(i < 32))) {
    varargout_8_Data[(i + (i1 << 5)) + (p << 10)] =
        output[(i1 + (i << 5)) + (p << 10)];
  }
}

namespace coder {
void dlnetwork_predict(
    efficientDetD0_coco0_0 *obj, const k_dlarray *varargin_1,
    real32_T varargout_1_Data[12960], real32_T varargout_2_Data[576],
    real32_T varargout_3_Data[51840], real32_T varargout_4_Data[2304],
    real32_T varargout_5_Data[207360], real32_T varargout_6_Data[9216],
    real32_T varargout_7_Data[829440], real32_T varargout_8_Data[36864],
    real32_T varargout_9_Data[3317760], real32_T varargout_10_Data[147456])
{
  efficientDetD0_coco0_0 *gpu_obj;
  cell_wrap_6(*gpu_inputDataT)[1];
  k_dlarray *gpu_varargin_1;
  real32_T(*gpu_varargout_9_Data)[3317760];
  real32_T(*i_gpu_output)[3317760];
  real32_T(*g_gpu_output)[829440];
  real32_T(*gpu_varargout_7_Data)[829440];
  real32_T(*e_gpu_output)[207360];
  real32_T(*gpu_varargout_5_Data)[207360];
  real32_T(*gpu_varargout_10_Data)[147456];
  real32_T(*j_gpu_output)[147456];
  real32_T(*c_gpu_output)[51840];
  real32_T(*gpu_varargout_3_Data)[51840];
  real32_T(*gpu_varargout_8_Data)[36864];
  real32_T(*h_gpu_output)[36864];
  real32_T(*gpu_output)[12960];
  real32_T(*gpu_varargout_1_Data)[12960];
  real32_T(*f_gpu_output)[9216];
  real32_T(*gpu_varargout_6_Data)[9216];
  real32_T(*d_gpu_output)[2304];
  real32_T(*gpu_varargout_4_Data)[2304];
  real32_T(*b_gpu_output)[576];
  real32_T(*gpu_varargout_2_Data)[576];
  cudaMalloc(&gpu_varargout_10_Data, 589824ULL);
  cudaMalloc(&gpu_varargout_9_Data, 13271040ULL);
  cudaMalloc(&gpu_varargout_8_Data, 147456ULL);
  cudaMalloc(&gpu_varargout_7_Data, 3317760ULL);
  cudaMalloc(&gpu_varargout_6_Data, 36864ULL);
  cudaMalloc(&gpu_varargout_5_Data, 829440ULL);
  cudaMalloc(&gpu_varargout_4_Data, 9216ULL);
  cudaMalloc(&gpu_varargout_3_Data, 207360ULL);
  cudaMalloc(&gpu_varargout_2_Data, 2304ULL);
  cudaMalloc(&gpu_varargout_1_Data, 51840ULL);
  cudaMalloc(&j_gpu_output, 589824ULL);
  cudaMalloc(&i_gpu_output, 13271040ULL);
  cudaMalloc(&h_gpu_output, 147456ULL);
  cudaMalloc(&g_gpu_output, 3317760ULL);
  cudaMalloc(&f_gpu_output, 36864ULL);
  cudaMalloc(&e_gpu_output, 829440ULL);
  cudaMalloc(&d_gpu_output, 9216ULL);
  cudaMalloc(&c_gpu_output, 207360ULL);
  cudaMalloc(&b_gpu_output, 2304ULL);
  cudaMalloc(&gpu_output, 51840ULL);
  cudaMalloc(&gpu_obj, 1ULL);
  cudaMalloc(&gpu_inputDataT, 3145728ULL);
  cudaMalloc(&gpu_varargin_1, 3145728ULL);
  cudaMemcpy(gpu_varargin_1, varargin_1, 3145728ULL, cudaMemcpyHostToDevice);
  dlnetwork_predict_kernel1<<<dim3(1536U, 1U, 1U), dim3(512U, 1U, 1U)>>>(
      gpu_varargin_1, *gpu_inputDataT);
  cudaMemcpy(gpu_obj, obj, 1ULL, cudaMemcpyHostToDevice);
  cudaMemcpy(obj->getInputDataPointer(0), (*gpu_inputDataT)[0].f1,
             obj->getLayerOutputSize(0, 0), cudaMemcpyDeviceToDevice);
  try {
    obj->activations(598);
  } catch (std::runtime_error const &err) {
    checkRunTimeError(err.what(), __FILE__, __LINE__);
  } catch (...) {
    checkRunTimeError("", __FILE__, __LINE__);
  }
  cudaMemcpy(*gpu_output, obj->getLayerOutput(463, 0),
             obj->getLayerOutputSize(463, 0), cudaMemcpyDeviceToDevice);
  cudaMemcpy(*b_gpu_output, obj->getLayerOutput(478, 0),
             obj->getLayerOutputSize(478, 0), cudaMemcpyDeviceToDevice);
  cudaMemcpy(*c_gpu_output, obj->getLayerOutput(493, 0),
             obj->getLayerOutputSize(493, 0), cudaMemcpyDeviceToDevice);
  cudaMemcpy(*d_gpu_output, obj->getLayerOutput(508, 0),
             obj->getLayerOutputSize(508, 0), cudaMemcpyDeviceToDevice);
  cudaMemcpy(*e_gpu_output, obj->getLayerOutput(523, 0),
             obj->getLayerOutputSize(523, 0), cudaMemcpyDeviceToDevice);
  cudaMemcpy(*f_gpu_output, obj->getLayerOutput(538, 0),
             obj->getLayerOutputSize(538, 0), cudaMemcpyDeviceToDevice);
  cudaMemcpy(*g_gpu_output, obj->getLayerOutput(553, 0),
             obj->getLayerOutputSize(553, 0), cudaMemcpyDeviceToDevice);
  cudaMemcpy(*h_gpu_output, obj->getLayerOutput(568, 0),
             obj->getLayerOutputSize(568, 0), cudaMemcpyDeviceToDevice);
  cudaMemcpy(*i_gpu_output, obj->getLayerOutput(583, 0),
             obj->getLayerOutputSize(583, 0), cudaMemcpyDeviceToDevice);
  cudaMemcpy(*j_gpu_output, obj->getLayerOutput(598, 0),
             obj->getLayerOutputSize(598, 0), cudaMemcpyDeviceToDevice);
  cudaMemcpy(obj, gpu_obj, 1ULL, cudaMemcpyDeviceToHost);
  dlnetwork_predict_kernel2<<<dim3(26U, 1U, 1U), dim3(512U, 1U, 1U)>>>(
      *gpu_output, *gpu_varargout_1_Data);
  dlnetwork_predict_kernel3<<<dim3(2U, 1U, 1U), dim3(512U, 1U, 1U)>>>(
      *b_gpu_output, *gpu_varargout_2_Data);
  dlnetwork_predict_kernel4<<<dim3(102U, 1U, 1U), dim3(512U, 1U, 1U)>>>(
      *c_gpu_output, *gpu_varargout_3_Data);
  dlnetwork_predict_kernel5<<<dim3(5U, 1U, 1U), dim3(512U, 1U, 1U)>>>(
      *d_gpu_output, *gpu_varargout_4_Data);
  dlnetwork_predict_kernel6<<<dim3(405U, 1U, 1U), dim3(512U, 1U, 1U)>>>(
      *e_gpu_output, *gpu_varargout_5_Data);
  dlnetwork_predict_kernel7<<<dim3(18U, 1U, 1U), dim3(512U, 1U, 1U)>>>(
      *f_gpu_output, *gpu_varargout_6_Data);
  dlnetwork_predict_kernel8<<<dim3(1620U, 1U, 1U), dim3(512U, 1U, 1U)>>>(
      *g_gpu_output, *gpu_varargout_7_Data);
  dlnetwork_predict_kernel9<<<dim3(72U, 1U, 1U), dim3(512U, 1U, 1U)>>>(
      *h_gpu_output, *gpu_varargout_8_Data);
  dlnetwork_predict_kernel10<<<dim3(6480U, 1U, 1U), dim3(512U, 1U, 1U)>>>(
      *i_gpu_output, *gpu_varargout_9_Data);
  dlnetwork_predict_kernel11<<<dim3(288U, 1U, 1U), dim3(512U, 1U, 1U)>>>(
      *j_gpu_output, *gpu_varargout_10_Data);
  cudaMemcpy(varargout_1_Data, *gpu_varargout_1_Data, 51840ULL,
             cudaMemcpyDeviceToHost);
  cudaMemcpy(varargout_2_Data, *gpu_varargout_2_Data, 2304ULL,
             cudaMemcpyDeviceToHost);
  cudaMemcpy(varargout_3_Data, *gpu_varargout_3_Data, 207360ULL,
             cudaMemcpyDeviceToHost);
  cudaMemcpy(varargout_4_Data, *gpu_varargout_4_Data, 9216ULL,
             cudaMemcpyDeviceToHost);
  cudaMemcpy(varargout_5_Data, *gpu_varargout_5_Data, 829440ULL,
             cudaMemcpyDeviceToHost);
  cudaMemcpy(varargout_6_Data, *gpu_varargout_6_Data, 36864ULL,
             cudaMemcpyDeviceToHost);
  cudaMemcpy(varargout_7_Data, *gpu_varargout_7_Data, 3317760ULL,
             cudaMemcpyDeviceToHost);
  cudaMemcpy(varargout_8_Data, *gpu_varargout_8_Data, 147456ULL,
             cudaMemcpyDeviceToHost);
  cudaMemcpy(varargout_9_Data, *gpu_varargout_9_Data, 13271040ULL,
             cudaMemcpyDeviceToHost);
  cudaMemcpy(varargout_10_Data, *gpu_varargout_10_Data, 589824ULL,
             cudaMemcpyDeviceToHost);
  cudaFree(gpu_varargin_1);
  cudaFree(*gpu_inputDataT);
  cudaFree(gpu_obj);
  cudaFree(*gpu_output);
  cudaFree(*b_gpu_output);
  cudaFree(*c_gpu_output);
  cudaFree(*d_gpu_output);
  cudaFree(*e_gpu_output);
  cudaFree(*f_gpu_output);
  cudaFree(*g_gpu_output);
  cudaFree(*h_gpu_output);
  cudaFree(*i_gpu_output);
  cudaFree(*j_gpu_output);
  cudaFree(*gpu_varargout_1_Data);
  cudaFree(*gpu_varargout_2_Data);
  cudaFree(*gpu_varargout_3_Data);
  cudaFree(*gpu_varargout_4_Data);
  cudaFree(*gpu_varargout_5_Data);
  cudaFree(*gpu_varargout_6_Data);
  cudaFree(*gpu_varargout_7_Data);
  cudaFree(*gpu_varargout_8_Data);
  cudaFree(*gpu_varargout_9_Data);
  cudaFree(*gpu_varargout_10_Data);
}

} // namespace coder

// End of code generation (predict.cu)
