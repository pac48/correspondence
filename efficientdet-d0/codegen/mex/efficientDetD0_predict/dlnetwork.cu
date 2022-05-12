//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// dlnetwork.cu
//
// Code generation for function 'dlnetwork'
//

// Include files
#include "dlnetwork.h"
#include "efficientDetD0_predict.h"
#include "efficientDetD0_predict_data.h"
#include "efficientDetD0_predict_internal_types.h"
#include "efficientDetD0_predict_mexutil.h"
#include "rt_nonfinite.h"
#include "MWAdditionLayer.hpp"
#include "MWAvgPoolingLayer.hpp"
#include "MWCNNLayer.hpp"
#include "MWConvLayer.hpp"
#include "MWCudaDimUtility.hpp"
#include "MWCudnnCustomLayerBase.hpp"
#include "MWCudnnTargetNetworkImpl.hpp"
#include "MWElementwiseAffineLayer.hpp"
#include "MWInputLayer.hpp"
#include "MWMaxPoolingLayer.hpp"
#include "MWOutputLayer.hpp"
#include "MWSigmoidLayer.hpp"
#include "MWSplittingLayer.hpp"
#include "MWTensor.hpp"
#include "MWTensorBase.hpp"
#include <cstdlib>
#include <cstring>

// Variable Definitions
static boolean_T c_gpuConstsCopied_dlnetwork_lay;
static boolean_T d_gpuConstsCopied_dlnetwork_lay;
static boolean_T e_gpuConstsCopied_dlnetwork_lay;
static boolean_T f_gpuConstsCopied_dlnetwork_lay;

// Function Declarations
static __global__ void ab_dlnetwork_layerPredictWithCo(const real32_T
  varargin_1[589824], real32_T varargout_1[589824]);
static __global__ void ac_dlnetwork_layerPredictWithCo(const real32_T
  varargin_2[491520], const real32_T a[491520], real32_T varargout_1[491520]);
static __global__ void ad_dlnetwork_layerPredictWithCo(const real32_T out[4096],
  real32_T varargout_1[4096]);
static __global__ void ae_dlnetwork_layerPredictWithCo(const real32_T
  varargin_1[262144], real32_T varargout_1[262144]);
static __global__ void bb_dlnetwork_layerPredictWithCo(const real32_T
  varargout_1[589824], real32_T a[589824]);
static __global__ void bc_dlnetwork_layerPredictWithCo(const real32_T
  varargin_1[688128], real32_T varargout_1[688128]);
static __global__ void bd_dlnetwork_layerPredictWithCo(const real32_T
  varargin_1[4096], real32_T varargout_1[4096]);
static __global__ void be_dlnetwork_layerPredictWithCo(const real32_T
  varargout_1[262144], real32_T a[262144]);
static __global__ void c_dlnetwork_layerPredictWithCol(const real32_T
  varargin_1[2097152], real32_T varargout_1[2097152]);
static __global__ void cb_dlnetwork_layerPredictWithCo(const real32_T
  varargin_2[589824], const real32_T a[589824], real32_T varargout_1[589824]);
static __global__ void cc_dlnetwork_layerPredictWithCo(const real32_T
  varargout_1[688128], real32_T a[688128]);
static __global__ void cd_dlnetwork_layerPredictWithCo(const real32_T
  varargout_1[4096], real32_T a[4096]);
static __global__ void ce_dlnetwork_layerPredictWithCo(const real32_T
  varargin_2[262144], const real32_T a[262144], real32_T varargout_1[262144]);
static void checkCleanupCudaError(cudaError_t errCode, const char_T *file,
  uint32_T line);
static void checkCleanupRunTimeError(const char_T *errMsg, const char_T *file,
  uint32_T line);
static __global__ void d_dlnetwork_layerPredictWithCol(const real32_T
  varargout_1[2097152], real32_T a[2097152]);
static __global__ void db_dlnetwork_layerPredictWithCo(const real32_T
  varargin_1[144], real32_T varargout_1[589824]);
static __global__ void dc_dlnetwork_layerPredictWithCo(const real32_T
  varargin_2[688128], const real32_T a[688128], real32_T varargout_1[688128]);
static __global__ void dd_dlnetwork_layerPredictWithCo(const real32_T
  varargin_2[4096], const real32_T a[4096], real32_T varargout_1[4096]);
static __global__ void de_dlnetwork_layerPredictWithCo(const real32_T
  varargin_1[1024], real32_T varargout_1[1024]);
static __global__ void e_dlnetwork_layerPredictWithCol(const real32_T
  varargin_2[2097152], const real32_T a[2097152], real32_T varargout_1[2097152]);
static __global__ void eb_dlnetwork_layerPredictWithCo(const real32_T
  varargout_1[589824], real32_T a[589824]);
static __global__ void ec_dlnetwork_layerPredictWithCo(const real32_T
  varargin_2[28], const real32_T varargin_1[28], real32_T varargout_1[28]);
static __global__ void ed_dlnetwork_layerPredictWithCo(const real32_T
  varargin_1[4096], const int8_T xq[16], real32_T out[8192]);
static __global__ void ee_dlnetwork_layerPredictWithCo(const real32_T
  varargout_1[1024], real32_T a[1024]);
static __global__ void f_dlnetwork_layerPredictWithCol(const real32_T
  varargin_2[8], const real32_T varargin_1[8], real32_T varargout_1[8]);
static __global__ void fb_dlnetwork_layerPredictWithCo(const real32_T
  varargin_2[589824], const real32_T a[589824], real32_T varargout_1[589824]);
static __global__ void fc_dlnetwork_layerPredictWithCo(const real32_T
  varargin_1[672], real32_T varargout_1[688128]);
static __global__ void fd_dlnetwork_layerPredictWithCo(const real32_T out[8192],
  real32_T in[8192]);
static __global__ void fe_dlnetwork_layerPredictWithCo(const real32_T
  varargin_2[1024], const real32_T a[1024], real32_T varargout_1[1024]);
static __global__ void g_dlnetwork_layerPredictWithCol(const real32_T
  varargin_1[32], real32_T varargout_1[2097152]);
static __global__ void gb_dlnetwork_layerPredictWithCo(const real32_T
  varargin_1[983040], real32_T varargout_1[983040]);
static __global__ void gc_dlnetwork_layerPredictWithCo(const real32_T
  varargout_1[688128], real32_T a[688128]);
static __global__ void gd_dlnetwork_layerPredictWithCo(const real32_T in[8192],
  const int8_T xq[16], real32_T out[16384]);
static __global__ void h_dlnetwork_layerPredictWithCol(const real32_T
  varargout_1[2097152], real32_T a[2097152]);
static __global__ void hb_dlnetwork_layerPredictWithCo(const real32_T
  varargout_1[983040], real32_T a[983040]);
static __global__ void hc_dlnetwork_layerPredictWithCo(const real32_T
  varargin_2[688128], const real32_T a[688128], real32_T varargout_1[688128]);
static __global__ void hd_dlnetwork_layerPredictWithCo(const real32_T out[16384],
  real32_T varargout_1[16384]);
static __global__ void i_dlnetwork_layerPredictWithCol(const real32_T
  varargin_2[2097152], const real32_T a[2097152], real32_T varargout_1[2097152]);
static __global__ void ib_dlnetwork_layerPredictWithCo(const real32_T
  varargin_2[983040], const real32_T a[983040], real32_T varargout_1[983040]);
static __global__ void ic_dlnetwork_layerPredictWithCo(const real32_T
  varargin_1[172032], real32_T varargout_1[172032]);
static __global__ void id_dlnetwork_layerPredictWithCo(const real32_T out[16384],
  real32_T varargout_1[16384]);
static __global__ void j_dlnetwork_layerPredictWithCol(const real32_T
  varargin_1[6291456], real32_T varargout_1[6291456]);
static __global__ void jb_dlnetwork_layerPredictWithCo(const real32_T
  varargin_2[10], const real32_T varargin_1[10], real32_T varargout_1[10]);
static __global__ void jc_dlnetwork_layerPredictWithCo(const real32_T
  varargout_1[172032], real32_T a[172032]);
static __global__ void jd_dlnetwork_layerPredictWithCo(const real32_T
  varargin_1[16384], real32_T varargout_1[16384]);
static __global__ void k_dlnetwork_layerPredictWithCol(const real32_T
  varargout_1[6291456], real32_T a[6291456]);
static __global__ void kb_dlnetwork_layerPredictWithCo(const real32_T
  varargin_1[240], real32_T varargout_1[983040]);
static __global__ void kc_dlnetwork_layerPredictWithCo(const real32_T
  varargin_2[172032], const real32_T a[172032], real32_T varargout_1[172032]);
static __global__ void kd_dlnetwork_layerPredictWithCo(const real32_T
  varargout_1[16384], real32_T a[16384]);
static __global__ void l_dlnetwork_layerPredictWithCol(const real32_T
  varargin_2[6291456], const real32_T a[6291456], real32_T varargout_1[6291456]);
static __global__ void lb_dlnetwork_layerPredictWithCo(const real32_T
  varargout_1[983040], real32_T a[983040]);
static __global__ void lc_dlnetwork_layerPredictWithCo(const real32_T
  varargin_1[672], real32_T varargout_1[172032]);
static __global__ void ld_dlnetwork_layerPredictWithCo(const real32_T
  varargin_2[16384], const real32_T a[16384], real32_T varargout_1[16384]);
static __global__ void m_dlnetwork_layerPredictWithCol(const real32_T
  varargin_1[1572864], real32_T varargout_1[1572864]);
static __global__ void mb_dlnetwork_layerPredictWithCo(const real32_T
  varargin_2[983040], const real32_T a[983040], real32_T varargout_1[983040]);
static __global__ void mc_dlnetwork_layerPredictWithCo(const real32_T
  varargout_1[172032], real32_T a[172032]);
static __global__ void md_dlnetwork_layerPredictWithCo(const real32_T
  varargin_1[16384], const int8_T xq[32], real32_T out[32768]);
static __global__ void n_dlnetwork_layerPredictWithCol(const real32_T
  varargout_1[1572864], real32_T a[1572864]);
static __global__ void nb_dlnetwork_layerPredictWithCo(const real32_T
  varargin_1[245760], real32_T varargout_1[245760]);
static __global__ void nc_dlnetwork_layerPredictWithCo(const real32_T
  varargin_2[172032], const real32_T a[172032], real32_T varargout_1[172032]);
static __global__ void nd_dlnetwork_layerPredictWithCo(const real32_T out[32768],
  real32_T in[32768]);
static __global__ void o_dlnetwork_layerPredictWithCol(const real32_T
  varargin_2[1572864], const real32_T a[1572864], real32_T varargout_1[1572864]);
static __global__ void ob_dlnetwork_layerPredictWithCo(const real32_T
  varargout_1[245760], real32_T a[245760]);
static __global__ void oc_dlnetwork_layerPredictWithCo(const real32_T
  varargin_1[294912], real32_T varargout_1[294912]);
static __global__ void od_dlnetwork_layerPredictWithCo(const real32_T in[32768],
  const int8_T xq[32], real32_T out[65536]);
static __global__ void p_dlnetwork_layerPredictWithCol(const real32_T
  varargin_1[96], real32_T varargout_1[1572864]);
static __global__ void pb_dlnetwork_layerPredictWithCo(const real32_T
  varargin_2[245760], const real32_T a[245760], real32_T varargout_1[245760]);
static __global__ void pc_dlnetwork_layerPredictWithCo(const real32_T
  varargout_1[294912], real32_T a[294912]);
static __global__ void pd_dlnetwork_layerPredictWithCo(const real32_T out[65536],
  real32_T varargout_1[65536]);
static __global__ void q_dlnetwork_layerPredictWithCol(const real32_T
  varargout_1[1572864], real32_T a[1572864]);
static __global__ void qb_dlnetwork_layerPredictWithCo(const real32_T
  varargin_1[240], real32_T varargout_1[245760]);
static __global__ void qc_dlnetwork_layerPredictWithCo(const real32_T
  varargin_2[294912], const real32_T a[294912], real32_T varargout_1[294912]);
static __global__ void qd_dlnetwork_layerPredictWithCo(const real32_T out[65536],
  real32_T varargout_1[65536]);
static __global__ void r_dlnetwork_layerPredictWithCol(const real32_T
  varargin_2[1572864], const real32_T a[1572864], real32_T varargout_1[1572864]);
static __global__ void rb_dlnetwork_layerPredictWithCo(const real32_T
  varargout_1[245760], real32_T a[245760]);
static __global__ void rc_dlnetwork_layerPredictWithCo(const real32_T
  varargin_2[48], const real32_T varargin_1[48], real32_T varargout_1[48]);
static __global__ void rd_dlnetwork_layerPredictWithCo(const real32_T
  varargin_1[65536], real32_T varargout_1[65536]);
static __global__ void s_dlnetwork_layerPredictWithCol(const real32_T
  varargin_1[2359296], real32_T varargout_1[2359296]);
static __global__ void sb_dlnetwork_layerPredictWithCo(const real32_T
  varargin_2[245760], const real32_T a[245760], real32_T varargout_1[245760]);
static __global__ void sc_dlnetwork_layerPredictWithCo(const real32_T
  varargin_1[1152], real32_T varargout_1[294912]);
static __global__ void sd_dlnetwork_layerPredictWithCo(const real32_T
  varargout_1[65536], real32_T a[65536]);
static __global__ void t_dlnetwork_layerPredictWithCol(const real32_T
  varargout_1[2359296], real32_T a[2359296]);
static __global__ void tb_dlnetwork_layerPredictWithCo(const real32_T
  varargin_1[491520], real32_T varargout_1[491520]);
static __global__ void tc_dlnetwork_layerPredictWithCo(const real32_T
  varargout_1[294912], real32_T a[294912]);
static __global__ void td_dlnetwork_layerPredictWithCo(const real32_T
  varargin_2[65536], const real32_T a[65536], real32_T varargout_1[65536]);
static __global__ void u_dlnetwork_layerPredictWithCol(const real32_T
  varargin_2[2359296], const real32_T a[2359296], real32_T varargout_1[2359296]);
static __global__ void ub_dlnetwork_layerPredictWithCo(const real32_T
  varargout_1[491520], real32_T a[491520]);
static __global__ void uc_dlnetwork_layerPredictWithCo(const real32_T
  varargin_2[294912], const real32_T a[294912], real32_T varargout_1[294912]);
static __global__ void ud_dlnetwork_layerPredictWithCo(const real32_T
  varargin_1[65536], const int8_T xq[64], real32_T out[131072]);
static __global__ void v_dlnetwork_layerPredictWithCol(const real32_T
  varargin_2[6], const real32_T varargin_1[6], real32_T varargout_1[6]);
static __global__ void vb_dlnetwork_layerPredictWithCo(const real32_T
  varargin_2[491520], const real32_T a[491520], real32_T varargout_1[491520]);
static __global__ void vc_dlnetwork_layerPredictWithCo(const real32_T
  varargin_1[1024], const int8_T xq[8], real32_T out[2048]);
static __global__ void vd_dlnetwork_layerPredictWithCo(const real32_T out[131072],
  real32_T in[131072]);
static __global__ void w_dlnetwork_layerPredictWithCol(const real32_T
  varargin_1[144], real32_T varargout_1[2359296]);
static __global__ void wb_dlnetwork_layerPredictWithCo(const real32_T
  varargin_2[20], const real32_T varargin_1[20], real32_T varargout_1[20]);
static __global__ void wc_dlnetwork_layerPredictWithCo(const real32_T out[2048],
  real32_T in[2048]);
static __global__ void wd_dlnetwork_layerPredictWithCo(const real32_T in[131072],
  const int8_T xq[64], real32_T out[262144]);
static __global__ void x_dlnetwork_layerPredictWithCol(const real32_T
  varargout_1[2359296], real32_T a[2359296]);
static __global__ void xb_dlnetwork_layerPredictWithCo(const real32_T
  varargin_1[480], real32_T varargout_1[491520]);
static __global__ void xc_dlnetwork_layerPredictWithCo(const real32_T in[2048],
  const int8_T xq[8], real32_T out[4096]);
static __global__ void xd_dlnetwork_layerPredictWithCo(const real32_T out[262144],
  real32_T varargout_1[262144]);
static __global__ void y_dlnetwork_layerPredictWithCol(const real32_T
  varargin_2[2359296], const real32_T a[2359296], real32_T varargout_1[2359296]);
static __global__ void yb_dlnetwork_layerPredictWithCo(const real32_T
  varargout_1[491520], real32_T a[491520]);
static __global__ void yc_dlnetwork_layerPredictWithCo(const real32_T out[4096],
  real32_T varargout_1[4096]);
static __global__ void yd_dlnetwork_layerPredictWithCo(const real32_T out[262144],
  real32_T varargout_1[262144]);

// Function Definitions
void efficientDetD0_coco0_0::allocate()
{
  targetImpl->allocatePermuteBuffers(6291456, 3);
  targetImpl->allocate(6291456, 12);
  for (int32_T idx{0}; idx < 600; idx++) {
    layers[idx]->allocate();
  }

  (static_cast<MWTensor<real32_T> *>(inputTensors[0]))->setData(layers[0]
    ->getLayerOutput(0));
}

void efficientDetD0_coco0_0::cleanup()
{
  try {
    deallocate();
    for (int32_T idx{0}; idx < 600; idx++) {
      layers[idx]->cleanup();
    }

    if (targetImpl) {
      targetImpl->cleanup();
    }

    isInitialized = false;
    checkCleanupCudaError(cudaGetLastError(), __FILE__, __LINE__);
  } catch (std::runtime_error const& err) {
    checkCleanupRunTimeError(err.what(), __FILE__, __LINE__);
  }

  catch (...)
  {
    checkCleanupRunTimeError("", __FILE__, __LINE__);
  }
}

void efficientDetD0_coco0_0::deallocate()
{
  targetImpl->deallocate();
  for (int32_T idx{0}; idx < 600; idx++) {
    layers[idx]->deallocate();
  }
}

void efficientDetD0_coco0_0::postsetup()
{
  targetImpl->postSetup(layers, numLayers);
}

void efficientDetD0_coco0_0::resetState()
{
}

void efficientDetD0_coco0_0::setSize()
{
  for (int32_T idx{0}; idx < 600; idx++) {
    layers[idx]->propagateSize();
  }

  allocate();
  postsetup();
}

void efficientDetD0_coco0_0::setup()
{
  if (isInitialized) {
    resetState();
  } else {
    targetImpl->preSetup();
    targetImpl->setAutoTune(true);
    (static_cast<MWInputLayer *>(layers[0]))->createInputLayer(targetImpl,
      inputTensors[0], "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[1]))->createConvLayer(targetImpl, layers
      [0]->getOutputTensor(0), 3, 3, 3, 32, 2, 2, 0, 1, 0, 1, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_stem_conv2d_Conv"
      "2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_stem_conv2d_Conv"
      "2D_b.bin", "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[2]))->createSigmoidLayer(targetImpl,
      layers[1]->getOutputTensor(0), "SSCB", 0);
    (static_cast<c_MWMultiplicationLayer_efficie *>(layers[3]))
      ->createCustomLayer(targetImpl, layers[1]->getOutputTensor(0), layers[2]
                          ->getOutputTensor(0), "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[4]))->createConvLayer(targetImpl, layers
      [3]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 32,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_0_depthwi"
      "se_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_0_depthwi"
      "se_conv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWSigmoidLayer *>(layers[5]))->createSigmoidLayer(targetImpl,
      layers[4]->getOutputTensor(0), "SSCB", 1);
    (static_cast<d_MWMultiplicationLayer_efficie *>(layers[6]))
      ->createCustomLayer(targetImpl, layers[4]->getOutputTensor(0), layers[5]
                          ->getOutputTensor(0), "SSCB", 2);
    (static_cast<MWAvgPoolingLayer *>(layers[7]))->createAvgPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[6]->getOutputTensor(0), -1, -1, 1,
                          1, 0, 0, 0, 0, 0, "FLOAT", 1, "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[8]))->createConvLayer(targetImpl, layers
      [7]->getOutputTensor(0), 1, 1, 32, 8, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_0_se_conv"
      "2d_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_0_se_conv"
      "2d_BiasAdd_b.bin", "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[9]))->createSigmoidLayer(targetImpl,
      layers[8]->getOutputTensor(0), "SSCB", 0);
    (static_cast<e_MWMultiplicationLayer_efficie *>(layers[10]))
      ->createCustomLayer(targetImpl, layers[8]->getOutputTensor(0), layers[9]
                          ->getOutputTensor(0), "SSCB", 3);
    (static_cast<MWConvLayer *>(layers[11]))->createConvLayer(targetImpl,
      layers[10]->getOutputTensor(0), 1, 1, 8, 32, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_0_se_conv"
      "2d_1_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_0_se_conv"
      "2d_1_BiasAdd_b.bin", "SSCB", 0);
    (static_cast<MWSigmoidLayer *>(layers[12]))->createSigmoidLayer(targetImpl,
      layers[11]->getOutputTensor(0), "SSCB", 0);
    (static_cast<f_MWMultiplicationLayer_efficie *>(layers[13]))
      ->createCustomLayer(targetImpl, layers[12]->getOutputTensor(0), layers[6
                          ]->getOutputTensor(0), "SSCB", 1);
    (static_cast<MWConvLayer *>(layers[14]))->createConvLayer(targetImpl,
      layers[13]->getOutputTensor(0), 1, 1, 32, 16, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_0_conv2d_"
      "Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_0_conv2d_"
      "Conv2D_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[15]))->createConvLayer(targetImpl,
      layers[14]->getOutputTensor(0), 1, 1, 16, 96, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_1_conv2d_"
      "Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_1_conv2d_"
      "Conv2D_b.bin", "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[16]))->createSigmoidLayer(targetImpl,
      layers[15]->getOutputTensor(0), "SSCB", 0);
    (static_cast<g_MWMultiplicationLayer_efficie *>(layers[17]))
      ->createCustomLayer(targetImpl, layers[15]->getOutputTensor(0), layers[16
                          ]->getOutputTensor(0), "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[18]))->createConvLayer(targetImpl,
      layers[17]->getOutputTensor(0), 3, 3, 1, 1, 2, 2, 0, 1, 0, 1, 1, 1, 96,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_1_depthwi"
      "se_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_1_depthwi"
      "se_conv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWSigmoidLayer *>(layers[19]))->createSigmoidLayer(targetImpl,
      layers[18]->getOutputTensor(0), "SSCB", 1);
    (static_cast<h_MWMultiplicationLayer_efficie *>(layers[20]))
      ->createCustomLayer(targetImpl, layers[18]->getOutputTensor(0), layers[19
                          ]->getOutputTensor(0), "SSCB", 2);
    (static_cast<MWAvgPoolingLayer *>(layers[21]))->createAvgPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[20]->getOutputTensor(0), -1, -1, 1,
                          1, 0, 0, 0, 0, 0, "FLOAT", 1, "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[22]))->createConvLayer(targetImpl,
      layers[21]->getOutputTensor(0), 1, 1, 96, 4, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_1_se_conv"
      "2d_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_1_se_conv"
      "2d_BiasAdd_b.bin", "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[23]))->createSigmoidLayer(targetImpl,
      layers[22]->getOutputTensor(0), "SSCB", 0);
    (static_cast<i_MWMultiplicationLayer_efficie *>(layers[24]))
      ->createCustomLayer(targetImpl, layers[22]->getOutputTensor(0), layers[23
                          ]->getOutputTensor(0), "SSCB", 3);
    (static_cast<MWConvLayer *>(layers[25]))->createConvLayer(targetImpl,
      layers[24]->getOutputTensor(0), 1, 1, 4, 96, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_1_se_conv"
      "2d_1_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_1_se_conv"
      "2d_1_BiasAdd_b.bin", "SSCB", 0);
    (static_cast<MWSigmoidLayer *>(layers[26]))->createSigmoidLayer(targetImpl,
      layers[25]->getOutputTensor(0), "SSCB", 0);
    (static_cast<j_MWMultiplicationLayer_efficie *>(layers[27]))
      ->createCustomLayer(targetImpl, layers[26]->getOutputTensor(0), layers[20
                          ]->getOutputTensor(0), "SSCB", 1);
    (static_cast<MWConvLayer *>(layers[28]))->createConvLayer(targetImpl,
      layers[27]->getOutputTensor(0), 1, 1, 96, 24, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_1_conv2d_"
      "1_Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_1_conv2d_"
      "1_Conv2D_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[29]))->createConvLayer(targetImpl,
      layers[28]->getOutputTensor(0), 1, 1, 24, 144, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_2_conv2d_"
      "Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_2_conv2d_"
      "Conv2D_b.bin", "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[30]))->createSigmoidLayer(targetImpl,
      layers[29]->getOutputTensor(0), "SSCB", 2);
    (static_cast<k_MWMultiplicationLayer_efficie *>(layers[31]))
      ->createCustomLayer(targetImpl, layers[29]->getOutputTensor(0), layers[30
                          ]->getOutputTensor(0), "SSCB", 3);
    (static_cast<MWConvLayer *>(layers[32]))->createConvLayer(targetImpl,
      layers[31]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 144,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_2_depthwi"
      "se_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_2_depthwi"
      "se_conv2d_depthwise_b.bin", "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[33]))->createSigmoidLayer(targetImpl,
      layers[32]->getOutputTensor(0), "SSCB", 2);
    (static_cast<l_MWMultiplicationLayer_efficie *>(layers[34]))
      ->createCustomLayer(targetImpl, layers[32]->getOutputTensor(0), layers[33
                          ]->getOutputTensor(0), "SSCB", 3);
    (static_cast<MWAvgPoolingLayer *>(layers[35]))->createAvgPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[34]->getOutputTensor(0), -1, -1, 1,
                          1, 0, 0, 0, 0, 0, "FLOAT", 1, "SSCB", 1);
    (static_cast<MWConvLayer *>(layers[36]))->createConvLayer(targetImpl,
      layers[35]->getOutputTensor(0), 1, 1, 144, 6, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_2_se_conv"
      "2d_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_2_se_conv"
      "2d_BiasAdd_b.bin", "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[37]))->createSigmoidLayer(targetImpl,
      layers[36]->getOutputTensor(0), "SSCB", 1);
    (static_cast<m_MWMultiplicationLayer_efficie *>(layers[38]))
      ->createCustomLayer(targetImpl, layers[36]->getOutputTensor(0), layers[37
                          ]->getOutputTensor(0), "SSCB", 4);
    (static_cast<MWConvLayer *>(layers[39]))->createConvLayer(targetImpl,
      layers[38]->getOutputTensor(0), 1, 1, 6, 144, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_2_se_conv"
      "2d_1_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_2_se_conv"
      "2d_1_BiasAdd_b.bin", "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[40]))->createSigmoidLayer(targetImpl,
      layers[39]->getOutputTensor(0), "SSCB", 1);
    (static_cast<n_MWMultiplicationLayer_efficie *>(layers[41]))
      ->createCustomLayer(targetImpl, layers[40]->getOutputTensor(0), layers[34
                          ]->getOutputTensor(0), "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[42]))->createConvLayer(targetImpl,
      layers[41]->getOutputTensor(0), 1, 1, 144, 24, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_2_conv2d_"
      "1_Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_2_conv2d_"
      "1_Conv2D_b.bin", "SSCB", 1);
    (static_cast<MWAdditionLayer *>(layers[43]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[42]->getOutputTensor(0), layers[28]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[44]))->createConvLayer(targetImpl,
      layers[43]->getOutputTensor(0), 1, 1, 24, 144, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_3_conv2d_"
      "Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_3_conv2d_"
      "Conv2D_b.bin", "SSCB", 0);
    (static_cast<MWSigmoidLayer *>(layers[45]))->createSigmoidLayer(targetImpl,
      layers[44]->getOutputTensor(0), "SSCB", 1);
    (static_cast<o_MWMultiplicationLayer_efficie *>(layers[46]))
      ->createCustomLayer(targetImpl, layers[44]->getOutputTensor(0), layers[45
                          ]->getOutputTensor(0), "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[47]))->createConvLayer(targetImpl,
      layers[46]->getOutputTensor(0), 5, 5, 1, 1, 2, 2, 1, 2, 1, 2, 1, 1, 144,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_3_depthwi"
      "se_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_3_depthwi"
      "se_conv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWSigmoidLayer *>(layers[48]))->createSigmoidLayer(targetImpl,
      layers[47]->getOutputTensor(0), "SSCB", 1);
    (static_cast<p_MWMultiplicationLayer_efficie *>(layers[49]))
      ->createCustomLayer(targetImpl, layers[47]->getOutputTensor(0), layers[48
                          ]->getOutputTensor(0), "SSCB", 2);
    (static_cast<MWAvgPoolingLayer *>(layers[50]))->createAvgPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[49]->getOutputTensor(0), -1, -1, 1,
                          1, 0, 0, 0, 0, 0, "FLOAT", 1, "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[51]))->createConvLayer(targetImpl,
      layers[50]->getOutputTensor(0), 1, 1, 144, 6, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_3_se_conv"
      "2d_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_3_se_conv"
      "2d_BiasAdd_b.bin", "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[52]))->createSigmoidLayer(targetImpl,
      layers[51]->getOutputTensor(0), "SSCB", 0);
    (static_cast<q_MWMultiplicationLayer_efficie *>(layers[53]))
      ->createCustomLayer(targetImpl, layers[51]->getOutputTensor(0), layers[52
                          ]->getOutputTensor(0), "SSCB", 3);
    (static_cast<MWConvLayer *>(layers[54]))->createConvLayer(targetImpl,
      layers[53]->getOutputTensor(0), 1, 1, 6, 144, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_3_se_conv"
      "2d_1_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_3_se_conv"
      "2d_1_BiasAdd_b.bin", "SSCB", 0);
    (static_cast<MWSigmoidLayer *>(layers[55]))->createSigmoidLayer(targetImpl,
      layers[54]->getOutputTensor(0), "SSCB", 0);
    (static_cast<r_MWMultiplicationLayer_efficie *>(layers[56]))
      ->createCustomLayer(targetImpl, layers[55]->getOutputTensor(0), layers[49
                          ]->getOutputTensor(0), "SSCB", 1);
    (static_cast<MWConvLayer *>(layers[57]))->createConvLayer(targetImpl,
      layers[56]->getOutputTensor(0), 1, 1, 144, 40, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_3_conv2d_"
      "1_Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_3_conv2d_"
      "1_Conv2D_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[58]))->createConvLayer(targetImpl,
      layers[57]->getOutputTensor(0), 1, 1, 40, 240, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_4_conv2d_"
      "Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_4_conv2d_"
      "Conv2D_b.bin", "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[59]))->createSigmoidLayer(targetImpl,
      layers[58]->getOutputTensor(0), "SSCB", 2);
    (static_cast<s_MWMultiplicationLayer_efficie *>(layers[60]))
      ->createCustomLayer(targetImpl, layers[58]->getOutputTensor(0), layers[59
                          ]->getOutputTensor(0), "SSCB", 3);
    (static_cast<MWConvLayer *>(layers[61]))->createConvLayer(targetImpl,
      layers[60]->getOutputTensor(0), 5, 5, 1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 240,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_4_depthwi"
      "se_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_4_depthwi"
      "se_conv2d_depthwise_b.bin", "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[62]))->createSigmoidLayer(targetImpl,
      layers[61]->getOutputTensor(0), "SSCB", 2);
    (static_cast<t_MWMultiplicationLayer_efficie *>(layers[63]))
      ->createCustomLayer(targetImpl, layers[61]->getOutputTensor(0), layers[62
                          ]->getOutputTensor(0), "SSCB", 3);
    (static_cast<MWAvgPoolingLayer *>(layers[64]))->createAvgPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[63]->getOutputTensor(0), -1, -1, 1,
                          1, 0, 0, 0, 0, 0, "FLOAT", 1, "SSCB", 1);
    (static_cast<MWConvLayer *>(layers[65]))->createConvLayer(targetImpl,
      layers[64]->getOutputTensor(0), 1, 1, 240, 10, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_4_se_conv"
      "2d_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_4_se_conv"
      "2d_BiasAdd_b.bin", "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[66]))->createSigmoidLayer(targetImpl,
      layers[65]->getOutputTensor(0), "SSCB", 1);
    (static_cast<u_MWMultiplicationLayer_efficie *>(layers[67]))
      ->createCustomLayer(targetImpl, layers[65]->getOutputTensor(0), layers[66
                          ]->getOutputTensor(0), "SSCB", 4);
    (static_cast<MWConvLayer *>(layers[68]))->createConvLayer(targetImpl,
      layers[67]->getOutputTensor(0), 1, 1, 10, 240, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_4_se_conv"
      "2d_1_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_4_se_conv"
      "2d_1_BiasAdd_b.bin", "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[69]))->createSigmoidLayer(targetImpl,
      layers[68]->getOutputTensor(0), "SSCB", 1);
    (static_cast<v_MWMultiplicationLayer_efficie *>(layers[70]))
      ->createCustomLayer(targetImpl, layers[69]->getOutputTensor(0), layers[63
                          ]->getOutputTensor(0), "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[71]))->createConvLayer(targetImpl,
      layers[70]->getOutputTensor(0), 1, 1, 240, 40, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_4_conv2d_"
      "1_Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_4_conv2d_"
      "1_Conv2D_b.bin", "SSCB", 1);
    (static_cast<MWAdditionLayer *>(layers[72]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[71]->getOutputTensor(0), layers[57]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[73]))->createConvLayer(targetImpl,
      layers[72]->getOutputTensor(0), 1, 1, 40, 304, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_5_conv2d_"
      "Conv2D_w_fused.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_5_conv2d_"
      "Conv2D_b_fused.bin", "SSCB", 0);
    (static_cast<MWSplittingLayer *>(layers[74]))->createSplittingLayer
      (targetImpl, layers[73]->getOutputTensor(0), 2, 240, 64, 2, "SSCB", "SSCB",
       0, 0);
    (static_cast<MWSigmoidLayer *>(layers[75]))->createSigmoidLayer(targetImpl,
      layers[74]->getOutputTensor(0), "SSCB", 1);
    (static_cast<w_MWMultiplicationLayer_efficie *>(layers[76]))
      ->createCustomLayer(targetImpl, layers[74]->getOutputTensor(0), layers[75
                          ]->getOutputTensor(0), "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[77]))->createConvLayer(targetImpl,
      layers[76]->getOutputTensor(0), 3, 3, 1, 1, 2, 2, 0, 1, 0, 1, 1, 1, 240,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_5_depthwi"
      "se_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_5_depthwi"
      "se_conv2d_depthwise_b.bin", "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[78]))->createSigmoidLayer(targetImpl,
      layers[77]->getOutputTensor(0), "SSCB", 2);
    (static_cast<x_MWMultiplicationLayer_efficie *>(layers[79]))
      ->createCustomLayer(targetImpl, layers[77]->getOutputTensor(0), layers[78
                          ]->getOutputTensor(0), "SSCB", 3);
    (static_cast<MWAvgPoolingLayer *>(layers[80]))->createAvgPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[79]->getOutputTensor(0), -1, -1, 1,
                          1, 0, 0, 0, 0, 0, "FLOAT", 1, "SSCB", 1);
    (static_cast<MWConvLayer *>(layers[81]))->createConvLayer(targetImpl,
      layers[80]->getOutputTensor(0), 1, 1, 240, 10, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_5_se_conv"
      "2d_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_5_se_conv"
      "2d_BiasAdd_b.bin", "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[82]))->createSigmoidLayer(targetImpl,
      layers[81]->getOutputTensor(0), "SSCB", 1);
    (static_cast<y_MWMultiplicationLayer_efficie *>(layers[83]))
      ->createCustomLayer(targetImpl, layers[81]->getOutputTensor(0), layers[82
                          ]->getOutputTensor(0), "SSCB", 4);
    (static_cast<MWConvLayer *>(layers[84]))->createConvLayer(targetImpl,
      layers[83]->getOutputTensor(0), 1, 1, 10, 240, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_5_se_conv"
      "2d_1_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_5_se_conv"
      "2d_1_BiasAdd_b.bin", "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[85]))->createSigmoidLayer(targetImpl,
      layers[84]->getOutputTensor(0), "SSCB", 1);
    (static_cast<ab_MWMultiplicationLayer_effici *>(layers[86]))
      ->createCustomLayer(targetImpl, layers[85]->getOutputTensor(0), layers[79
                          ]->getOutputTensor(0), "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[87]))->createConvLayer(targetImpl,
      layers[86]->getOutputTensor(0), 1, 1, 240, 80, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_5_conv2d_"
      "1_Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_5_conv2d_"
      "1_Conv2D_b.bin", "SSCB", 1);
    (static_cast<MWConvLayer *>(layers[88]))->createConvLayer(targetImpl,
      layers[87]->getOutputTensor(0), 1, 1, 80, 480, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_6_conv2d_"
      "Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_6_conv2d_"
      "Conv2D_b.bin", "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[89]))->createSigmoidLayer(targetImpl,
      layers[88]->getOutputTensor(0), "SSCB", 3);
    (static_cast<bb_MWMultiplicationLayer_effici *>(layers[90]))
      ->createCustomLayer(targetImpl, layers[88]->getOutputTensor(0), layers[89
                          ]->getOutputTensor(0), "SSCB", 4);
    (static_cast<MWConvLayer *>(layers[91]))->createConvLayer(targetImpl,
      layers[90]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 480,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_6_depthwi"
      "se_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_6_depthwi"
      "se_conv2d_depthwise_b.bin", "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[92]))->createSigmoidLayer(targetImpl,
      layers[91]->getOutputTensor(0), "SSCB", 3);
    (static_cast<cb_MWMultiplicationLayer_effici *>(layers[93]))
      ->createCustomLayer(targetImpl, layers[91]->getOutputTensor(0), layers[92
                          ]->getOutputTensor(0), "SSCB", 4);
    (static_cast<MWAvgPoolingLayer *>(layers[94]))->createAvgPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[93]->getOutputTensor(0), -1, -1, 1,
                          1, 0, 0, 0, 0, 0, "FLOAT", 1, "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[95]))->createConvLayer(targetImpl,
      layers[94]->getOutputTensor(0), 1, 1, 480, 20, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_6_se_conv"
      "2d_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_6_se_conv"
      "2d_BiasAdd_b.bin", "SSCB", 3);
    (static_cast<MWSigmoidLayer *>(layers[96]))->createSigmoidLayer(targetImpl,
      layers[95]->getOutputTensor(0), "SSCB", 2);
    (static_cast<db_MWMultiplicationLayer_effici *>(layers[97]))
      ->createCustomLayer(targetImpl, layers[95]->getOutputTensor(0), layers[96
                          ]->getOutputTensor(0), "SSCB", 5);
    (static_cast<MWConvLayer *>(layers[98]))->createConvLayer(targetImpl,
      layers[97]->getOutputTensor(0), 1, 1, 20, 480, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_6_se_conv"
      "2d_1_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_6_se_conv"
      "2d_1_BiasAdd_b.bin", "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[99]))->createSigmoidLayer(targetImpl,
      layers[98]->getOutputTensor(0), "SSCB", 2);
    (static_cast<eb_MWMultiplicationLayer_effici *>(layers[100]))
      ->createCustomLayer(targetImpl, layers[99]->getOutputTensor(0), layers[93
                          ]->getOutputTensor(0), "SSCB", 3);
    (static_cast<MWConvLayer *>(layers[101]))->createConvLayer(targetImpl,
      layers[100]->getOutputTensor(0), 1, 1, 480, 80, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_6_conv2d_"
      "1_Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_6_conv2d_"
      "1_Conv2D_b.bin", "SSCB", 2);
    (static_cast<MWAdditionLayer *>(layers[102]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[101]->getOutputTensor(0), layers[87]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 3);
    (static_cast<MWConvLayer *>(layers[103]))->createConvLayer(targetImpl,
      layers[102]->getOutputTensor(0), 1, 1, 80, 480, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_7_conv2d_"
      "Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_7_conv2d_"
      "Conv2D_b.bin", "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[104]))->createSigmoidLayer(targetImpl,
      layers[103]->getOutputTensor(0), "SSCB", 2);
    (static_cast<fb_MWMultiplicationLayer_effici *>(layers[105]))
      ->createCustomLayer(targetImpl, layers[103]->getOutputTensor(0), layers
                          [104]->getOutputTensor(0), "SSCB", 4);
    (static_cast<MWConvLayer *>(layers[106]))->createConvLayer(targetImpl,
      layers[105]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 480,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_7_depthwi"
      "se_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_7_depthwi"
      "se_conv2d_depthwise_b.bin", "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[107]))->createSigmoidLayer(targetImpl,
      layers[106]->getOutputTensor(0), "SSCB", 2);
    (static_cast<gb_MWMultiplicationLayer_effici *>(layers[108]))
      ->createCustomLayer(targetImpl, layers[106]->getOutputTensor(0), layers
                          [107]->getOutputTensor(0), "SSCB", 4);
    (static_cast<MWAvgPoolingLayer *>(layers[109]))->createAvgPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[108]->getOutputTensor(0), -1, -1, 1,
                          1, 0, 0, 0, 0, 0, "FLOAT", 1, "SSCB", 1);
    (static_cast<MWConvLayer *>(layers[110]))->createConvLayer(targetImpl,
      layers[109]->getOutputTensor(0), 1, 1, 480, 20, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_7_se_conv"
      "2d_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_7_se_conv"
      "2d_BiasAdd_b.bin", "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[111]))->createSigmoidLayer(targetImpl,
      layers[110]->getOutputTensor(0), "SSCB", 1);
    (static_cast<hb_MWMultiplicationLayer_effici *>(layers[112]))
      ->createCustomLayer(targetImpl, layers[110]->getOutputTensor(0), layers
                          [111]->getOutputTensor(0), "SSCB", 5);
    (static_cast<MWConvLayer *>(layers[113]))->createConvLayer(targetImpl,
      layers[112]->getOutputTensor(0), 1, 1, 20, 480, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_7_se_conv"
      "2d_1_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_7_se_conv"
      "2d_1_BiasAdd_b.bin", "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[114]))->createSigmoidLayer(targetImpl,
      layers[113]->getOutputTensor(0), "SSCB", 1);
    (static_cast<ib_MWMultiplicationLayer_effici *>(layers[115]))
      ->createCustomLayer(targetImpl, layers[114]->getOutputTensor(0), layers
                          [108]->getOutputTensor(0), "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[116]))->createConvLayer(targetImpl,
      layers[115]->getOutputTensor(0), 1, 1, 480, 80, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_7_conv2d_"
      "1_Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_7_conv2d_"
      "1_Conv2D_b.bin", "SSCB", 1);
    (static_cast<MWAdditionLayer *>(layers[117]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[116]->getOutputTensor(0), layers[102]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[118]))->createConvLayer(targetImpl,
      layers[117]->getOutputTensor(0), 1, 1, 80, 480, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_8_conv2d_"
      "Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_8_conv2d_"
      "Conv2D_b.bin", "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[119]))->createSigmoidLayer(targetImpl,
      layers[118]->getOutputTensor(0), "SSCB", 2);
    (static_cast<jb_MWMultiplicationLayer_effici *>(layers[120]))
      ->createCustomLayer(targetImpl, layers[118]->getOutputTensor(0), layers
                          [119]->getOutputTensor(0), "SSCB", 3);
    (static_cast<MWConvLayer *>(layers[121]))->createConvLayer(targetImpl,
      layers[120]->getOutputTensor(0), 5, 5, 1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 480,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_8_depthwi"
      "se_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_8_depthwi"
      "se_conv2d_depthwise_b.bin", "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[122]))->createSigmoidLayer(targetImpl,
      layers[121]->getOutputTensor(0), "SSCB", 2);
    (static_cast<kb_MWMultiplicationLayer_effici *>(layers[123]))
      ->createCustomLayer(targetImpl, layers[121]->getOutputTensor(0), layers
                          [122]->getOutputTensor(0), "SSCB", 3);
    (static_cast<MWAvgPoolingLayer *>(layers[124]))->createAvgPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[123]->getOutputTensor(0), -1, -1, 1,
                          1, 0, 0, 0, 0, 0, "FLOAT", 1, "SSCB", 1);
    (static_cast<MWConvLayer *>(layers[125]))->createConvLayer(targetImpl,
      layers[124]->getOutputTensor(0), 1, 1, 480, 20, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_8_se_conv"
      "2d_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_8_se_conv"
      "2d_BiasAdd_b.bin", "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[126]))->createSigmoidLayer(targetImpl,
      layers[125]->getOutputTensor(0), "SSCB", 1);
    (static_cast<lb_MWMultiplicationLayer_effici *>(layers[127]))
      ->createCustomLayer(targetImpl, layers[125]->getOutputTensor(0), layers
                          [126]->getOutputTensor(0), "SSCB", 4);
    (static_cast<MWConvLayer *>(layers[128]))->createConvLayer(targetImpl,
      layers[127]->getOutputTensor(0), 1, 1, 20, 480, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_8_se_conv"
      "2d_1_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_8_se_conv"
      "2d_1_BiasAdd_b.bin", "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[129]))->createSigmoidLayer(targetImpl,
      layers[128]->getOutputTensor(0), "SSCB", 1);
    (static_cast<mb_MWMultiplicationLayer_effici *>(layers[130]))
      ->createCustomLayer(targetImpl, layers[129]->getOutputTensor(0), layers
                          [123]->getOutputTensor(0), "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[131]))->createConvLayer(targetImpl,
      layers[130]->getOutputTensor(0), 1, 1, 480, 112, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_8_conv2d_"
      "1_Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_8_conv2d_"
      "1_Conv2D_b.bin", "SSCB", 1);
    (static_cast<MWConvLayer *>(layers[132]))->createConvLayer(targetImpl,
      layers[131]->getOutputTensor(0), 1, 1, 112, 672, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_9_conv2d_"
      "Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_9_conv2d_"
      "Conv2D_b.bin", "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[133]))->createSigmoidLayer(targetImpl,
      layers[132]->getOutputTensor(0), "SSCB", 3);
    (static_cast<nb_MWMultiplicationLayer_effici *>(layers[134]))
      ->createCustomLayer(targetImpl, layers[132]->getOutputTensor(0), layers
                          [133]->getOutputTensor(0), "SSCB", 4);
    (static_cast<MWConvLayer *>(layers[135]))->createConvLayer(targetImpl,
      layers[134]->getOutputTensor(0), 5, 5, 1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 672,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_9_depthwi"
      "se_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_9_depthwi"
      "se_conv2d_depthwise_b.bin", "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[136]))->createSigmoidLayer(targetImpl,
      layers[135]->getOutputTensor(0), "SSCB", 3);
    (static_cast<ob_MWMultiplicationLayer_effici *>(layers[137]))
      ->createCustomLayer(targetImpl, layers[135]->getOutputTensor(0), layers
                          [136]->getOutputTensor(0), "SSCB", 4);
    (static_cast<MWAvgPoolingLayer *>(layers[138]))->createAvgPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[137]->getOutputTensor(0), -1, -1, 1,
                          1, 0, 0, 0, 0, 0, "FLOAT", 1, "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[139]))->createConvLayer(targetImpl,
      layers[138]->getOutputTensor(0), 1, 1, 672, 28, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_9_se_conv"
      "2d_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_9_se_conv"
      "2d_BiasAdd_b.bin", "SSCB", 3);
    (static_cast<MWSigmoidLayer *>(layers[140]))->createSigmoidLayer(targetImpl,
      layers[139]->getOutputTensor(0), "SSCB", 2);
    (static_cast<pb_MWMultiplicationLayer_effici *>(layers[141]))
      ->createCustomLayer(targetImpl, layers[139]->getOutputTensor(0), layers
                          [140]->getOutputTensor(0), "SSCB", 5);
    (static_cast<MWConvLayer *>(layers[142]))->createConvLayer(targetImpl,
      layers[141]->getOutputTensor(0), 1, 1, 28, 672, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_9_se_conv"
      "2d_1_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_9_se_conv"
      "2d_1_BiasAdd_b.bin", "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[143]))->createSigmoidLayer(targetImpl,
      layers[142]->getOutputTensor(0), "SSCB", 2);
    (static_cast<qb_MWMultiplicationLayer_effici *>(layers[144]))
      ->createCustomLayer(targetImpl, layers[143]->getOutputTensor(0), layers
                          [137]->getOutputTensor(0), "SSCB", 3);
    (static_cast<MWConvLayer *>(layers[145]))->createConvLayer(targetImpl,
      layers[144]->getOutputTensor(0), 1, 1, 672, 112, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_9_conv2d_"
      "1_Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_9_conv2d_"
      "1_Conv2D_b.bin", "SSCB", 2);
    (static_cast<MWAdditionLayer *>(layers[146]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[145]->getOutputTensor(0), layers[131]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 3);
    (static_cast<MWConvLayer *>(layers[147]))->createConvLayer(targetImpl,
      layers[146]->getOutputTensor(0), 1, 1, 112, 672, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_10_conv2d"
      "_Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_10_conv2d"
      "_Conv2D_b.bin", "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[148]))->createSigmoidLayer(targetImpl,
      layers[147]->getOutputTensor(0), "SSCB", 2);
    (static_cast<rb_MWMultiplicationLayer_effici *>(layers[149]))
      ->createCustomLayer(targetImpl, layers[147]->getOutputTensor(0), layers
                          [148]->getOutputTensor(0), "SSCB", 4);
    (static_cast<MWConvLayer *>(layers[150]))->createConvLayer(targetImpl,
      layers[149]->getOutputTensor(0), 5, 5, 1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 672,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_10_depthw"
      "ise_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_10_depthw"
      "ise_conv2d_depthwise_b.bin", "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[151]))->createSigmoidLayer(targetImpl,
      layers[150]->getOutputTensor(0), "SSCB", 2);
    (static_cast<sb_MWMultiplicationLayer_effici *>(layers[152]))
      ->createCustomLayer(targetImpl, layers[150]->getOutputTensor(0), layers
                          [151]->getOutputTensor(0), "SSCB", 4);
    (static_cast<MWAvgPoolingLayer *>(layers[153]))->createAvgPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[152]->getOutputTensor(0), -1, -1, 1,
                          1, 0, 0, 0, 0, 0, "FLOAT", 1, "SSCB", 1);
    (static_cast<MWConvLayer *>(layers[154]))->createConvLayer(targetImpl,
      layers[153]->getOutputTensor(0), 1, 1, 672, 28, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_10_se_con"
      "v2d_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_10_se_con"
      "v2d_BiasAdd_b.bin", "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[155]))->createSigmoidLayer(targetImpl,
      layers[154]->getOutputTensor(0), "SSCB", 1);
    (static_cast<tb_MWMultiplicationLayer_effici *>(layers[156]))
      ->createCustomLayer(targetImpl, layers[154]->getOutputTensor(0), layers
                          [155]->getOutputTensor(0), "SSCB", 5);
    (static_cast<MWConvLayer *>(layers[157]))->createConvLayer(targetImpl,
      layers[156]->getOutputTensor(0), 1, 1, 28, 672, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_10_se_con"
      "v2d_1_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_10_se_con"
      "v2d_1_BiasAdd_b.bin", "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[158]))->createSigmoidLayer(targetImpl,
      layers[157]->getOutputTensor(0), "SSCB", 1);
    (static_cast<ub_MWMultiplicationLayer_effici *>(layers[159]))
      ->createCustomLayer(targetImpl, layers[158]->getOutputTensor(0), layers
                          [152]->getOutputTensor(0), "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[160]))->createConvLayer(targetImpl,
      layers[159]->getOutputTensor(0), 1, 1, 672, 112, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_10_conv2d"
      "_1_Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_10_conv2d"
      "_1_Conv2D_b.bin", "SSCB", 1);
    (static_cast<MWAdditionLayer *>(layers[161]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[160]->getOutputTensor(0), layers[146]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[162]))->createConvLayer(targetImpl,
      layers[161]->getOutputTensor(0), 1, 1, 112, 800, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_11_conv2d"
      "_Conv2D_w_fused.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_11_conv2d"
      "_Conv2D_b_fused.bin", "SSCB", 1);
    (static_cast<MWSplittingLayer *>(layers[163]))->createSplittingLayer
      (targetImpl, layers[162]->getOutputTensor(0), 3, 672, 64, 64, 3, "SSCB",
       "SSCB", "SSCB", 1, 1, 1);
    (static_cast<MWSigmoidLayer *>(layers[164]))->createSigmoidLayer(targetImpl,
      layers[163]->getOutputTensor(0), "SSCB", 2);
    (static_cast<vb_MWMultiplicationLayer_effici *>(layers[165]))
      ->createCustomLayer(targetImpl, layers[163]->getOutputTensor(0), layers
                          [164]->getOutputTensor(0), "SSCB", 3);
    (static_cast<MWConvLayer *>(layers[166]))->createConvLayer(targetImpl,
      layers[165]->getOutputTensor(0), 5, 5, 1, 1, 2, 2, 1, 2, 1, 2, 1, 1, 672,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_11_depthw"
      "ise_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_11_depthw"
      "ise_conv2d_depthwise_b.bin", "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[167]))->createSigmoidLayer(targetImpl,
      layers[166]->getOutputTensor(0), "SSCB", 3);
    (static_cast<wb_MWMultiplicationLayer_effici *>(layers[168]))
      ->createCustomLayer(targetImpl, layers[166]->getOutputTensor(0), layers
                          [167]->getOutputTensor(0), "SSCB", 4);
    (static_cast<MWAvgPoolingLayer *>(layers[169]))->createAvgPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[168]->getOutputTensor(0), -1, -1, 1,
                          1, 0, 0, 0, 0, 0, "FLOAT", 1, "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[170]))->createConvLayer(targetImpl,
      layers[169]->getOutputTensor(0), 1, 1, 672, 28, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_11_se_con"
      "v2d_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_11_se_con"
      "v2d_BiasAdd_b.bin", "SSCB", 3);
    (static_cast<MWSigmoidLayer *>(layers[171]))->createSigmoidLayer(targetImpl,
      layers[170]->getOutputTensor(0), "SSCB", 2);
    (static_cast<xb_MWMultiplicationLayer_effici *>(layers[172]))
      ->createCustomLayer(targetImpl, layers[170]->getOutputTensor(0), layers
                          [171]->getOutputTensor(0), "SSCB", 5);
    (static_cast<MWConvLayer *>(layers[173]))->createConvLayer(targetImpl,
      layers[172]->getOutputTensor(0), 1, 1, 28, 672, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_11_se_con"
      "v2d_1_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_11_se_con"
      "v2d_1_BiasAdd_b.bin", "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[174]))->createSigmoidLayer(targetImpl,
      layers[173]->getOutputTensor(0), "SSCB", 2);
    (static_cast<yb_MWMultiplicationLayer_effici *>(layers[175]))
      ->createCustomLayer(targetImpl, layers[174]->getOutputTensor(0), layers
                          [168]->getOutputTensor(0), "SSCB", 3);
    (static_cast<MWConvLayer *>(layers[176]))->createConvLayer(targetImpl,
      layers[175]->getOutputTensor(0), 1, 1, 672, 192, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_11_conv2d"
      "_1_Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_11_conv2d"
      "_1_Conv2D_b.bin", "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[177]))->createConvLayer(targetImpl,
      layers[176]->getOutputTensor(0), 1, 1, 192, 1152, 1, 1, 0, 0, 0, 0, 1, 1,
      1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_12_conv2d"
      "_Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_12_conv2d"
      "_Conv2D_b.bin", "SSCB", 3);
    (static_cast<MWSigmoidLayer *>(layers[178]))->createSigmoidLayer(targetImpl,
      layers[177]->getOutputTensor(0), "SSCB", 4);
    (static_cast<ac_MWMultiplicationLayer_effici *>(layers[179]))
      ->createCustomLayer(targetImpl, layers[177]->getOutputTensor(0), layers
                          [178]->getOutputTensor(0), "SSCB", 5);
    (static_cast<MWConvLayer *>(layers[180]))->createConvLayer(targetImpl,
      layers[179]->getOutputTensor(0), 5, 5, 1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 1152,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_12_depthw"
      "ise_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_12_depthw"
      "ise_conv2d_depthwise_b.bin", "SSCB", 3);
    (static_cast<MWSigmoidLayer *>(layers[181]))->createSigmoidLayer(targetImpl,
      layers[180]->getOutputTensor(0), "SSCB", 4);
    (static_cast<bc_MWMultiplicationLayer_effici *>(layers[182]))
      ->createCustomLayer(targetImpl, layers[180]->getOutputTensor(0), layers
                          [181]->getOutputTensor(0), "SSCB", 5);
    (static_cast<MWAvgPoolingLayer *>(layers[183]))->createAvgPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[182]->getOutputTensor(0), -1, -1, 1,
                          1, 0, 0, 0, 0, 0, "FLOAT", 1, "SSCB", 3);
    (static_cast<MWConvLayer *>(layers[184]))->createConvLayer(targetImpl,
      layers[183]->getOutputTensor(0), 1, 1, 1152, 48, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_12_se_con"
      "v2d_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_12_se_con"
      "v2d_BiasAdd_b.bin", "SSCB", 4);
    (static_cast<MWSigmoidLayer *>(layers[185]))->createSigmoidLayer(targetImpl,
      layers[184]->getOutputTensor(0), "SSCB", 3);
    (static_cast<cc_MWMultiplicationLayer_effici *>(layers[186]))
      ->createCustomLayer(targetImpl, layers[184]->getOutputTensor(0), layers
                          [185]->getOutputTensor(0), "SSCB", 6);
    (static_cast<MWConvLayer *>(layers[187]))->createConvLayer(targetImpl,
      layers[186]->getOutputTensor(0), 1, 1, 48, 1152, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_12_se_con"
      "v2d_1_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_12_se_con"
      "v2d_1_BiasAdd_b.bin", "SSCB", 3);
    (static_cast<MWSigmoidLayer *>(layers[188]))->createSigmoidLayer(targetImpl,
      layers[187]->getOutputTensor(0), "SSCB", 3);
    (static_cast<dc_MWMultiplicationLayer_effici *>(layers[189]))
      ->createCustomLayer(targetImpl, layers[188]->getOutputTensor(0), layers
                          [182]->getOutputTensor(0), "SSCB", 4);
    (static_cast<MWConvLayer *>(layers[190]))->createConvLayer(targetImpl,
      layers[189]->getOutputTensor(0), 1, 1, 1152, 192, 1, 1, 0, 0, 0, 0, 1, 1,
      1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_12_conv2d"
      "_1_Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_12_conv2d"
      "_1_Conv2D_b.bin", "SSCB", 3);
    (static_cast<MWAdditionLayer *>(layers[191]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[190]->getOutputTensor(0), layers[176]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 4);
    (static_cast<MWConvLayer *>(layers[192]))->createConvLayer(targetImpl,
      layers[191]->getOutputTensor(0), 1, 1, 192, 1152, 1, 1, 0, 0, 0, 0, 1, 1,
      1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_13_conv2d"
      "_Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_13_conv2d"
      "_Conv2D_b.bin", "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[193]))->createSigmoidLayer(targetImpl,
      layers[192]->getOutputTensor(0), "SSCB", 3);
    (static_cast<ec_MWMultiplicationLayer_effici *>(layers[194]))
      ->createCustomLayer(targetImpl, layers[192]->getOutputTensor(0), layers
                          [193]->getOutputTensor(0), "SSCB", 5);
    (static_cast<MWConvLayer *>(layers[195]))->createConvLayer(targetImpl,
      layers[194]->getOutputTensor(0), 5, 5, 1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 1152,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_13_depthw"
      "ise_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_13_depthw"
      "ise_conv2d_depthwise_b.bin", "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[196]))->createSigmoidLayer(targetImpl,
      layers[195]->getOutputTensor(0), "SSCB", 3);
    (static_cast<fc_MWMultiplicationLayer_effici *>(layers[197]))
      ->createCustomLayer(targetImpl, layers[195]->getOutputTensor(0), layers
                          [196]->getOutputTensor(0), "SSCB", 5);
    (static_cast<MWAvgPoolingLayer *>(layers[198]))->createAvgPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[197]->getOutputTensor(0), -1, -1, 1,
                          1, 0, 0, 0, 0, 0, "FLOAT", 1, "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[199]))->createConvLayer(targetImpl,
      layers[198]->getOutputTensor(0), 1, 1, 1152, 48, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_13_se_con"
      "v2d_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_13_se_con"
      "v2d_BiasAdd_b.bin", "SSCB", 3);
    (static_cast<MWSigmoidLayer *>(layers[200]))->createSigmoidLayer(targetImpl,
      layers[199]->getOutputTensor(0), "SSCB", 2);
    (static_cast<gc_MWMultiplicationLayer_effici *>(layers[201]))
      ->createCustomLayer(targetImpl, layers[199]->getOutputTensor(0), layers
                          [200]->getOutputTensor(0), "SSCB", 6);
    (static_cast<MWConvLayer *>(layers[202]))->createConvLayer(targetImpl,
      layers[201]->getOutputTensor(0), 1, 1, 48, 1152, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_13_se_con"
      "v2d_1_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_13_se_con"
      "v2d_1_BiasAdd_b.bin", "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[203]))->createSigmoidLayer(targetImpl,
      layers[202]->getOutputTensor(0), "SSCB", 2);
    (static_cast<hc_MWMultiplicationLayer_effici *>(layers[204]))
      ->createCustomLayer(targetImpl, layers[203]->getOutputTensor(0), layers
                          [197]->getOutputTensor(0), "SSCB", 3);
    (static_cast<MWConvLayer *>(layers[205]))->createConvLayer(targetImpl,
      layers[204]->getOutputTensor(0), 1, 1, 1152, 192, 1, 1, 0, 0, 0, 0, 1, 1,
      1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_13_conv2d"
      "_1_Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_13_conv2d"
      "_1_Conv2D_b.bin", "SSCB", 2);
    (static_cast<MWAdditionLayer *>(layers[206]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[205]->getOutputTensor(0), layers[191]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 3);
    (static_cast<MWConvLayer *>(layers[207]))->createConvLayer(targetImpl,
      layers[206]->getOutputTensor(0), 1, 1, 192, 1152, 1, 1, 0, 0, 0, 0, 1, 1,
      1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_14_conv2d"
      "_Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_14_conv2d"
      "_Conv2D_b.bin", "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[208]))->createSigmoidLayer(targetImpl,
      layers[207]->getOutputTensor(0), "SSCB", 4);
    (static_cast<ic_MWMultiplicationLayer_effici *>(layers[209]))
      ->createCustomLayer(targetImpl, layers[207]->getOutputTensor(0), layers
                          [208]->getOutputTensor(0), "SSCB", 5);
    (static_cast<MWConvLayer *>(layers[210]))->createConvLayer(targetImpl,
      layers[209]->getOutputTensor(0), 5, 5, 1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 1152,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_14_depthw"
      "ise_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_14_depthw"
      "ise_conv2d_depthwise_b.bin", "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[211]))->createSigmoidLayer(targetImpl,
      layers[210]->getOutputTensor(0), "SSCB", 4);
    (static_cast<jc_MWMultiplicationLayer_effici *>(layers[212]))
      ->createCustomLayer(targetImpl, layers[210]->getOutputTensor(0), layers
                          [211]->getOutputTensor(0), "SSCB", 5);
    (static_cast<MWAvgPoolingLayer *>(layers[213]))->createAvgPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[212]->getOutputTensor(0), -1, -1, 1,
                          1, 0, 0, 0, 0, 0, "FLOAT", 1, "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[214]))->createConvLayer(targetImpl,
      layers[213]->getOutputTensor(0), 1, 1, 1152, 48, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_14_se_con"
      "v2d_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_14_se_con"
      "v2d_BiasAdd_b.bin", "SSCB", 4);
    (static_cast<MWSigmoidLayer *>(layers[215]))->createSigmoidLayer(targetImpl,
      layers[214]->getOutputTensor(0), "SSCB", 2);
    (static_cast<kc_MWMultiplicationLayer_effici *>(layers[216]))
      ->createCustomLayer(targetImpl, layers[214]->getOutputTensor(0), layers
                          [215]->getOutputTensor(0), "SSCB", 6);
    (static_cast<MWConvLayer *>(layers[217]))->createConvLayer(targetImpl,
      layers[216]->getOutputTensor(0), 1, 1, 48, 1152, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_14_se_con"
      "v2d_1_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_14_se_con"
      "v2d_1_BiasAdd_b.bin", "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[218]))->createSigmoidLayer(targetImpl,
      layers[217]->getOutputTensor(0), "SSCB", 2);
    (static_cast<lc_MWMultiplicationLayer_effici *>(layers[219]))
      ->createCustomLayer(targetImpl, layers[218]->getOutputTensor(0), layers
                          [212]->getOutputTensor(0), "SSCB", 4);
    (static_cast<MWConvLayer *>(layers[220]))->createConvLayer(targetImpl,
      layers[219]->getOutputTensor(0), 1, 1, 1152, 192, 1, 1, 0, 0, 0, 0, 1, 1,
      1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_14_conv2d"
      "_1_Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_14_conv2d"
      "_1_Conv2D_b.bin", "SSCB", 2);
    (static_cast<MWAdditionLayer *>(layers[221]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[220]->getOutputTensor(0), layers[206]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 4);
    (static_cast<MWConvLayer *>(layers[222]))->createConvLayer(targetImpl,
      layers[221]->getOutputTensor(0), 1, 1, 192, 1152, 1, 1, 0, 0, 0, 0, 1, 1,
      1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_15_conv2d"
      "_Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_15_conv2d"
      "_Conv2D_b.bin", "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[223]))->createSigmoidLayer(targetImpl,
      layers[222]->getOutputTensor(0), "SSCB", 3);
    (static_cast<mc_MWMultiplicationLayer_effici *>(layers[224]))
      ->createCustomLayer(targetImpl, layers[222]->getOutputTensor(0), layers
                          [223]->getOutputTensor(0), "SSCB", 4);
    (static_cast<MWConvLayer *>(layers[225]))->createConvLayer(targetImpl,
      layers[224]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1152,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_15_depthw"
      "ise_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_15_depthw"
      "ise_conv2d_depthwise_b.bin", "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[226]))->createSigmoidLayer(targetImpl,
      layers[225]->getOutputTensor(0), "SSCB", 3);
    (static_cast<nc_MWMultiplicationLayer_effici *>(layers[227]))
      ->createCustomLayer(targetImpl, layers[225]->getOutputTensor(0), layers
                          [226]->getOutputTensor(0), "SSCB", 4);
    (static_cast<MWAvgPoolingLayer *>(layers[228]))->createAvgPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[227]->getOutputTensor(0), -1, -1, 1,
                          1, 0, 0, 0, 0, 0, "FLOAT", 1, "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[229]))->createConvLayer(targetImpl,
      layers[228]->getOutputTensor(0), 1, 1, 1152, 48, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_15_se_con"
      "v2d_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_15_se_con"
      "v2d_BiasAdd_b.bin", "SSCB", 3);
    (static_cast<MWSigmoidLayer *>(layers[230]))->createSigmoidLayer(targetImpl,
      layers[229]->getOutputTensor(0), "SSCB", 2);
    (static_cast<oc_MWMultiplicationLayer_effici *>(layers[231]))
      ->createCustomLayer(targetImpl, layers[229]->getOutputTensor(0), layers
                          [230]->getOutputTensor(0), "SSCB", 5);
    (static_cast<MWConvLayer *>(layers[232]))->createConvLayer(targetImpl,
      layers[231]->getOutputTensor(0), 1, 1, 48, 1152, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_15_se_con"
      "v2d_1_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_15_se_con"
      "v2d_1_BiasAdd_b.bin", "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[233]))->createSigmoidLayer(targetImpl,
      layers[232]->getOutputTensor(0), "SSCB", 2);
    (static_cast<pc_MWMultiplicationLayer_effici *>(layers[234]))
      ->createCustomLayer(targetImpl, layers[233]->getOutputTensor(0), layers
                          [227]->getOutputTensor(0), "SSCB", 3);
    (static_cast<MWConvLayer *>(layers[235]))->createConvLayer(targetImpl,
      layers[234]->getOutputTensor(0), 1, 1, 1152, 320, 1, 1, 0, 0, 0, 0, 1, 1,
      1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_15_conv2d"
      "_1_Conv2D_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_efficientnet-b0_blocks_15_conv2d"
      "_1_Conv2D_b.bin", "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[236]))->createConvLayer(targetImpl,
      layers[235]->getOutputTensor(0), 1, 1, 320, 192, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode1_resample"
      "_0_2_6_conv2d_BiasAdd_w_fused.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode1_resample"
      "_0_2_6_conv2d_BiasAdd_b_fused.bin", "SSCB", 3);
    (static_cast<MWSplittingLayer *>(layers[237]))->createSplittingLayer
      (targetImpl, layers[236]->getOutputTensor(0), 3, 64, 64, 64, 3, "SSCB",
       "SSCB", "SSCB", 3, 3, 3);
    (static_cast<MWMaxPoolingLayer *>(layers[238]))->createMaxPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[237]->getOutputTensor(2), 3, 3, 2,
                          2, 0, 1, 0, 1, 0, 0, "FLOAT", 1, "SSCB", 2);
    (static_cast<MWMaxPoolingLayer *>(layers[239]))->createMaxPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[238]->getOutputTensor(0), 3, 3, 2,
                          2, 0, 1, 0, 1, 0, 0, "FLOAT", 1, "SSCB", 4);
    (static_cast<MWElementwiseAffineLayer *>(layers[240]))
      ->createElementwiseAffineLayer(targetImpl, layers[238]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode6_truediv_"
      "scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode6_truediv_"
      "offset.bin", "SSCB", 5);
    (static_cast<MWElementwiseAffineLayer *>(layers[241]))
      ->createElementwiseAffineLayer(targetImpl, layers[238]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode0_truediv_"
      "scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode0_truediv_"
      "offset.bin", "SSCB", 6);
    (static_cast<c_MWResize2DLayer_efficientDetD *>(layers[242]))
      ->createCustomLayer(targetImpl, layers[239]->getOutputTensor(0), "SSCB", 2);
    (static_cast<MWElementwiseAffineLayer *>(layers[243]))
      ->createElementwiseAffineLayer(targetImpl, layers[242]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode0_truediv_"
      "1_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode0_truediv_"
      "1_offset.bin", "SSCB", 2);
    (static_cast<MWAdditionLayer *>(layers[244]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[241]->getOutputTensor(0), layers[243]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 7);
    (static_cast<MWSigmoidLayer *>(layers[245]))->createSigmoidLayer(targetImpl,
      layers[244]->getOutputTensor(0), "SSCB", 2);
    (static_cast<qc_MWMultiplicationLayer_effici *>(layers[246]))
      ->createCustomLayer(targetImpl, layers[244]->getOutputTensor(0), layers
                          [245]->getOutputTensor(0), "SSCB", 6);
    (static_cast<MWConvLayer *>(layers[247]))->createConvLayer(targetImpl,
      layers[246]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode0_op_after"
      "_combine5_conv_separable_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode0_op_after"
      "_combine5_conv_separable_conv2d_depthwise_b.bin", "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[248]))->createConvLayer(targetImpl,
      layers[247]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode0_op_after"
      "_combine5_conv_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode0_op_after"
      "_combine5_conv_BiasAdd_b.bin", "SSCB", 6);
    (static_cast<MWElementwiseAffineLayer *>(layers[249]))
      ->createElementwiseAffineLayer(targetImpl, layers[237]->getOutputTensor(1),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode5_truediv_"
      "scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode5_truediv_"
      "offset.bin", "SSCB", 3);
    (static_cast<MWElementwiseAffineLayer *>(layers[250]))
      ->createElementwiseAffineLayer(targetImpl, layers[237]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode1_truediv_"
      "scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode1_truediv_"
      "offset.bin", "SSCB", 3);
    (static_cast<d_MWResize2DLayer_efficientDetD *>(layers[251]))
      ->createCustomLayer(targetImpl, layers[248]->getOutputTensor(0), "SSCB", 2);
    (static_cast<MWElementwiseAffineLayer *>(layers[252]))
      ->createElementwiseAffineLayer(targetImpl, layers[251]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode1_truediv_"
      "1_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode1_truediv_"
      "1_offset.bin", "SSCB", 2);
    (static_cast<MWAdditionLayer *>(layers[253]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[250]->getOutputTensor(0), layers[252]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 7);
    (static_cast<MWSigmoidLayer *>(layers[254]))->createSigmoidLayer(targetImpl,
      layers[253]->getOutputTensor(0), "SSCB", 2);
    (static_cast<rc_MWMultiplicationLayer_effici *>(layers[255]))
      ->createCustomLayer(targetImpl, layers[253]->getOutputTensor(0), layers
                          [254]->getOutputTensor(0), "SSCB", 8);
    (static_cast<MWConvLayer *>(layers[256]))->createConvLayer(targetImpl,
      layers[255]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode1_op_after"
      "_combine6_conv_separable_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode1_op_after"
      "_combine6_conv_separable_conv2d_depthwise_b.bin", "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[257]))->createConvLayer(targetImpl,
      layers[256]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode1_op_after"
      "_combine6_conv_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode1_op_after"
      "_combine6_conv_BiasAdd_b.bin", "SSCB", 7);
    (static_cast<MWElementwiseAffineLayer *>(layers[258]))
      ->createElementwiseAffineLayer(targetImpl, layers[163]->getOutputTensor(2),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode4_truediv_"
      "scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode4_truediv_"
      "offset.bin", "SSCB", 1);
    (static_cast<MWElementwiseAffineLayer *>(layers[259]))
      ->createElementwiseAffineLayer(targetImpl, layers[163]->getOutputTensor(1),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode2_truediv_"
      "scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode2_truediv_"
      "offset.bin", "SSCB", 1);
    (static_cast<e_MWResize2DLayer_efficientDetD *>(layers[260]))
      ->createCustomLayer(targetImpl, layers[257]->getOutputTensor(0), "SSCB", 2);
    (static_cast<MWElementwiseAffineLayer *>(layers[261]))
      ->createElementwiseAffineLayer(targetImpl, layers[260]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode2_truediv_"
      "1_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode2_truediv_"
      "1_offset.bin", "SSCB", 2);
    (static_cast<MWAdditionLayer *>(layers[262]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[259]->getOutputTensor(0), layers[261]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 8);
    (static_cast<MWSigmoidLayer *>(layers[263]))->createSigmoidLayer(targetImpl,
      layers[262]->getOutputTensor(0), "SSCB", 2);
    (static_cast<sc_MWMultiplicationLayer_effici *>(layers[264]))
      ->createCustomLayer(targetImpl, layers[262]->getOutputTensor(0), layers
                          [263]->getOutputTensor(0), "SSCB", 9);
    (static_cast<MWConvLayer *>(layers[265]))->createConvLayer(targetImpl,
      layers[264]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode2_op_after"
      "_combine7_conv_separable_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode2_op_after"
      "_combine7_conv_separable_conv2d_depthwise_b.bin", "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[266]))->createConvLayer(targetImpl,
      layers[265]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode2_op_after"
      "_combine7_conv_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode2_op_after"
      "_combine7_conv_BiasAdd_b.bin", "SSCB", 8);
    (static_cast<MWElementwiseAffineLayer *>(layers[267]))
      ->createElementwiseAffineLayer(targetImpl, layers[74]->getOutputTensor(1),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode3_truediv_"
      "scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode3_truediv_"
      "offset.bin", "SSCB", 0);
    (static_cast<f_MWResize2DLayer_efficientDetD *>(layers[268]))
      ->createCustomLayer(targetImpl, layers[266]->getOutputTensor(0), "SSCB", 2);
    (static_cast<MWElementwiseAffineLayer *>(layers[269]))
      ->createElementwiseAffineLayer(targetImpl, layers[268]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode3_truediv_"
      "1_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode3_truediv_"
      "1_offset.bin", "SSCB", 2);
    (static_cast<MWAdditionLayer *>(layers[270]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[267]->getOutputTensor(0), layers[269]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 9);
    (static_cast<MWSigmoidLayer *>(layers[271]))->createSigmoidLayer(targetImpl,
      layers[270]->getOutputTensor(0), "SSCB", 0);
    (static_cast<tc_MWMultiplicationLayer_effici *>(layers[272]))
      ->createCustomLayer(targetImpl, layers[270]->getOutputTensor(0), layers
                          [271]->getOutputTensor(0), "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[273]))->createConvLayer(targetImpl,
      layers[272]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode3_op_after"
      "_combine8_conv_separable_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode3_op_after"
      "_combine8_conv_separable_conv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[274]))->createConvLayer(targetImpl,
      layers[273]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode3_op_after"
      "_combine8_conv_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode3_op_after"
      "_combine8_conv_BiasAdd_b.bin", "SSCB", 2);
    (static_cast<MWElementwiseAffineLayer *>(layers[275]))
      ->createElementwiseAffineLayer(targetImpl, layers[266]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode4_truediv_"
      "1_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode4_truediv_"
      "1_offset.bin", "SSCB", 0);
    (static_cast<MWAdditionLayer *>(layers[276]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[258]->getOutputTensor(0), layers[275]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 8);
    (static_cast<MWMaxPoolingLayer *>(layers[277]))->createMaxPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[274]->getOutputTensor(0), 3, 3, 2,
                          2, 0, 1, 0, 1, 0, 0, "FLOAT", 1, "SSCB", 0);
    (static_cast<MWElementwiseAffineLayer *>(layers[278]))
      ->createElementwiseAffineLayer(targetImpl, layers[277]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode4_truediv_"
      "2_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode4_truediv_"
      "2_offset.bin", "SSCB", 0);
    (static_cast<MWAdditionLayer *>(layers[279]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[276]->getOutputTensor(0), layers[278]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[280]))->createSigmoidLayer(targetImpl,
      layers[279]->getOutputTensor(0), "SSCB", 0);
    (static_cast<uc_MWMultiplicationLayer_effici *>(layers[281]))
      ->createCustomLayer(targetImpl, layers[279]->getOutputTensor(0), layers
                          [280]->getOutputTensor(0), "SSCB", 8);
    (static_cast<MWConvLayer *>(layers[282]))->createConvLayer(targetImpl,
      layers[281]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode4_op_after"
      "_combine9_conv_separable_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode4_op_after"
      "_combine9_conv_separable_conv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[283]))->createConvLayer(targetImpl,
      layers[282]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode4_op_after"
      "_combine9_conv_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode4_op_after"
      "_combine9_conv_BiasAdd_b.bin", "SSCB", 1);
    (static_cast<MWElementwiseAffineLayer *>(layers[284]))
      ->createElementwiseAffineLayer(targetImpl, layers[257]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode5_truediv_"
      "1_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode5_truediv_"
      "1_offset.bin", "SSCB", 0);
    (static_cast<MWAdditionLayer *>(layers[285]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[249]->getOutputTensor(0), layers[284]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 7);
    (static_cast<MWMaxPoolingLayer *>(layers[286]))->createMaxPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[283]->getOutputTensor(0), 3, 3, 2,
                          2, 0, 1, 0, 1, 0, 0, "FLOAT", 1, "SSCB", 0);
    (static_cast<MWElementwiseAffineLayer *>(layers[287]))
      ->createElementwiseAffineLayer(targetImpl, layers[286]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode5_truediv_"
      "2_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode5_truediv_"
      "2_offset.bin", "SSCB", 0);
    (static_cast<MWAdditionLayer *>(layers[288]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[285]->getOutputTensor(0), layers[287]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 3);
    (static_cast<MWSigmoidLayer *>(layers[289]))->createSigmoidLayer(targetImpl,
      layers[288]->getOutputTensor(0), "SSCB", 0);
    (static_cast<vc_MWMultiplicationLayer_effici *>(layers[290]))
      ->createCustomLayer(targetImpl, layers[288]->getOutputTensor(0), layers
                          [289]->getOutputTensor(0), "SSCB", 7);
    (static_cast<MWConvLayer *>(layers[291]))->createConvLayer(targetImpl,
      layers[290]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode5_op_after"
      "_combine10_conv_separable_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode5_op_after"
      "_combine10_conv_separable_conv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[292]))->createConvLayer(targetImpl,
      layers[291]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode5_op_after"
      "_combine10_conv_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode5_op_after"
      "_combine10_conv_BiasAdd_b.bin", "SSCB", 3);
    (static_cast<MWElementwiseAffineLayer *>(layers[293]))
      ->createElementwiseAffineLayer(targetImpl, layers[248]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode6_truediv_"
      "1_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode6_truediv_"
      "1_offset.bin", "SSCB", 0);
    (static_cast<MWAdditionLayer *>(layers[294]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[240]->getOutputTensor(0), layers[293]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 6);
    (static_cast<MWMaxPoolingLayer *>(layers[295]))->createMaxPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[292]->getOutputTensor(0), 3, 3, 2,
                          2, 0, 1, 0, 1, 0, 0, "FLOAT", 1, "SSCB", 0);
    (static_cast<MWElementwiseAffineLayer *>(layers[296]))
      ->createElementwiseAffineLayer(targetImpl, layers[295]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode6_truediv_"
      "2_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode6_truediv_"
      "2_offset.bin", "SSCB", 0);
    (static_cast<MWAdditionLayer *>(layers[297]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[294]->getOutputTensor(0), layers[296]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 5);
    (static_cast<MWSigmoidLayer *>(layers[298]))->createSigmoidLayer(targetImpl,
      layers[297]->getOutputTensor(0), "SSCB", 0);
    (static_cast<wc_MWMultiplicationLayer_effici *>(layers[299]))
      ->createCustomLayer(targetImpl, layers[297]->getOutputTensor(0), layers
                          [298]->getOutputTensor(0), "SSCB", 6);
    (static_cast<MWConvLayer *>(layers[300]))->createConvLayer(targetImpl,
      layers[299]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode6_op_after"
      "_combine11_conv_separable_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode6_op_after"
      "_combine11_conv_separable_conv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[301]))->createConvLayer(targetImpl,
      layers[300]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode6_op_after"
      "_combine11_conv_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode6_op_after"
      "_combine11_conv_BiasAdd_b.bin", "SSCB", 5);
    (static_cast<MWElementwiseAffineLayer *>(layers[302]))
      ->createElementwiseAffineLayer(targetImpl, layers[239]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode7_truediv_"
      "scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode7_truediv_"
      "offset.bin", "SSCB", 0);
    (static_cast<MWMaxPoolingLayer *>(layers[303]))->createMaxPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[301]->getOutputTensor(0), 3, 3, 2,
                          2, 0, 1, 0, 1, 0, 0, "FLOAT", 1, "SSCB", 4);
    (static_cast<MWElementwiseAffineLayer *>(layers[304]))
      ->createElementwiseAffineLayer(targetImpl, layers[303]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode7_truediv_"
      "1_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode7_truediv_"
      "1_offset.bin", "SSCB", 4);
    (static_cast<MWAdditionLayer *>(layers[305]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[302]->getOutputTensor(0), layers[304]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 6);
    (static_cast<MWSigmoidLayer *>(layers[306]))->createSigmoidLayer(targetImpl,
      layers[305]->getOutputTensor(0), "SSCB", 0);
    (static_cast<xc_MWMultiplicationLayer_effici *>(layers[307]))
      ->createCustomLayer(targetImpl, layers[305]->getOutputTensor(0), layers
                          [306]->getOutputTensor(0), "SSCB", 4);
    (static_cast<MWConvLayer *>(layers[308]))->createConvLayer(targetImpl,
      layers[307]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode7_op_after"
      "_combine12_conv_separable_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode7_op_after"
      "_combine12_conv_separable_conv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[309]))->createConvLayer(targetImpl,
      layers[308]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode7_op_after"
      "_combine12_conv_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_0_fnode7_op_after"
      "_combine12_conv_BiasAdd_b.bin", "SSCB", 4);
    (static_cast<MWElementwiseAffineLayer *>(layers[310]))
      ->createElementwiseAffineLayer(targetImpl, layers[301]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode6_truediv_"
      "scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode6_truediv_"
      "offset.bin", "SSCB", 0);
    (static_cast<MWElementwiseAffineLayer *>(layers[311]))
      ->createElementwiseAffineLayer(targetImpl, layers[301]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode0_truediv_"
      "scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode0_truediv_"
      "offset.bin", "SSCB", 6);
    (static_cast<g_MWResize2DLayer_efficientDetD *>(layers[312]))
      ->createCustomLayer(targetImpl, layers[309]->getOutputTensor(0), "SSCB", 5);
    (static_cast<MWElementwiseAffineLayer *>(layers[313]))
      ->createElementwiseAffineLayer(targetImpl, layers[312]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode0_truediv_"
      "1_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode0_truediv_"
      "1_offset.bin", "SSCB", 5);
    (static_cast<MWAdditionLayer *>(layers[314]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[311]->getOutputTensor(0), layers[313]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 7);
    (static_cast<MWSigmoidLayer *>(layers[315]))->createSigmoidLayer(targetImpl,
      layers[314]->getOutputTensor(0), "SSCB", 5);
    (static_cast<yc_MWMultiplicationLayer_effici *>(layers[316]))
      ->createCustomLayer(targetImpl, layers[314]->getOutputTensor(0), layers
                          [315]->getOutputTensor(0), "SSCB", 6);
    (static_cast<MWConvLayer *>(layers[317]))->createConvLayer(targetImpl,
      layers[316]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode0_op_after"
      "_combine5_conv_separable_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode0_op_after"
      "_combine5_conv_separable_conv2d_depthwise_b.bin", "SSCB", 5);
    (static_cast<MWConvLayer *>(layers[318]))->createConvLayer(targetImpl,
      layers[317]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode0_op_after"
      "_combine5_conv_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode0_op_after"
      "_combine5_conv_BiasAdd_b.bin", "SSCB", 6);
    (static_cast<MWElementwiseAffineLayer *>(layers[319]))
      ->createElementwiseAffineLayer(targetImpl, layers[292]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode5_truediv_"
      "scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode5_truediv_"
      "offset.bin", "SSCB", 5);
    (static_cast<MWElementwiseAffineLayer *>(layers[320]))
      ->createElementwiseAffineLayer(targetImpl, layers[292]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode1_truediv_"
      "scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode1_truediv_"
      "offset.bin", "SSCB", 7);
    (static_cast<h_MWResize2DLayer_efficientDetD *>(layers[321]))
      ->createCustomLayer(targetImpl, layers[318]->getOutputTensor(0), "SSCB", 3);
    (static_cast<MWElementwiseAffineLayer *>(layers[322]))
      ->createElementwiseAffineLayer(targetImpl, layers[321]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode1_truediv_"
      "1_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode1_truediv_"
      "1_offset.bin", "SSCB", 3);
    (static_cast<MWAdditionLayer *>(layers[323]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[320]->getOutputTensor(0), layers[322]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 8);
    (static_cast<MWSigmoidLayer *>(layers[324]))->createSigmoidLayer(targetImpl,
      layers[323]->getOutputTensor(0), "SSCB", 3);
    (static_cast<ad_MWMultiplicationLayer_effici *>(layers[325]))
      ->createCustomLayer(targetImpl, layers[323]->getOutputTensor(0), layers
                          [324]->getOutputTensor(0), "SSCB", 7);
    (static_cast<MWConvLayer *>(layers[326]))->createConvLayer(targetImpl,
      layers[325]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode1_op_after"
      "_combine6_conv_separable_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode1_op_after"
      "_combine6_conv_separable_conv2d_depthwise_b.bin", "SSCB", 3);
    (static_cast<MWConvLayer *>(layers[327]))->createConvLayer(targetImpl,
      layers[326]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode1_op_after"
      "_combine6_conv_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode1_op_after"
      "_combine6_conv_BiasAdd_b.bin", "SSCB", 7);
    (static_cast<MWElementwiseAffineLayer *>(layers[328]))
      ->createElementwiseAffineLayer(targetImpl, layers[283]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode4_truediv_"
      "scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode4_truediv_"
      "offset.bin", "SSCB", 3);
    (static_cast<MWElementwiseAffineLayer *>(layers[329]))
      ->createElementwiseAffineLayer(targetImpl, layers[283]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode2_truediv_"
      "scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode2_truediv_"
      "offset.bin", "SSCB", 8);
    (static_cast<i_MWResize2DLayer_efficientDetD *>(layers[330]))
      ->createCustomLayer(targetImpl, layers[327]->getOutputTensor(0), "SSCB", 1);
    (static_cast<MWElementwiseAffineLayer *>(layers[331]))
      ->createElementwiseAffineLayer(targetImpl, layers[330]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode2_truediv_"
      "1_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode2_truediv_"
      "1_offset.bin", "SSCB", 1);
    (static_cast<MWAdditionLayer *>(layers[332]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[329]->getOutputTensor(0), layers[331]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 9);
    (static_cast<MWSigmoidLayer *>(layers[333]))->createSigmoidLayer(targetImpl,
      layers[332]->getOutputTensor(0), "SSCB", 1);
    (static_cast<bd_MWMultiplicationLayer_effici *>(layers[334]))
      ->createCustomLayer(targetImpl, layers[332]->getOutputTensor(0), layers
                          [333]->getOutputTensor(0), "SSCB", 8);
    (static_cast<MWConvLayer *>(layers[335]))->createConvLayer(targetImpl,
      layers[334]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode2_op_after"
      "_combine7_conv_separable_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode2_op_after"
      "_combine7_conv_separable_conv2d_depthwise_b.bin", "SSCB", 1);
    (static_cast<MWConvLayer *>(layers[336]))->createConvLayer(targetImpl,
      layers[335]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode2_op_after"
      "_combine7_conv_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode2_op_after"
      "_combine7_conv_BiasAdd_b.bin", "SSCB", 8);
    (static_cast<MWElementwiseAffineLayer *>(layers[337]))
      ->createElementwiseAffineLayer(targetImpl, layers[274]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode3_truediv_"
      "scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode3_truediv_"
      "offset.bin", "SSCB", 1);
    (static_cast<j_MWResize2DLayer_efficientDetD *>(layers[338]))
      ->createCustomLayer(targetImpl, layers[336]->getOutputTensor(0), "SSCB", 2);
    (static_cast<MWElementwiseAffineLayer *>(layers[339]))
      ->createElementwiseAffineLayer(targetImpl, layers[338]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode3_truediv_"
      "1_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode3_truediv_"
      "1_offset.bin", "SSCB", 2);
    (static_cast<MWAdditionLayer *>(layers[340]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[337]->getOutputTensor(0), layers[339]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 9);
    (static_cast<MWSigmoidLayer *>(layers[341]))->createSigmoidLayer(targetImpl,
      layers[340]->getOutputTensor(0), "SSCB", 1);
    (static_cast<cd_MWMultiplicationLayer_effici *>(layers[342]))
      ->createCustomLayer(targetImpl, layers[340]->getOutputTensor(0), layers
                          [341]->getOutputTensor(0), "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[343]))->createConvLayer(targetImpl,
      layers[342]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode3_op_after"
      "_combine8_conv_separable_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode3_op_after"
      "_combine8_conv_separable_conv2d_depthwise_b.bin", "SSCB", 1);
    (static_cast<MWConvLayer *>(layers[344]))->createConvLayer(targetImpl,
      layers[343]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode3_op_after"
      "_combine8_conv_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode3_op_after"
      "_combine8_conv_BiasAdd_b.bin", "SSCB", 2);
    (static_cast<MWElementwiseAffineLayer *>(layers[345]))
      ->createElementwiseAffineLayer(targetImpl, layers[336]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode4_truediv_"
      "1_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode4_truediv_"
      "1_offset.bin", "SSCB", 1);
    (static_cast<MWAdditionLayer *>(layers[346]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[328]->getOutputTensor(0), layers[345]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 8);
    (static_cast<MWMaxPoolingLayer *>(layers[347]))->createMaxPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[344]->getOutputTensor(0), 3, 3, 2,
                          2, 0, 1, 0, 1, 0, 0, "FLOAT", 1, "SSCB", 1);
    (static_cast<MWElementwiseAffineLayer *>(layers[348]))
      ->createElementwiseAffineLayer(targetImpl, layers[347]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode4_truediv_"
      "2_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode4_truediv_"
      "2_offset.bin", "SSCB", 1);
    (static_cast<MWAdditionLayer *>(layers[349]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[346]->getOutputTensor(0), layers[348]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 3);
    (static_cast<MWSigmoidLayer *>(layers[350]))->createSigmoidLayer(targetImpl,
      layers[349]->getOutputTensor(0), "SSCB", 1);
    (static_cast<dd_MWMultiplicationLayer_effici *>(layers[351]))
      ->createCustomLayer(targetImpl, layers[349]->getOutputTensor(0), layers
                          [350]->getOutputTensor(0), "SSCB", 8);
    (static_cast<MWConvLayer *>(layers[352]))->createConvLayer(targetImpl,
      layers[351]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode4_op_after"
      "_combine9_conv_separable_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode4_op_after"
      "_combine9_conv_separable_conv2d_depthwise_b.bin", "SSCB", 1);
    (static_cast<MWConvLayer *>(layers[353]))->createConvLayer(targetImpl,
      layers[352]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode4_op_after"
      "_combine9_conv_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode4_op_after"
      "_combine9_conv_BiasAdd_b.bin", "SSCB", 3);
    (static_cast<MWElementwiseAffineLayer *>(layers[354]))
      ->createElementwiseAffineLayer(targetImpl, layers[327]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode5_truediv_"
      "1_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode5_truediv_"
      "1_offset.bin", "SSCB", 1);
    (static_cast<MWAdditionLayer *>(layers[355]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[319]->getOutputTensor(0), layers[354]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 7);
    (static_cast<MWMaxPoolingLayer *>(layers[356]))->createMaxPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[353]->getOutputTensor(0), 3, 3, 2,
                          2, 0, 1, 0, 1, 0, 0, "FLOAT", 1, "SSCB", 1);
    (static_cast<MWElementwiseAffineLayer *>(layers[357]))
      ->createElementwiseAffineLayer(targetImpl, layers[356]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode5_truediv_"
      "2_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode5_truediv_"
      "2_offset.bin", "SSCB", 1);
    (static_cast<MWAdditionLayer *>(layers[358]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[355]->getOutputTensor(0), layers[357]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 5);
    (static_cast<MWSigmoidLayer *>(layers[359]))->createSigmoidLayer(targetImpl,
      layers[358]->getOutputTensor(0), "SSCB", 1);
    (static_cast<ed_MWMultiplicationLayer_effici *>(layers[360]))
      ->createCustomLayer(targetImpl, layers[358]->getOutputTensor(0), layers
                          [359]->getOutputTensor(0), "SSCB", 7);
    (static_cast<MWConvLayer *>(layers[361]))->createConvLayer(targetImpl,
      layers[360]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode5_op_after"
      "_combine10_conv_separable_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode5_op_after"
      "_combine10_conv_separable_conv2d_depthwise_b.bin", "SSCB", 1);
    (static_cast<MWConvLayer *>(layers[362]))->createConvLayer(targetImpl,
      layers[361]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode5_op_after"
      "_combine10_conv_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode5_op_after"
      "_combine10_conv_BiasAdd_b.bin", "SSCB", 5);
    (static_cast<MWElementwiseAffineLayer *>(layers[363]))
      ->createElementwiseAffineLayer(targetImpl, layers[318]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode6_truediv_"
      "1_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode6_truediv_"
      "1_offset.bin", "SSCB", 1);
    (static_cast<MWAdditionLayer *>(layers[364]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[310]->getOutputTensor(0), layers[363]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 6);
    (static_cast<MWMaxPoolingLayer *>(layers[365]))->createMaxPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[362]->getOutputTensor(0), 3, 3, 2,
                          2, 0, 1, 0, 1, 0, 0, "FLOAT", 1, "SSCB", 0);
    (static_cast<MWElementwiseAffineLayer *>(layers[366]))
      ->createElementwiseAffineLayer(targetImpl, layers[365]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode6_truediv_"
      "2_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode6_truediv_"
      "2_offset.bin", "SSCB", 0);
    (static_cast<MWAdditionLayer *>(layers[367]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[364]->getOutputTensor(0), layers[366]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[368]))->createSigmoidLayer(targetImpl,
      layers[367]->getOutputTensor(0), "SSCB", 0);
    (static_cast<fd_MWMultiplicationLayer_effici *>(layers[369]))
      ->createCustomLayer(targetImpl, layers[367]->getOutputTensor(0), layers
                          [368]->getOutputTensor(0), "SSCB", 6);
    (static_cast<MWConvLayer *>(layers[370]))->createConvLayer(targetImpl,
      layers[369]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode6_op_after"
      "_combine11_conv_separable_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode6_op_after"
      "_combine11_conv_separable_conv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[371]))->createConvLayer(targetImpl,
      layers[370]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode6_op_after"
      "_combine11_conv_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode6_op_after"
      "_combine11_conv_BiasAdd_b.bin", "SSCB", 1);
    (static_cast<MWElementwiseAffineLayer *>(layers[372]))
      ->createElementwiseAffineLayer(targetImpl, layers[309]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode7_truediv_"
      "scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode7_truediv_"
      "offset.bin", "SSCB", 0);
    (static_cast<MWMaxPoolingLayer *>(layers[373]))->createMaxPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[371]->getOutputTensor(0), 3, 3, 2,
                          2, 0, 1, 0, 1, 0, 0, "FLOAT", 1, "SSCB", 4);
    (static_cast<MWElementwiseAffineLayer *>(layers[374]))
      ->createElementwiseAffineLayer(targetImpl, layers[373]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode7_truediv_"
      "1_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode7_truediv_"
      "1_offset.bin", "SSCB", 4);
    (static_cast<MWAdditionLayer *>(layers[375]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[372]->getOutputTensor(0), layers[374]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 6);
    (static_cast<MWSigmoidLayer *>(layers[376]))->createSigmoidLayer(targetImpl,
      layers[375]->getOutputTensor(0), "SSCB", 0);
    (static_cast<gd_MWMultiplicationLayer_effici *>(layers[377]))
      ->createCustomLayer(targetImpl, layers[375]->getOutputTensor(0), layers
                          [376]->getOutputTensor(0), "SSCB", 4);
    (static_cast<MWConvLayer *>(layers[378]))->createConvLayer(targetImpl,
      layers[377]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode7_op_after"
      "_combine12_conv_separable_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode7_op_after"
      "_combine12_conv_separable_conv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[379]))->createConvLayer(targetImpl,
      layers[378]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode7_op_after"
      "_combine12_conv_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_1_fnode7_op_after"
      "_combine12_conv_BiasAdd_b.bin", "SSCB", 4);
    (static_cast<MWElementwiseAffineLayer *>(layers[380]))
      ->createElementwiseAffineLayer(targetImpl, layers[371]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode6_truediv_"
      "scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode6_truediv_"
      "offset.bin", "SSCB", 0);
    (static_cast<MWElementwiseAffineLayer *>(layers[381]))
      ->createElementwiseAffineLayer(targetImpl, layers[371]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode0_truediv_"
      "scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode0_truediv_"
      "offset.bin", "SSCB", 6);
    (static_cast<k_MWResize2DLayer_efficientDetD *>(layers[382]))
      ->createCustomLayer(targetImpl, layers[379]->getOutputTensor(0), "SSCB", 1);
    (static_cast<MWElementwiseAffineLayer *>(layers[383]))
      ->createElementwiseAffineLayer(targetImpl, layers[382]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode0_truediv_"
      "1_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode0_truediv_"
      "1_offset.bin", "SSCB", 1);
    (static_cast<MWAdditionLayer *>(layers[384]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[381]->getOutputTensor(0), layers[383]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 7);
    (static_cast<MWSigmoidLayer *>(layers[385]))->createSigmoidLayer(targetImpl,
      layers[384]->getOutputTensor(0), "SSCB", 1);
    (static_cast<hd_MWMultiplicationLayer_effici *>(layers[386]))
      ->createCustomLayer(targetImpl, layers[384]->getOutputTensor(0), layers
                          [385]->getOutputTensor(0), "SSCB", 6);
    (static_cast<MWConvLayer *>(layers[387]))->createConvLayer(targetImpl,
      layers[386]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode0_op_after"
      "_combine5_conv_separable_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode0_op_after"
      "_combine5_conv_separable_conv2d_depthwise_b.bin", "SSCB", 1);
    (static_cast<MWConvLayer *>(layers[388]))->createConvLayer(targetImpl,
      layers[387]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode0_op_after"
      "_combine5_conv_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode0_op_after"
      "_combine5_conv_BiasAdd_b.bin", "SSCB", 6);
    (static_cast<MWElementwiseAffineLayer *>(layers[389]))
      ->createElementwiseAffineLayer(targetImpl, layers[362]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode5_truediv_"
      "scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode5_truediv_"
      "offset.bin", "SSCB", 1);
    (static_cast<MWElementwiseAffineLayer *>(layers[390]))
      ->createElementwiseAffineLayer(targetImpl, layers[362]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode1_truediv_"
      "scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode1_truediv_"
      "offset.bin", "SSCB", 7);
    (static_cast<l_MWResize2DLayer_efficientDetD *>(layers[391]))
      ->createCustomLayer(targetImpl, layers[388]->getOutputTensor(0), "SSCB", 5);
    (static_cast<MWElementwiseAffineLayer *>(layers[392]))
      ->createElementwiseAffineLayer(targetImpl, layers[391]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode1_truediv_"
      "1_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode1_truediv_"
      "1_offset.bin", "SSCB", 5);
    (static_cast<MWAdditionLayer *>(layers[393]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[390]->getOutputTensor(0), layers[392]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 8);
    (static_cast<MWSigmoidLayer *>(layers[394]))->createSigmoidLayer(targetImpl,
      layers[393]->getOutputTensor(0), "SSCB", 5);
    (static_cast<id_MWMultiplicationLayer_effici *>(layers[395]))
      ->createCustomLayer(targetImpl, layers[393]->getOutputTensor(0), layers
                          [394]->getOutputTensor(0), "SSCB", 7);
    (static_cast<MWConvLayer *>(layers[396]))->createConvLayer(targetImpl,
      layers[395]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode1_op_after"
      "_combine6_conv_separable_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode1_op_after"
      "_combine6_conv_separable_conv2d_depthwise_b.bin", "SSCB", 5);
    (static_cast<MWConvLayer *>(layers[397]))->createConvLayer(targetImpl,
      layers[396]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode1_op_after"
      "_combine6_conv_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode1_op_after"
      "_combine6_conv_BiasAdd_b.bin", "SSCB", 7);
    (static_cast<MWElementwiseAffineLayer *>(layers[398]))
      ->createElementwiseAffineLayer(targetImpl, layers[353]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode4_truediv_"
      "scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode4_truediv_"
      "offset.bin", "SSCB", 5);
    (static_cast<MWElementwiseAffineLayer *>(layers[399]))
      ->createElementwiseAffineLayer(targetImpl, layers[353]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode2_truediv_"
      "scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode2_truediv_"
      "offset.bin", "SSCB", 8);
    (static_cast<m_MWResize2DLayer_efficientDetD *>(layers[400]))
      ->createCustomLayer(targetImpl, layers[397]->getOutputTensor(0), "SSCB", 3);
    (static_cast<MWElementwiseAffineLayer *>(layers[401]))
      ->createElementwiseAffineLayer(targetImpl, layers[400]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode2_truediv_"
      "1_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode2_truediv_"
      "1_offset.bin", "SSCB", 3);
    (static_cast<MWAdditionLayer *>(layers[402]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[399]->getOutputTensor(0), layers[401]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 9);
    (static_cast<MWSigmoidLayer *>(layers[403]))->createSigmoidLayer(targetImpl,
      layers[402]->getOutputTensor(0), "SSCB", 3);
    (static_cast<jd_MWMultiplicationLayer_effici *>(layers[404]))
      ->createCustomLayer(targetImpl, layers[402]->getOutputTensor(0), layers
                          [403]->getOutputTensor(0), "SSCB", 8);
    (static_cast<MWConvLayer *>(layers[405]))->createConvLayer(targetImpl,
      layers[404]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode2_op_after"
      "_combine7_conv_separable_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode2_op_after"
      "_combine7_conv_separable_conv2d_depthwise_b.bin", "SSCB", 3);
    (static_cast<MWConvLayer *>(layers[406]))->createConvLayer(targetImpl,
      layers[405]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode2_op_after"
      "_combine7_conv_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode2_op_after"
      "_combine7_conv_BiasAdd_b.bin", "SSCB", 8);
    (static_cast<MWElementwiseAffineLayer *>(layers[407]))
      ->createElementwiseAffineLayer(targetImpl, layers[344]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode3_truediv_"
      "scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode3_truediv_"
      "offset.bin", "SSCB", 3);
    (static_cast<n_MWResize2DLayer_efficientDetD *>(layers[408]))
      ->createCustomLayer(targetImpl, layers[406]->getOutputTensor(0), "SSCB", 2);
    (static_cast<MWElementwiseAffineLayer *>(layers[409]))
      ->createElementwiseAffineLayer(targetImpl, layers[408]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode3_truediv_"
      "1_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode3_truediv_"
      "1_offset.bin", "SSCB", 2);
    (static_cast<MWAdditionLayer *>(layers[410]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[407]->getOutputTensor(0), layers[409]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 9);
    (static_cast<MWSigmoidLayer *>(layers[411]))->createSigmoidLayer(targetImpl,
      layers[410]->getOutputTensor(0), "SSCB", 2);
    (static_cast<kd_MWMultiplicationLayer_effici *>(layers[412]))
      ->createCustomLayer(targetImpl, layers[410]->getOutputTensor(0), layers
                          [411]->getOutputTensor(0), "SSCB", 3);
    (static_cast<MWConvLayer *>(layers[413]))->createConvLayer(targetImpl,
      layers[412]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode3_op_after"
      "_combine8_conv_separable_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode3_op_after"
      "_combine8_conv_separable_conv2d_depthwise_b.bin", "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[414]))->createConvLayer(targetImpl,
      layers[413]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode3_op_after"
      "_combine8_conv_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode3_op_after"
      "_combine8_conv_BiasAdd_b.bin", "SSCB", 3);
    (static_cast<MWElementwiseAffineLayer *>(layers[415]))
      ->createElementwiseAffineLayer(targetImpl, layers[406]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode4_truediv_"
      "1_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode4_truediv_"
      "1_offset.bin", "SSCB", 2);
    (static_cast<MWAdditionLayer *>(layers[416]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[398]->getOutputTensor(0), layers[415]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 8);
    (static_cast<MWMaxPoolingLayer *>(layers[417]))->createMaxPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[414]->getOutputTensor(0), 3, 3, 2,
                          2, 0, 1, 0, 1, 0, 0, "FLOAT", 1, "SSCB", 2);
    (static_cast<MWElementwiseAffineLayer *>(layers[418]))
      ->createElementwiseAffineLayer(targetImpl, layers[417]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode4_truediv_"
      "2_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode4_truediv_"
      "2_offset.bin", "SSCB", 2);
    (static_cast<MWAdditionLayer *>(layers[419]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[416]->getOutputTensor(0), layers[418]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 5);
    (static_cast<MWSigmoidLayer *>(layers[420]))->createSigmoidLayer(targetImpl,
      layers[419]->getOutputTensor(0), "SSCB", 2);
    (static_cast<ld_MWMultiplicationLayer_effici *>(layers[421]))
      ->createCustomLayer(targetImpl, layers[419]->getOutputTensor(0), layers
                          [420]->getOutputTensor(0), "SSCB", 8);
    (static_cast<MWConvLayer *>(layers[422]))->createConvLayer(targetImpl,
      layers[421]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode4_op_after"
      "_combine9_conv_separable_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode4_op_after"
      "_combine9_conv_separable_conv2d_depthwise_b.bin", "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[423]))->createConvLayer(targetImpl,
      layers[422]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode4_op_after"
      "_combine9_conv_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode4_op_after"
      "_combine9_conv_BiasAdd_b.bin", "SSCB", 5);
    (static_cast<MWElementwiseAffineLayer *>(layers[424]))
      ->createElementwiseAffineLayer(targetImpl, layers[397]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode5_truediv_"
      "1_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode5_truediv_"
      "1_offset.bin", "SSCB", 2);
    (static_cast<MWAdditionLayer *>(layers[425]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[389]->getOutputTensor(0), layers[424]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 7);
    (static_cast<MWMaxPoolingLayer *>(layers[426]))->createMaxPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[423]->getOutputTensor(0), 3, 3, 2,
                          2, 0, 1, 0, 1, 0, 0, "FLOAT", 1, "SSCB", 1);
    (static_cast<MWElementwiseAffineLayer *>(layers[427]))
      ->createElementwiseAffineLayer(targetImpl, layers[426]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode5_truediv_"
      "2_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode5_truediv_"
      "2_offset.bin", "SSCB", 1);
    (static_cast<MWAdditionLayer *>(layers[428]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[425]->getOutputTensor(0), layers[427]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[429]))->createSigmoidLayer(targetImpl,
      layers[428]->getOutputTensor(0), "SSCB", 1);
    (static_cast<md_MWMultiplicationLayer_effici *>(layers[430]))
      ->createCustomLayer(targetImpl, layers[428]->getOutputTensor(0), layers
                          [429]->getOutputTensor(0), "SSCB", 7);
    (static_cast<MWConvLayer *>(layers[431]))->createConvLayer(targetImpl,
      layers[430]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode5_op_after"
      "_combine10_conv_separable_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode5_op_after"
      "_combine10_conv_separable_conv2d_depthwise_b.bin", "SSCB", 1);
    (static_cast<MWConvLayer *>(layers[432]))->createConvLayer(targetImpl,
      layers[431]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode5_op_after"
      "_combine10_conv_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode5_op_after"
      "_combine10_conv_BiasAdd_b.bin", "SSCB", 2);
    (static_cast<MWElementwiseAffineLayer *>(layers[433]))
      ->createElementwiseAffineLayer(targetImpl, layers[388]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode6_truediv_"
      "1_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode6_truediv_"
      "1_offset.bin", "SSCB", 1);
    (static_cast<MWAdditionLayer *>(layers[434]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[380]->getOutputTensor(0), layers[433]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 6);
    (static_cast<MWMaxPoolingLayer *>(layers[435]))->createMaxPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[432]->getOutputTensor(0), 3, 3, 2,
                          2, 0, 1, 0, 1, 0, 0, "FLOAT", 1, "SSCB", 0);
    (static_cast<MWElementwiseAffineLayer *>(layers[436]))
      ->createElementwiseAffineLayer(targetImpl, layers[435]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode6_truediv_"
      "2_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode6_truediv_"
      "2_offset.bin", "SSCB", 0);
    (static_cast<MWAdditionLayer *>(layers[437]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[434]->getOutputTensor(0), layers[436]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[438]))->createSigmoidLayer(targetImpl,
      layers[437]->getOutputTensor(0), "SSCB", 0);
    (static_cast<nd_MWMultiplicationLayer_effici *>(layers[439]))
      ->createCustomLayer(targetImpl, layers[437]->getOutputTensor(0), layers
                          [438]->getOutputTensor(0), "SSCB", 6);
    (static_cast<MWConvLayer *>(layers[440]))->createConvLayer(targetImpl,
      layers[439]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode6_op_after"
      "_combine11_conv_separable_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode6_op_after"
      "_combine11_conv_separable_conv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[441]))->createConvLayer(targetImpl,
      layers[440]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode6_op_after"
      "_combine11_conv_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode6_op_after"
      "_combine11_conv_BiasAdd_b.bin", "SSCB", 1);
    (static_cast<MWElementwiseAffineLayer *>(layers[442]))
      ->createElementwiseAffineLayer(targetImpl, layers[379]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode7_truediv_"
      "scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode7_truediv_"
      "offset.bin", "SSCB", 0);
    (static_cast<MWMaxPoolingLayer *>(layers[443]))->createMaxPoolingLayer<
      real32_T, real32_T>(targetImpl, layers[441]->getOutputTensor(0), 3, 3, 2,
                          2, 0, 1, 0, 1, 0, 0, "FLOAT", 1, "SSCB", 4);
    (static_cast<MWElementwiseAffineLayer *>(layers[444]))
      ->createElementwiseAffineLayer(targetImpl, layers[443]->getOutputTensor(0),
      1, 1, 1, 1, 1, 1, false, -1, -1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode7_truediv_"
      "1_scale.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode7_truediv_"
      "1_offset.bin", "SSCB", 4);
    (static_cast<MWAdditionLayer *>(layers[445]))->createAdditionLayer<real32_T,
      real32_T>(targetImpl, 2, layers[442]->getOutputTensor(0), layers[444]
                ->getOutputTensor(0), 0, "FLOAT", "SSCB", 6);
    (static_cast<MWSigmoidLayer *>(layers[446]))->createSigmoidLayer(targetImpl,
      layers[445]->getOutputTensor(0), "SSCB", 0);
    (static_cast<od_MWMultiplicationLayer_effici *>(layers[447]))
      ->createCustomLayer(targetImpl, layers[445]->getOutputTensor(0), layers
                          [446]->getOutputTensor(0), "SSCB", 4);
    (static_cast<MWConvLayer *>(layers[448]))->createConvLayer(targetImpl,
      layers[447]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode7_op_after"
      "_combine12_conv_separable_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode7_op_after"
      "_combine12_conv_separable_conv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[449]))->createConvLayer(targetImpl,
      layers[448]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode7_op_after"
      "_combine12_conv_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_fpn_cells_cell_2_fnode7_op_after"
      "_combine12_conv_BiasAdd_b.bin", "SSCB", 4);
    (static_cast<MWConvLayer *>(layers[450]))->createConvLayer(targetImpl,
      layers[449]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-0_4_separable_co"
      "nv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-0_4_separable_co"
      "nv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[451]))->createConvLayer(targetImpl,
      layers[450]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-0_4_BiasAdd_w.bi"
      "n",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-0_4_BiasAdd_b.bi"
      "n", "SSCB", 6);
    (static_cast<MWSigmoidLayer *>(layers[452]))->createSigmoidLayer(targetImpl,
      layers[451]->getOutputTensor(0), "SSCB", 0);
    (static_cast<pd_MWMultiplicationLayer_effici *>(layers[453]))
      ->createCustomLayer(targetImpl, layers[451]->getOutputTensor(0), layers
                          [452]->getOutputTensor(0), "SSCB", 7);
    (static_cast<MWConvLayer *>(layers[454]))->createConvLayer(targetImpl,
      layers[453]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-1_4_separable_co"
      "nv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-1_4_separable_co"
      "nv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[455]))->createConvLayer(targetImpl,
      layers[454]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-1_4_BiasAdd_w.bi"
      "n",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-1_4_BiasAdd_b.bi"
      "n", "SSCB", 6);
    (static_cast<MWSigmoidLayer *>(layers[456]))->createSigmoidLayer(targetImpl,
      layers[455]->getOutputTensor(0), "SSCB", 0);
    (static_cast<qd_MWMultiplicationLayer_effici *>(layers[457]))
      ->createCustomLayer(targetImpl, layers[455]->getOutputTensor(0), layers
                          [456]->getOutputTensor(0), "SSCB", 7);
    (static_cast<MWConvLayer *>(layers[458]))->createConvLayer(targetImpl,
      layers[457]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-2_4_separable_co"
      "nv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-2_4_separable_co"
      "nv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[459]))->createConvLayer(targetImpl,
      layers[458]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-2_4_BiasAdd_w.bi"
      "n",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-2_4_BiasAdd_b.bi"
      "n", "SSCB", 6);
    (static_cast<MWSigmoidLayer *>(layers[460]))->createSigmoidLayer(targetImpl,
      layers[459]->getOutputTensor(0), "SSCB", 0);
    (static_cast<rd_MWMultiplicationLayer_effici *>(layers[461]))
      ->createCustomLayer(targetImpl, layers[459]->getOutputTensor(0), layers
                          [460]->getOutputTensor(0), "SSCB", 7);
    (static_cast<MWConvLayer *>(layers[462]))->createConvLayer(targetImpl,
      layers[461]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-predict_4_separa"
      "ble_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-predict_4_separa"
      "ble_conv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[463]))->createConvLayer(targetImpl,
      layers[462]->getOutputTensor(0), 1, 1, 64, 810, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-predict_4_BiasAd"
      "d_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-predict_4_BiasAd"
      "d_b.bin", "SSCB", 6);
    (static_cast<MWOutputLayer *>(layers[464]))->createOutputLayer(targetImpl,
      layers[463]->getOutputTensor(0), "SSCB", 6);
    (static_cast<MWConvLayer *>(layers[465]))->createConvLayer(targetImpl,
      layers[449]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-0_4_separable_conv2d"
      "_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-0_4_separable_conv2d"
      "_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[466]))->createConvLayer(targetImpl,
      layers[465]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-0_4_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-0_4_BiasAdd_b.bin",
      "SSCB", 4);
    (static_cast<MWSigmoidLayer *>(layers[467]))->createSigmoidLayer(targetImpl,
      layers[466]->getOutputTensor(0), "SSCB", 0);
    (static_cast<sd_MWMultiplicationLayer_effici *>(layers[468]))
      ->createCustomLayer(targetImpl, layers[466]->getOutputTensor(0), layers
                          [467]->getOutputTensor(0), "SSCB", 7);
    (static_cast<MWConvLayer *>(layers[469]))->createConvLayer(targetImpl,
      layers[468]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-1_4_separable_conv2d"
      "_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-1_4_separable_conv2d"
      "_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[470]))->createConvLayer(targetImpl,
      layers[469]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-1_4_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-1_4_BiasAdd_b.bin",
      "SSCB", 4);
    (static_cast<MWSigmoidLayer *>(layers[471]))->createSigmoidLayer(targetImpl,
      layers[470]->getOutputTensor(0), "SSCB", 0);
    (static_cast<td_MWMultiplicationLayer_effici *>(layers[472]))
      ->createCustomLayer(targetImpl, layers[470]->getOutputTensor(0), layers
                          [471]->getOutputTensor(0), "SSCB", 7);
    (static_cast<MWConvLayer *>(layers[473]))->createConvLayer(targetImpl,
      layers[472]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-2_4_separable_conv2d"
      "_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-2_4_separable_conv2d"
      "_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[474]))->createConvLayer(targetImpl,
      layers[473]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-2_4_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-2_4_BiasAdd_b.bin",
      "SSCB", 4);
    (static_cast<MWSigmoidLayer *>(layers[475]))->createSigmoidLayer(targetImpl,
      layers[474]->getOutputTensor(0), "SSCB", 0);
    (static_cast<ud_MWMultiplicationLayer_effici *>(layers[476]))
      ->createCustomLayer(targetImpl, layers[474]->getOutputTensor(0), layers
                          [475]->getOutputTensor(0), "SSCB", 7);
    (static_cast<MWConvLayer *>(layers[477]))->createConvLayer(targetImpl,
      layers[476]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-predict_4_separable_"
      "conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-predict_4_separable_"
      "conv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[478]))->createConvLayer(targetImpl,
      layers[477]->getOutputTensor(0), 1, 1, 64, 36, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-predict_4_BiasAdd_w."
      "bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-predict_4_BiasAdd_b."
      "bin", "SSCB", 4);
    (static_cast<MWOutputLayer *>(layers[479]))->createOutputLayer(targetImpl,
      layers[478]->getOutputTensor(0), "SSCB", 4);
    (static_cast<MWConvLayer *>(layers[480]))->createConvLayer(targetImpl,
      layers[441]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-0_3_separable_co"
      "nv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-0_3_separable_co"
      "nv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[481]))->createConvLayer(targetImpl,
      layers[480]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-0_3_BiasAdd_w.bi"
      "n",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-0_3_BiasAdd_b.bi"
      "n", "SSCB", 7);
    (static_cast<MWSigmoidLayer *>(layers[482]))->createSigmoidLayer(targetImpl,
      layers[481]->getOutputTensor(0), "SSCB", 0);
    (static_cast<vd_MWMultiplicationLayer_effici *>(layers[483]))
      ->createCustomLayer(targetImpl, layers[481]->getOutputTensor(0), layers
                          [482]->getOutputTensor(0), "SSCB", 8);
    (static_cast<MWConvLayer *>(layers[484]))->createConvLayer(targetImpl,
      layers[483]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-1_3_separable_co"
      "nv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-1_3_separable_co"
      "nv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[485]))->createConvLayer(targetImpl,
      layers[484]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-1_3_BiasAdd_w.bi"
      "n",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-1_3_BiasAdd_b.bi"
      "n", "SSCB", 7);
    (static_cast<MWSigmoidLayer *>(layers[486]))->createSigmoidLayer(targetImpl,
      layers[485]->getOutputTensor(0), "SSCB", 0);
    (static_cast<wd_MWMultiplicationLayer_effici *>(layers[487]))
      ->createCustomLayer(targetImpl, layers[485]->getOutputTensor(0), layers
                          [486]->getOutputTensor(0), "SSCB", 8);
    (static_cast<MWConvLayer *>(layers[488]))->createConvLayer(targetImpl,
      layers[487]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-2_3_separable_co"
      "nv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-2_3_separable_co"
      "nv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[489]))->createConvLayer(targetImpl,
      layers[488]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-2_3_BiasAdd_w.bi"
      "n",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-2_3_BiasAdd_b.bi"
      "n", "SSCB", 7);
    (static_cast<MWSigmoidLayer *>(layers[490]))->createSigmoidLayer(targetImpl,
      layers[489]->getOutputTensor(0), "SSCB", 0);
    (static_cast<xd_MWMultiplicationLayer_effici *>(layers[491]))
      ->createCustomLayer(targetImpl, layers[489]->getOutputTensor(0), layers
                          [490]->getOutputTensor(0), "SSCB", 8);
    (static_cast<MWConvLayer *>(layers[492]))->createConvLayer(targetImpl,
      layers[491]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-predict_3_separa"
      "ble_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-predict_3_separa"
      "ble_conv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[493]))->createConvLayer(targetImpl,
      layers[492]->getOutputTensor(0), 1, 1, 64, 810, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-predict_3_BiasAd"
      "d_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-predict_3_BiasAd"
      "d_b.bin", "SSCB", 7);
    (static_cast<MWOutputLayer *>(layers[494]))->createOutputLayer(targetImpl,
      layers[493]->getOutputTensor(0), "SSCB", 7);
    (static_cast<MWConvLayer *>(layers[495]))->createConvLayer(targetImpl,
      layers[441]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-0_3_separable_conv2d"
      "_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-0_3_separable_conv2d"
      "_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[496]))->createConvLayer(targetImpl,
      layers[495]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-0_3_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-0_3_BiasAdd_b.bin",
      "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[497]))->createSigmoidLayer(targetImpl,
      layers[496]->getOutputTensor(0), "SSCB", 0);
    (static_cast<yd_MWMultiplicationLayer_effici *>(layers[498]))
      ->createCustomLayer(targetImpl, layers[496]->getOutputTensor(0), layers
                          [497]->getOutputTensor(0), "SSCB", 8);
    (static_cast<MWConvLayer *>(layers[499]))->createConvLayer(targetImpl,
      layers[498]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-1_3_separable_conv2d"
      "_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-1_3_separable_conv2d"
      "_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[500]))->createConvLayer(targetImpl,
      layers[499]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-1_3_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-1_3_BiasAdd_b.bin",
      "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[501]))->createSigmoidLayer(targetImpl,
      layers[500]->getOutputTensor(0), "SSCB", 0);
    (static_cast<ae_MWMultiplicationLayer_effici *>(layers[502]))
      ->createCustomLayer(targetImpl, layers[500]->getOutputTensor(0), layers
                          [501]->getOutputTensor(0), "SSCB", 8);
    (static_cast<MWConvLayer *>(layers[503]))->createConvLayer(targetImpl,
      layers[502]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-2_3_separable_conv2d"
      "_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-2_3_separable_conv2d"
      "_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[504]))->createConvLayer(targetImpl,
      layers[503]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-2_3_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-2_3_BiasAdd_b.bin",
      "SSCB", 1);
    (static_cast<MWSigmoidLayer *>(layers[505]))->createSigmoidLayer(targetImpl,
      layers[504]->getOutputTensor(0), "SSCB", 0);
    (static_cast<be_MWMultiplicationLayer_effici *>(layers[506]))
      ->createCustomLayer(targetImpl, layers[504]->getOutputTensor(0), layers
                          [505]->getOutputTensor(0), "SSCB", 8);
    (static_cast<MWConvLayer *>(layers[507]))->createConvLayer(targetImpl,
      layers[506]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-predict_3_separable_"
      "conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-predict_3_separable_"
      "conv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[508]))->createConvLayer(targetImpl,
      layers[507]->getOutputTensor(0), 1, 1, 64, 36, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-predict_3_BiasAdd_w."
      "bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-predict_3_BiasAdd_b."
      "bin", "SSCB", 1);
    (static_cast<MWOutputLayer *>(layers[509]))->createOutputLayer(targetImpl,
      layers[508]->getOutputTensor(0), "SSCB", 1);
    (static_cast<MWConvLayer *>(layers[510]))->createConvLayer(targetImpl,
      layers[432]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-0_2_separable_co"
      "nv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-0_2_separable_co"
      "nv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[511]))->createConvLayer(targetImpl,
      layers[510]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-0_2_BiasAdd_w.bi"
      "n",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-0_2_BiasAdd_b.bi"
      "n", "SSCB", 8);
    (static_cast<MWSigmoidLayer *>(layers[512]))->createSigmoidLayer(targetImpl,
      layers[511]->getOutputTensor(0), "SSCB", 0);
    (static_cast<ce_MWMultiplicationLayer_effici *>(layers[513]))
      ->createCustomLayer(targetImpl, layers[511]->getOutputTensor(0), layers
                          [512]->getOutputTensor(0), "SSCB", 9);
    (static_cast<MWConvLayer *>(layers[514]))->createConvLayer(targetImpl,
      layers[513]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-1_2_separable_co"
      "nv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-1_2_separable_co"
      "nv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[515]))->createConvLayer(targetImpl,
      layers[514]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-1_2_BiasAdd_w.bi"
      "n",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-1_2_BiasAdd_b.bi"
      "n", "SSCB", 8);
    (static_cast<MWSigmoidLayer *>(layers[516]))->createSigmoidLayer(targetImpl,
      layers[515]->getOutputTensor(0), "SSCB", 0);
    (static_cast<de_MWMultiplicationLayer_effici *>(layers[517]))
      ->createCustomLayer(targetImpl, layers[515]->getOutputTensor(0), layers
                          [516]->getOutputTensor(0), "SSCB", 9);
    (static_cast<MWConvLayer *>(layers[518]))->createConvLayer(targetImpl,
      layers[517]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-2_2_separable_co"
      "nv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-2_2_separable_co"
      "nv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[519]))->createConvLayer(targetImpl,
      layers[518]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-2_2_BiasAdd_w.bi"
      "n",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-2_2_BiasAdd_b.bi"
      "n", "SSCB", 8);
    (static_cast<MWSigmoidLayer *>(layers[520]))->createSigmoidLayer(targetImpl,
      layers[519]->getOutputTensor(0), "SSCB", 0);
    (static_cast<ee_MWMultiplicationLayer_effici *>(layers[521]))
      ->createCustomLayer(targetImpl, layers[519]->getOutputTensor(0), layers
                          [520]->getOutputTensor(0), "SSCB", 9);
    (static_cast<MWConvLayer *>(layers[522]))->createConvLayer(targetImpl,
      layers[521]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-predict_2_separa"
      "ble_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-predict_2_separa"
      "ble_conv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[523]))->createConvLayer(targetImpl,
      layers[522]->getOutputTensor(0), 1, 1, 64, 810, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-predict_2_BiasAd"
      "d_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-predict_2_BiasAd"
      "d_b.bin", "SSCB", 8);
    (static_cast<MWOutputLayer *>(layers[524]))->createOutputLayer(targetImpl,
      layers[523]->getOutputTensor(0), "SSCB", 8);
    (static_cast<MWConvLayer *>(layers[525]))->createConvLayer(targetImpl,
      layers[432]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-0_2_separable_conv2d"
      "_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-0_2_separable_conv2d"
      "_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[526]))->createConvLayer(targetImpl,
      layers[525]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-0_2_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-0_2_BiasAdd_b.bin",
      "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[527]))->createSigmoidLayer(targetImpl,
      layers[526]->getOutputTensor(0), "SSCB", 0);
    (static_cast<fe_MWMultiplicationLayer_effici *>(layers[528]))
      ->createCustomLayer(targetImpl, layers[526]->getOutputTensor(0), layers
                          [527]->getOutputTensor(0), "SSCB", 9);
    (static_cast<MWConvLayer *>(layers[529]))->createConvLayer(targetImpl,
      layers[528]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-1_2_separable_conv2d"
      "_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-1_2_separable_conv2d"
      "_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[530]))->createConvLayer(targetImpl,
      layers[529]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-1_2_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-1_2_BiasAdd_b.bin",
      "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[531]))->createSigmoidLayer(targetImpl,
      layers[530]->getOutputTensor(0), "SSCB", 0);
    (static_cast<ge_MWMultiplicationLayer_effici *>(layers[532]))
      ->createCustomLayer(targetImpl, layers[530]->getOutputTensor(0), layers
                          [531]->getOutputTensor(0), "SSCB", 9);
    (static_cast<MWConvLayer *>(layers[533]))->createConvLayer(targetImpl,
      layers[532]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-2_2_separable_conv2d"
      "_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-2_2_separable_conv2d"
      "_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[534]))->createConvLayer(targetImpl,
      layers[533]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-2_2_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-2_2_BiasAdd_b.bin",
      "SSCB", 2);
    (static_cast<MWSigmoidLayer *>(layers[535]))->createSigmoidLayer(targetImpl,
      layers[534]->getOutputTensor(0), "SSCB", 0);
    (static_cast<he_MWMultiplicationLayer_effici *>(layers[536]))
      ->createCustomLayer(targetImpl, layers[534]->getOutputTensor(0), layers
                          [535]->getOutputTensor(0), "SSCB", 9);
    (static_cast<MWConvLayer *>(layers[537]))->createConvLayer(targetImpl,
      layers[536]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-predict_2_separable_"
      "conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-predict_2_separable_"
      "conv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[538]))->createConvLayer(targetImpl,
      layers[537]->getOutputTensor(0), 1, 1, 64, 36, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-predict_2_BiasAdd_w."
      "bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-predict_2_BiasAdd_b."
      "bin", "SSCB", 2);
    (static_cast<MWOutputLayer *>(layers[539]))->createOutputLayer(targetImpl,
      layers[538]->getOutputTensor(0), "SSCB", 2);
    (static_cast<MWConvLayer *>(layers[540]))->createConvLayer(targetImpl,
      layers[423]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-0_1_separable_co"
      "nv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-0_1_separable_co"
      "nv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[541]))->createConvLayer(targetImpl,
      layers[540]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-0_1_BiasAdd_w.bi"
      "n",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-0_1_BiasAdd_b.bi"
      "n", "SSCB", 9);
    (static_cast<MWSigmoidLayer *>(layers[542]))->createSigmoidLayer(targetImpl,
      layers[541]->getOutputTensor(0), "SSCB", 0);
    (static_cast<ie_MWMultiplicationLayer_effici *>(layers[543]))
      ->createCustomLayer(targetImpl, layers[541]->getOutputTensor(0), layers
                          [542]->getOutputTensor(0), "SSCB", 10);
    (static_cast<MWConvLayer *>(layers[544]))->createConvLayer(targetImpl,
      layers[543]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-1_1_separable_co"
      "nv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-1_1_separable_co"
      "nv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[545]))->createConvLayer(targetImpl,
      layers[544]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-1_1_BiasAdd_w.bi"
      "n",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-1_1_BiasAdd_b.bi"
      "n", "SSCB", 9);
    (static_cast<MWSigmoidLayer *>(layers[546]))->createSigmoidLayer(targetImpl,
      layers[545]->getOutputTensor(0), "SSCB", 0);
    (static_cast<je_MWMultiplicationLayer_effici *>(layers[547]))
      ->createCustomLayer(targetImpl, layers[545]->getOutputTensor(0), layers
                          [546]->getOutputTensor(0), "SSCB", 10);
    (static_cast<MWConvLayer *>(layers[548]))->createConvLayer(targetImpl,
      layers[547]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-2_1_separable_co"
      "nv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-2_1_separable_co"
      "nv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[549]))->createConvLayer(targetImpl,
      layers[548]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-2_1_BiasAdd_w.bi"
      "n",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-2_1_BiasAdd_b.bi"
      "n", "SSCB", 9);
    (static_cast<MWSigmoidLayer *>(layers[550]))->createSigmoidLayer(targetImpl,
      layers[549]->getOutputTensor(0), "SSCB", 0);
    (static_cast<ke_MWMultiplicationLayer_effici *>(layers[551]))
      ->createCustomLayer(targetImpl, layers[549]->getOutputTensor(0), layers
                          [550]->getOutputTensor(0), "SSCB", 10);
    (static_cast<MWConvLayer *>(layers[552]))->createConvLayer(targetImpl,
      layers[551]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-predict_1_separa"
      "ble_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-predict_1_separa"
      "ble_conv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[553]))->createConvLayer(targetImpl,
      layers[552]->getOutputTensor(0), 1, 1, 64, 810, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-predict_1_BiasAd"
      "d_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-predict_1_BiasAd"
      "d_b.bin", "SSCB", 9);
    (static_cast<MWOutputLayer *>(layers[554]))->createOutputLayer(targetImpl,
      layers[553]->getOutputTensor(0), "SSCB", 9);
    (static_cast<MWConvLayer *>(layers[555]))->createConvLayer(targetImpl,
      layers[423]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-0_1_separable_conv2d"
      "_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-0_1_separable_conv2d"
      "_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[556]))->createConvLayer(targetImpl,
      layers[555]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-0_1_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-0_1_BiasAdd_b.bin",
      "SSCB", 5);
    (static_cast<MWSigmoidLayer *>(layers[557]))->createSigmoidLayer(targetImpl,
      layers[556]->getOutputTensor(0), "SSCB", 0);
    (static_cast<le_MWMultiplicationLayer_effici *>(layers[558]))
      ->createCustomLayer(targetImpl, layers[556]->getOutputTensor(0), layers
                          [557]->getOutputTensor(0), "SSCB", 10);
    (static_cast<MWConvLayer *>(layers[559]))->createConvLayer(targetImpl,
      layers[558]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-1_1_separable_conv2d"
      "_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-1_1_separable_conv2d"
      "_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[560]))->createConvLayer(targetImpl,
      layers[559]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-1_1_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-1_1_BiasAdd_b.bin",
      "SSCB", 5);
    (static_cast<MWSigmoidLayer *>(layers[561]))->createSigmoidLayer(targetImpl,
      layers[560]->getOutputTensor(0), "SSCB", 0);
    (static_cast<me_MWMultiplicationLayer_effici *>(layers[562]))
      ->createCustomLayer(targetImpl, layers[560]->getOutputTensor(0), layers
                          [561]->getOutputTensor(0), "SSCB", 10);
    (static_cast<MWConvLayer *>(layers[563]))->createConvLayer(targetImpl,
      layers[562]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-2_1_separable_conv2d"
      "_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-2_1_separable_conv2d"
      "_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[564]))->createConvLayer(targetImpl,
      layers[563]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-2_1_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-2_1_BiasAdd_b.bin",
      "SSCB", 5);
    (static_cast<MWSigmoidLayer *>(layers[565]))->createSigmoidLayer(targetImpl,
      layers[564]->getOutputTensor(0), "SSCB", 0);
    (static_cast<ne_MWMultiplicationLayer_effici *>(layers[566]))
      ->createCustomLayer(targetImpl, layers[564]->getOutputTensor(0), layers
                          [565]->getOutputTensor(0), "SSCB", 10);
    (static_cast<MWConvLayer *>(layers[567]))->createConvLayer(targetImpl,
      layers[566]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-predict_1_separable_"
      "conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-predict_1_separable_"
      "conv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[568]))->createConvLayer(targetImpl,
      layers[567]->getOutputTensor(0), 1, 1, 64, 36, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-predict_1_BiasAdd_w."
      "bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-predict_1_BiasAdd_b."
      "bin", "SSCB", 5);
    (static_cast<MWOutputLayer *>(layers[569]))->createOutputLayer(targetImpl,
      layers[568]->getOutputTensor(0), "SSCB", 5);
    (static_cast<MWConvLayer *>(layers[570]))->createConvLayer(targetImpl,
      layers[414]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-0_separable_conv"
      "2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-0_separable_conv"
      "2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[571]))->createConvLayer(targetImpl,
      layers[570]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-0_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-0_BiasAdd_b.bin",
      "SSCB", 10);
    (static_cast<MWSigmoidLayer *>(layers[572]))->createSigmoidLayer(targetImpl,
      layers[571]->getOutputTensor(0), "SSCB", 0);
    (static_cast<oe_MWMultiplicationLayer_effici *>(layers[573]))
      ->createCustomLayer(targetImpl, layers[571]->getOutputTensor(0), layers
                          [572]->getOutputTensor(0), "SSCB", 11);
    (static_cast<MWConvLayer *>(layers[574]))->createConvLayer(targetImpl,
      layers[573]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-1_separable_conv"
      "2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-1_separable_conv"
      "2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[575]))->createConvLayer(targetImpl,
      layers[574]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-1_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-1_BiasAdd_b.bin",
      "SSCB", 10);
    (static_cast<MWSigmoidLayer *>(layers[576]))->createSigmoidLayer(targetImpl,
      layers[575]->getOutputTensor(0), "SSCB", 0);
    (static_cast<pe_MWMultiplicationLayer_effici *>(layers[577]))
      ->createCustomLayer(targetImpl, layers[575]->getOutputTensor(0), layers
                          [576]->getOutputTensor(0), "SSCB", 11);
    (static_cast<MWConvLayer *>(layers[578]))->createConvLayer(targetImpl,
      layers[577]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-2_separable_conv"
      "2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-2_separable_conv"
      "2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[579]))->createConvLayer(targetImpl,
      layers[578]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-2_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-2_BiasAdd_b.bin",
      "SSCB", 10);
    (static_cast<MWSigmoidLayer *>(layers[580]))->createSigmoidLayer(targetImpl,
      layers[579]->getOutputTensor(0), "SSCB", 0);
    (static_cast<qe_MWMultiplicationLayer_effici *>(layers[581]))
      ->createCustomLayer(targetImpl, layers[579]->getOutputTensor(0), layers
                          [580]->getOutputTensor(0), "SSCB", 11);
    (static_cast<MWConvLayer *>(layers[582]))->createConvLayer(targetImpl,
      layers[581]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-predict_separabl"
      "e_conv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-predict_separabl"
      "e_conv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[583]))->createConvLayer(targetImpl,
      layers[582]->getOutputTensor(0), 1, 1, 64, 810, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-predict_BiasAdd_"
      "w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_class_net_class-predict_BiasAdd_"
      "b.bin", "SSCB", 10);
    (static_cast<MWOutputLayer *>(layers[584]))->createOutputLayer(targetImpl,
      layers[583]->getOutputTensor(0), "SSCB", 10);
    (static_cast<MWConvLayer *>(layers[585]))->createConvLayer(targetImpl,
      layers[414]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-0_separable_conv2d_d"
      "epthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-0_separable_conv2d_d"
      "epthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[586]))->createConvLayer(targetImpl,
      layers[585]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-0_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-0_BiasAdd_b.bin",
      "SSCB", 3);
    (static_cast<MWSigmoidLayer *>(layers[587]))->createSigmoidLayer(targetImpl,
      layers[586]->getOutputTensor(0), "SSCB", 0);
    (static_cast<re_MWMultiplicationLayer_effici *>(layers[588]))
      ->createCustomLayer(targetImpl, layers[586]->getOutputTensor(0), layers
                          [587]->getOutputTensor(0), "SSCB", 11);
    (static_cast<MWConvLayer *>(layers[589]))->createConvLayer(targetImpl,
      layers[588]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-1_separable_conv2d_d"
      "epthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-1_separable_conv2d_d"
      "epthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[590]))->createConvLayer(targetImpl,
      layers[589]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-1_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-1_BiasAdd_b.bin",
      "SSCB", 3);
    (static_cast<MWSigmoidLayer *>(layers[591]))->createSigmoidLayer(targetImpl,
      layers[590]->getOutputTensor(0), "SSCB", 0);
    (static_cast<se_MWMultiplicationLayer_effici *>(layers[592]))
      ->createCustomLayer(targetImpl, layers[590]->getOutputTensor(0), layers
                          [591]->getOutputTensor(0), "SSCB", 11);
    (static_cast<MWConvLayer *>(layers[593]))->createConvLayer(targetImpl,
      layers[592]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-2_separable_conv2d_d"
      "epthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-2_separable_conv2d_d"
      "epthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[594]))->createConvLayer(targetImpl,
      layers[593]->getOutputTensor(0), 1, 1, 64, 64, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-2_BiasAdd_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-2_BiasAdd_b.bin",
      "SSCB", 3);
    (static_cast<MWSigmoidLayer *>(layers[595]))->createSigmoidLayer(targetImpl,
      layers[594]->getOutputTensor(0), "SSCB", 0);
    (static_cast<te_MWMultiplicationLayer_effici *>(layers[596]))
      ->createCustomLayer(targetImpl, layers[594]->getOutputTensor(0), layers
                          [595]->getOutputTensor(0), "SSCB", 11);
    (static_cast<MWConvLayer *>(layers[597]))->createConvLayer(targetImpl,
      layers[596]->getOutputTensor(0), 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 64,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-predict_separable_co"
      "nv2d_depthwise_w.bin",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-predict_separable_co"
      "nv2d_depthwise_b.bin", "SSCB", 0);
    (static_cast<MWConvLayer *>(layers[598]))->createConvLayer(targetImpl,
      layers[597]->getOutputTensor(0), 1, 1, 64, 36, 1, 1, 0, 0, 0, 0, 1, 1, 1,
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-predict_BiasAdd_w.bi"
      "n",
      "D:\\correspondence\\efficientdet-d0\\codegen\\mex\\efficientDetD0_predict\\cnn_efficientDetD0-coco0_0_box_net_box-predict_BiasAdd_b.bi"
      "n", "SSCB", 3);
    (static_cast<MWOutputLayer *>(layers[599]))->createOutputLayer(targetImpl,
      layers[598]->getOutputTensor(0), "SSCB", 3);
    outputTensors[0] = layers[464]->getOutputTensor(0);
    outputTensors[1] = layers[479]->getOutputTensor(0);
    outputTensors[2] = layers[494]->getOutputTensor(0);
    outputTensors[3] = layers[509]->getOutputTensor(0);
    outputTensors[4] = layers[524]->getOutputTensor(0);
    outputTensors[5] = layers[539]->getOutputTensor(0);
    outputTensors[6] = layers[554]->getOutputTensor(0);
    outputTensors[7] = layers[569]->getOutputTensor(0);
    outputTensors[8] = layers[584]->getOutputTensor(0);
    outputTensors[9] = layers[599]->getOutputTensor(0);
    setSize();
  }

  isInitialized = true;
}

static __global__ __launch_bounds__(512, 1) void ab_dlnetwork_layerPredictWithCo
  (const real32_T varargin_1[589824], real32_T varargout_1[589824])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 64ULL;
  b_k = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 64ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 144)) &&
        (static_cast<int32_T>(b_k < 64)))) && (static_cast<int32_T>(c_k < 64)))
  {
    varargout_1[(c_k + (b_k << 6)) + (k << 12)] = varargin_1[(c_k + (b_k << 6))
      + (k << 12)];
  }
}

static __global__ __launch_bounds__(512, 1) void ac_dlnetwork_layerPredictWithCo
  (const real32_T varargin_2[491520], const real32_T a[491520], real32_T
   varargout_1[491520])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 32ULL;
  b_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 32ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 480)) &&
        (static_cast<int32_T>(b_k < 32)))) && (static_cast<int32_T>(c_k < 32)))
  {
    varargout_1[(c_k + (b_k << 5)) + (k << 10)] = a[(c_k + (b_k << 5)) + (k <<
      10)] * varargin_2[(c_k + (b_k << 5)) + (k << 10)];
  }
}

static __global__ __launch_bounds__(512, 1) void ad_dlnetwork_layerPredictWithCo
  (const real32_T out[4096], real32_T varargout_1[4096])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T i;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  b_k = static_cast<int32_T>(threadId % 8ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 8ULL;
  k = static_cast<int32_T>(threadId % 8ULL);
  threadId = (threadId - static_cast<uint64_T>(k)) / 8ULL;
  i = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(i < 64)) &&
        (static_cast<int32_T>(k < 8)))) && (static_cast<int32_T>(b_k < 8))) {
    varargout_1[(k + (b_k << 3)) + (i << 6)] = out[(b_k + (k << 3)) + (i << 6)];
  }
}

static __global__ __launch_bounds__(512, 1) void ae_dlnetwork_layerPredictWithCo
  (const real32_T varargin_1[262144], real32_T varargout_1[262144])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 64ULL;
  b_k = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 64ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 64)) &&
        (static_cast<int32_T>(b_k < 64)))) && (static_cast<int32_T>(c_k < 64)))
  {
    varargout_1[(c_k + (b_k << 6)) + (k << 12)] = varargin_1[(c_k + (b_k << 6))
      + (k << 12)];
  }
}

static __global__ __launch_bounds__(512, 1) void bb_dlnetwork_layerPredictWithCo
  (const real32_T varargout_1[589824], real32_T a[589824])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 589824) {
    a[k] = varargout_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void bc_dlnetwork_layerPredictWithCo
  (const real32_T varargin_1[688128], real32_T varargout_1[688128])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 32ULL;
  b_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 32ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 672)) &&
        (static_cast<int32_T>(b_k < 32)))) && (static_cast<int32_T>(c_k < 32)))
  {
    varargout_1[(c_k + (b_k << 5)) + (k << 10)] = varargin_1[(c_k + (b_k << 5))
      + (k << 10)];
  }
}

static __global__ __launch_bounds__(512, 1) void bd_dlnetwork_layerPredictWithCo
  (const real32_T varargin_1[4096], real32_T varargout_1[4096])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 8ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 8ULL;
  b_k = static_cast<int32_T>(threadId % 8ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 8ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 64)) &&
        (static_cast<int32_T>(b_k < 8)))) && (static_cast<int32_T>(c_k < 8))) {
    varargout_1[(c_k + (b_k << 3)) + (k << 6)] = varargin_1[(c_k + (b_k << 3)) +
      (k << 6)];
  }
}

static __global__ __launch_bounds__(512, 1) void be_dlnetwork_layerPredictWithCo
  (const real32_T varargout_1[262144], real32_T a[262144])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 262144) {
    a[k] = varargout_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void c_dlnetwork_layerPredictWithCol
  (const real32_T varargin_1[2097152], real32_T varargout_1[2097152])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 256ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 256ULL;
  b_k = static_cast<int32_T>(threadId % 256ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 256ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 32)) &&
        (static_cast<int32_T>(b_k < 256)))) && (static_cast<int32_T>(c_k < 256)))
  {
    varargout_1[(c_k + (b_k << 8)) + (k << 16)] = varargin_1[(c_k + (b_k << 8))
      + (k << 16)];
  }
}

static __global__ __launch_bounds__(512, 1) void cb_dlnetwork_layerPredictWithCo
  (const real32_T varargin_2[589824], const real32_T a[589824], real32_T
   varargout_1[589824])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 64ULL;
  b_k = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 64ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 144)) &&
        (static_cast<int32_T>(b_k < 64)))) && (static_cast<int32_T>(c_k < 64)))
  {
    varargout_1[(c_k + (b_k << 6)) + (k << 12)] = a[(c_k + (b_k << 6)) + (k <<
      12)] * varargin_2[(c_k + (b_k << 6)) + (k << 12)];
  }
}

static __global__ __launch_bounds__(512, 1) void cc_dlnetwork_layerPredictWithCo
  (const real32_T varargout_1[688128], real32_T a[688128])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 688128) {
    a[k] = varargout_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void cd_dlnetwork_layerPredictWithCo
  (const real32_T varargout_1[4096], real32_T a[4096])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 4096) {
    a[k] = varargout_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void ce_dlnetwork_layerPredictWithCo
  (const real32_T varargin_2[262144], const real32_T a[262144], real32_T
   varargout_1[262144])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 64ULL;
  b_k = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 64ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 64)) &&
        (static_cast<int32_T>(b_k < 64)))) && (static_cast<int32_T>(c_k < 64)))
  {
    varargout_1[(c_k + (b_k << 6)) + (k << 12)] = a[(c_k + (b_k << 6)) + (k <<
      12)] * varargin_2[(c_k + (b_k << 6)) + (k << 12)];
  }
}

static void checkCleanupCudaError(cudaError_t errCode, const char_T *file,
  uint32_T line)
{
  emlrtRTEInfo rtInfo;
  if ((errCode != cudaSuccess) && (errCode != cudaErrorCudartUnloading)) {
    rtInfo = createEmlrtInfoStruct(file, line);
    emlrtCUDAWarning((uint32_T)errCode, (char_T *)cudaGetErrorName(errCode),
                     (char_T *)cudaGetErrorString(errCode), &rtInfo);
  }
}

static void checkCleanupRunTimeError(const char_T *errMsg, const char_T *file,
  uint32_T line)
{
  emlrtRTEInfo rtInfo;
  uint32_T errMsgLen;
  rtInfo = createEmlrtInfoStruct(file, line);
  errMsgLen = (uint32_T)strlen(errMsg);
  emlrtErrorWithMessageIdR2018a(emlrtRootTLSGlobal, &rtInfo,
    "dnn_core:cnncodegen:CleanupRunTimeError",
    "dnn_core:cnncodegen:CleanupRunTimeError", 3, mxCHAR_CLASS, errMsgLen,
    errMsg);
}

static __global__ __launch_bounds__(512, 1) void d_dlnetwork_layerPredictWithCol
  (const real32_T varargout_1[2097152], real32_T a[2097152])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 2097152) {
    a[k] = varargout_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void db_dlnetwork_layerPredictWithCo
  (const real32_T varargin_1[144], real32_T varargout_1[589824])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 64ULL;
  b_k = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 64ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 144)) &&
        (static_cast<int32_T>(b_k < 64)))) && (static_cast<int32_T>(c_k < 64)))
  {
    varargout_1[(c_k + (b_k << 6)) + (k << 12)] = varargin_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void dc_dlnetwork_layerPredictWithCo
  (const real32_T varargin_2[688128], const real32_T a[688128], real32_T
   varargout_1[688128])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 32ULL;
  b_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 32ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 672)) &&
        (static_cast<int32_T>(b_k < 32)))) && (static_cast<int32_T>(c_k < 32)))
  {
    varargout_1[(c_k + (b_k << 5)) + (k << 10)] = a[(c_k + (b_k << 5)) + (k <<
      10)] * varargin_2[(c_k + (b_k << 5)) + (k << 10)];
  }
}

static __global__ __launch_bounds__(512, 1) void dd_dlnetwork_layerPredictWithCo
  (const real32_T varargin_2[4096], const real32_T a[4096], real32_T
   varargout_1[4096])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 8ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 8ULL;
  b_k = static_cast<int32_T>(threadId % 8ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 8ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 64)) &&
        (static_cast<int32_T>(b_k < 8)))) && (static_cast<int32_T>(c_k < 8))) {
    varargout_1[(c_k + (b_k << 3)) + (k << 6)] = a[(c_k + (b_k << 3)) + (k << 6)]
      * varargin_2[(c_k + (b_k << 3)) + (k << 6)];
  }
}

static __global__ __launch_bounds__(256, 1) void de_dlnetwork_layerPredictWithCo
  (const real32_T varargin_1[1024], real32_T varargout_1[1024])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  b_k = static_cast<int32_T>(threadId % 4ULL);
  k = static_cast<int32_T>((threadId - static_cast<uint64_T>(b_k)) / 4ULL);
  if ((static_cast<int32_T>(k < 64)) && (static_cast<int32_T>(b_k < 4))) {
    varargout_1[(b_k << 2) + (k << 4)] = varargin_1[(b_k << 2) + (k << 4)];
    varargout_1[((b_k << 2) + (k << 4)) + 1] = varargin_1[((b_k << 2) + (k << 4))
      + 1];
    varargout_1[((b_k << 2) + (k << 4)) + 2] = varargin_1[((b_k << 2) + (k << 4))
      + 2];
    varargout_1[((b_k << 2) + (k << 4)) + 3] = varargin_1[((b_k << 2) + (k << 4))
      + 3];
  }
}

static __global__ __launch_bounds__(512, 1) void e_dlnetwork_layerPredictWithCol
  (const real32_T varargin_2[2097152], const real32_T a[2097152], real32_T
   varargout_1[2097152])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 256ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 256ULL;
  b_k = static_cast<int32_T>(threadId % 256ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 256ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 32)) &&
        (static_cast<int32_T>(b_k < 256)))) && (static_cast<int32_T>(c_k < 256)))
  {
    varargout_1[(c_k + (b_k << 8)) + (k << 16)] = a[(c_k + (b_k << 8)) + (k <<
      16)] * varargin_2[(c_k + (b_k << 8)) + (k << 16)];
  }
}

static __global__ __launch_bounds__(512, 1) void eb_dlnetwork_layerPredictWithCo
  (const real32_T varargout_1[589824], real32_T a[589824])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 589824) {
    a[k] = varargout_1[k];
  }
}

static __global__ __launch_bounds__(32, 1) void ec_dlnetwork_layerPredictWithCo(
  const real32_T varargin_2[28], const real32_T varargin_1[28], real32_T
  varargout_1[28])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 28) {
    varargout_1[k] = varargin_1[k] * varargin_2[k];
  }
}

static __global__ __launch_bounds__(512, 1) void ed_dlnetwork_layerPredictWithCo
  (const real32_T varargin_1[4096], const int8_T xq[16], real32_T out[8192])
{
  uint64_T threadId;
  int32_T i;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId % 512ULL);
  i = static_cast<int32_T>((threadId - static_cast<uint64_T>(k)) / 512ULL);
  if ((static_cast<int32_T>(i < 16)) && (static_cast<int32_T>(k < 512))) {
    out[i + (k << 4)] = varargin_1[(static_cast<int32_T>(xq[i]) + (k << 3)) - 1];
  }
}

static __global__ __launch_bounds__(512, 1) void ee_dlnetwork_layerPredictWithCo
  (const real32_T varargout_1[1024], real32_T a[1024])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 1024) {
    a[k] = varargout_1[k];
  }
}

static __global__ __launch_bounds__(32, 1) void f_dlnetwork_layerPredictWithCol(
  const real32_T varargin_2[8], const real32_T varargin_1[8], real32_T
  varargout_1[8])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 8) {
    varargout_1[k] = varargin_1[k] * varargin_2[k];
  }
}

static __global__ __launch_bounds__(512, 1) void fb_dlnetwork_layerPredictWithCo
  (const real32_T varargin_2[589824], const real32_T a[589824], real32_T
   varargout_1[589824])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 64ULL;
  b_k = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 64ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 144)) &&
        (static_cast<int32_T>(b_k < 64)))) && (static_cast<int32_T>(c_k < 64)))
  {
    varargout_1[(c_k + (b_k << 6)) + (k << 12)] = a[(c_k + (b_k << 6)) + (k <<
      12)] * varargin_2[(c_k + (b_k << 6)) + (k << 12)];
  }
}

static __global__ __launch_bounds__(512, 1) void fc_dlnetwork_layerPredictWithCo
  (const real32_T varargin_1[672], real32_T varargout_1[688128])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 32ULL;
  b_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 32ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 672)) &&
        (static_cast<int32_T>(b_k < 32)))) && (static_cast<int32_T>(c_k < 32)))
  {
    varargout_1[(c_k + (b_k << 5)) + (k << 10)] = varargin_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void fd_dlnetwork_layerPredictWithCo
  (const real32_T out[8192], real32_T in[8192])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T i;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  b_k = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 16ULL;
  k = static_cast<int32_T>(threadId % 8ULL);
  threadId = (threadId - static_cast<uint64_T>(k)) / 8ULL;
  i = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(i < 64)) &&
        (static_cast<int32_T>(k < 8)))) && (static_cast<int32_T>(b_k < 16))) {
    in[(k + (b_k << 3)) + (i << 7)] = out[(b_k + (k << 4)) + (i << 7)];
  }
}

static __global__ __launch_bounds__(256, 1) void fe_dlnetwork_layerPredictWithCo
  (const real32_T varargin_2[1024], const real32_T a[1024], real32_T
   varargout_1[1024])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  b_k = static_cast<int32_T>(threadId % 4ULL);
  k = static_cast<int32_T>((threadId - static_cast<uint64_T>(b_k)) / 4ULL);
  if ((static_cast<int32_T>(k < 64)) && (static_cast<int32_T>(b_k < 4))) {
    varargout_1[(b_k << 2) + (k << 4)] = a[(b_k << 2) + (k << 4)] * varargin_2
      [(b_k << 2) + (k << 4)];
    varargout_1[((b_k << 2) + (k << 4)) + 1] = a[((b_k << 2) + (k << 4)) + 1] *
      varargin_2[((b_k << 2) + (k << 4)) + 1];
    varargout_1[((b_k << 2) + (k << 4)) + 2] = a[((b_k << 2) + (k << 4)) + 2] *
      varargin_2[((b_k << 2) + (k << 4)) + 2];
    varargout_1[((b_k << 2) + (k << 4)) + 3] = a[((b_k << 2) + (k << 4)) + 3] *
      varargin_2[((b_k << 2) + (k << 4)) + 3];
  }
}

static __global__ __launch_bounds__(512, 1) void g_dlnetwork_layerPredictWithCol
  (const real32_T varargin_1[32], real32_T varargout_1[2097152])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 256ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 256ULL;
  b_k = static_cast<int32_T>(threadId % 256ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 256ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 32)) &&
        (static_cast<int32_T>(b_k < 256)))) && (static_cast<int32_T>(c_k < 256)))
  {
    varargout_1[(c_k + (b_k << 8)) + (k << 16)] = varargin_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void gb_dlnetwork_layerPredictWithCo
  (const real32_T varargin_1[983040], real32_T varargout_1[983040])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 64ULL;
  b_k = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 64ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 240)) &&
        (static_cast<int32_T>(b_k < 64)))) && (static_cast<int32_T>(c_k < 64)))
  {
    varargout_1[(c_k + (b_k << 6)) + (k << 12)] = varargin_1[(c_k + (b_k << 6))
      + (k << 12)];
  }
}

static __global__ __launch_bounds__(512, 1) void gc_dlnetwork_layerPredictWithCo
  (const real32_T varargout_1[688128], real32_T a[688128])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 688128) {
    a[k] = varargout_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void gd_dlnetwork_layerPredictWithCo
  (const real32_T in[8192], const int8_T xq[16], real32_T out[16384])
{
  uint64_T threadId;
  int32_T i;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId % 1024ULL);
  i = static_cast<int32_T>((threadId - static_cast<uint64_T>(k)) / 1024ULL);
  if ((static_cast<int32_T>(i < 16)) && (static_cast<int32_T>(k < 1024))) {
    out[i + (k << 4)] = in[(static_cast<int32_T>(xq[i]) + (k << 3)) - 1];
  }
}

static __global__ __launch_bounds__(512, 1) void h_dlnetwork_layerPredictWithCol
  (const real32_T varargout_1[2097152], real32_T a[2097152])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 2097152) {
    a[k] = varargout_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void hb_dlnetwork_layerPredictWithCo
  (const real32_T varargout_1[983040], real32_T a[983040])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 983040) {
    a[k] = varargout_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void hc_dlnetwork_layerPredictWithCo
  (const real32_T varargin_2[688128], const real32_T a[688128], real32_T
   varargout_1[688128])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 32ULL;
  b_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 32ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 672)) &&
        (static_cast<int32_T>(b_k < 32)))) && (static_cast<int32_T>(c_k < 32)))
  {
    varargout_1[(c_k + (b_k << 5)) + (k << 10)] = a[(c_k + (b_k << 5)) + (k <<
      10)] * varargin_2[(c_k + (b_k << 5)) + (k << 10)];
  }
}

static __global__ __launch_bounds__(512, 1) void hd_dlnetwork_layerPredictWithCo
  (const real32_T out[16384], real32_T varargout_1[16384])
{
  uint64_T threadId;
  int32_T i;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  i = static_cast<int32_T>(threadId);
  if (i < 16384) {
    varargout_1[i] = out[i];
  }
}

static __global__ __launch_bounds__(512, 1) void i_dlnetwork_layerPredictWithCol
  (const real32_T varargin_2[2097152], const real32_T a[2097152], real32_T
   varargout_1[2097152])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 256ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 256ULL;
  b_k = static_cast<int32_T>(threadId % 256ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 256ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 32)) &&
        (static_cast<int32_T>(b_k < 256)))) && (static_cast<int32_T>(c_k < 256)))
  {
    varargout_1[(c_k + (b_k << 8)) + (k << 16)] = a[(c_k + (b_k << 8)) + (k <<
      16)] * varargin_2[(c_k + (b_k << 8)) + (k << 16)];
  }
}

static __global__ __launch_bounds__(512, 1) void ib_dlnetwork_layerPredictWithCo
  (const real32_T varargin_2[983040], const real32_T a[983040], real32_T
   varargout_1[983040])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 64ULL;
  b_k = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 64ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 240)) &&
        (static_cast<int32_T>(b_k < 64)))) && (static_cast<int32_T>(c_k < 64)))
  {
    varargout_1[(c_k + (b_k << 6)) + (k << 12)] = a[(c_k + (b_k << 6)) + (k <<
      12)] * varargin_2[(c_k + (b_k << 6)) + (k << 12)];
  }
}

static __global__ __launch_bounds__(512, 1) void ic_dlnetwork_layerPredictWithCo
  (const real32_T varargin_1[172032], real32_T varargout_1[172032])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 16ULL;
  b_k = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 16ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 672)) &&
        (static_cast<int32_T>(b_k < 16)))) && (static_cast<int32_T>(c_k < 16)))
  {
    varargout_1[(c_k + (b_k << 4)) + (k << 8)] = varargin_1[(c_k + (b_k << 4)) +
      (k << 8)];
  }
}

static __global__ __launch_bounds__(512, 1) void id_dlnetwork_layerPredictWithCo
  (const real32_T out[16384], real32_T varargout_1[16384])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T i;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  b_k = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 16ULL;
  k = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(k)) / 16ULL;
  i = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(i < 64)) &&
        (static_cast<int32_T>(k < 16)))) && (static_cast<int32_T>(b_k < 16))) {
    varargout_1[(k + (b_k << 4)) + (i << 8)] = out[(b_k + (k << 4)) + (i << 8)];
  }
}

static __global__ __launch_bounds__(512, 1) void j_dlnetwork_layerPredictWithCol
  (const real32_T varargin_1[6291456], real32_T varargout_1[6291456])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 256ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 256ULL;
  b_k = static_cast<int32_T>(threadId % 256ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 256ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 96)) &&
        (static_cast<int32_T>(b_k < 256)))) && (static_cast<int32_T>(c_k < 256)))
  {
    varargout_1[(c_k + (b_k << 8)) + (k << 16)] = varargin_1[(c_k + (b_k << 8))
      + (k << 16)];
  }
}

static __global__ __launch_bounds__(32, 1) void jb_dlnetwork_layerPredictWithCo(
  const real32_T varargin_2[10], const real32_T varargin_1[10], real32_T
  varargout_1[10])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 10) {
    varargout_1[k] = varargin_1[k] * varargin_2[k];
  }
}

static __global__ __launch_bounds__(512, 1) void jc_dlnetwork_layerPredictWithCo
  (const real32_T varargout_1[172032], real32_T a[172032])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 172032) {
    a[k] = varargout_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void jd_dlnetwork_layerPredictWithCo
  (const real32_T varargin_1[16384], real32_T varargout_1[16384])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 16ULL;
  b_k = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 16ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 64)) &&
        (static_cast<int32_T>(b_k < 16)))) && (static_cast<int32_T>(c_k < 16)))
  {
    varargout_1[(c_k + (b_k << 4)) + (k << 8)] = varargin_1[(c_k + (b_k << 4)) +
      (k << 8)];
  }
}

static __global__ __launch_bounds__(512, 1) void k_dlnetwork_layerPredictWithCol
  (const real32_T varargout_1[6291456], real32_T a[6291456])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 6291456) {
    a[k] = varargout_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void kb_dlnetwork_layerPredictWithCo
  (const real32_T varargin_1[240], real32_T varargout_1[983040])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 64ULL;
  b_k = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 64ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 240)) &&
        (static_cast<int32_T>(b_k < 64)))) && (static_cast<int32_T>(c_k < 64)))
  {
    varargout_1[(c_k + (b_k << 6)) + (k << 12)] = varargin_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void kc_dlnetwork_layerPredictWithCo
  (const real32_T varargin_2[172032], const real32_T a[172032], real32_T
   varargout_1[172032])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 16ULL;
  b_k = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 16ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 672)) &&
        (static_cast<int32_T>(b_k < 16)))) && (static_cast<int32_T>(c_k < 16)))
  {
    varargout_1[(c_k + (b_k << 4)) + (k << 8)] = a[(c_k + (b_k << 4)) + (k << 8)]
      * varargin_2[(c_k + (b_k << 4)) + (k << 8)];
  }
}

static __global__ __launch_bounds__(512, 1) void kd_dlnetwork_layerPredictWithCo
  (const real32_T varargout_1[16384], real32_T a[16384])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 16384) {
    a[k] = varargout_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void l_dlnetwork_layerPredictWithCol
  (const real32_T varargin_2[6291456], const real32_T a[6291456], real32_T
   varargout_1[6291456])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 256ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 256ULL;
  b_k = static_cast<int32_T>(threadId % 256ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 256ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 96)) &&
        (static_cast<int32_T>(b_k < 256)))) && (static_cast<int32_T>(c_k < 256)))
  {
    varargout_1[(c_k + (b_k << 8)) + (k << 16)] = a[(c_k + (b_k << 8)) + (k <<
      16)] * varargin_2[(c_k + (b_k << 8)) + (k << 16)];
  }
}

static __global__ __launch_bounds__(512, 1) void lb_dlnetwork_layerPredictWithCo
  (const real32_T varargout_1[983040], real32_T a[983040])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 983040) {
    a[k] = varargout_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void lc_dlnetwork_layerPredictWithCo
  (const real32_T varargin_1[672], real32_T varargout_1[172032])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 16ULL;
  b_k = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 16ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 672)) &&
        (static_cast<int32_T>(b_k < 16)))) && (static_cast<int32_T>(c_k < 16)))
  {
    varargout_1[(c_k + (b_k << 4)) + (k << 8)] = varargin_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void ld_dlnetwork_layerPredictWithCo
  (const real32_T varargin_2[16384], const real32_T a[16384], real32_T
   varargout_1[16384])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 16ULL;
  b_k = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 16ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 64)) &&
        (static_cast<int32_T>(b_k < 16)))) && (static_cast<int32_T>(c_k < 16)))
  {
    varargout_1[(c_k + (b_k << 4)) + (k << 8)] = a[(c_k + (b_k << 4)) + (k << 8)]
      * varargin_2[(c_k + (b_k << 4)) + (k << 8)];
  }
}

static __global__ __launch_bounds__(512, 1) void m_dlnetwork_layerPredictWithCol
  (const real32_T varargin_1[1572864], real32_T varargout_1[1572864])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 128ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 128ULL;
  b_k = static_cast<int32_T>(threadId % 128ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 128ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 96)) &&
        (static_cast<int32_T>(b_k < 128)))) && (static_cast<int32_T>(c_k < 128)))
  {
    varargout_1[(c_k + (b_k << 7)) + (k << 14)] = varargin_1[(c_k + (b_k << 7))
      + (k << 14)];
  }
}

static __global__ __launch_bounds__(512, 1) void mb_dlnetwork_layerPredictWithCo
  (const real32_T varargin_2[983040], const real32_T a[983040], real32_T
   varargout_1[983040])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 64ULL;
  b_k = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 64ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 240)) &&
        (static_cast<int32_T>(b_k < 64)))) && (static_cast<int32_T>(c_k < 64)))
  {
    varargout_1[(c_k + (b_k << 6)) + (k << 12)] = a[(c_k + (b_k << 6)) + (k <<
      12)] * varargin_2[(c_k + (b_k << 6)) + (k << 12)];
  }
}

static __global__ __launch_bounds__(512, 1) void mc_dlnetwork_layerPredictWithCo
  (const real32_T varargout_1[172032], real32_T a[172032])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 172032) {
    a[k] = varargout_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void md_dlnetwork_layerPredictWithCo
  (const real32_T varargin_1[16384], const int8_T xq[32], real32_T out[32768])
{
  uint64_T threadId;
  int32_T i;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId % 1024ULL);
  i = static_cast<int32_T>((threadId - static_cast<uint64_T>(k)) / 1024ULL);
  if ((static_cast<int32_T>(i < 32)) && (static_cast<int32_T>(k < 1024))) {
    out[i + (k << 5)] = varargin_1[(static_cast<int32_T>(xq[i]) + (k << 4)) - 1];
  }
}

static __global__ __launch_bounds__(512, 1) void n_dlnetwork_layerPredictWithCol
  (const real32_T varargout_1[1572864], real32_T a[1572864])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 1572864) {
    a[k] = varargout_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void nb_dlnetwork_layerPredictWithCo
  (const real32_T varargin_1[245760], real32_T varargout_1[245760])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 32ULL;
  b_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 32ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 240)) &&
        (static_cast<int32_T>(b_k < 32)))) && (static_cast<int32_T>(c_k < 32)))
  {
    varargout_1[(c_k + (b_k << 5)) + (k << 10)] = varargin_1[(c_k + (b_k << 5))
      + (k << 10)];
  }
}

static __global__ __launch_bounds__(512, 1) void nc_dlnetwork_layerPredictWithCo
  (const real32_T varargin_2[172032], const real32_T a[172032], real32_T
   varargout_1[172032])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 16ULL;
  b_k = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 16ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 672)) &&
        (static_cast<int32_T>(b_k < 16)))) && (static_cast<int32_T>(c_k < 16)))
  {
    varargout_1[(c_k + (b_k << 4)) + (k << 8)] = a[(c_k + (b_k << 4)) + (k << 8)]
      * varargin_2[(c_k + (b_k << 4)) + (k << 8)];
  }
}

static __global__ __launch_bounds__(512, 1) void nd_dlnetwork_layerPredictWithCo
  (const real32_T out[32768], real32_T in[32768])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T i;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  b_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 32ULL;
  k = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(k)) / 16ULL;
  i = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(i < 64)) &&
        (static_cast<int32_T>(k < 16)))) && (static_cast<int32_T>(b_k < 32))) {
    in[(k + (b_k << 4)) + (i << 9)] = out[(b_k + (k << 5)) + (i << 9)];
  }
}

static __global__ __launch_bounds__(512, 1) void o_dlnetwork_layerPredictWithCol
  (const real32_T varargin_2[1572864], const real32_T a[1572864], real32_T
   varargout_1[1572864])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 128ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 128ULL;
  b_k = static_cast<int32_T>(threadId % 128ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 128ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 96)) &&
        (static_cast<int32_T>(b_k < 128)))) && (static_cast<int32_T>(c_k < 128)))
  {
    varargout_1[(c_k + (b_k << 7)) + (k << 14)] = a[(c_k + (b_k << 7)) + (k <<
      14)] * varargin_2[(c_k + (b_k << 7)) + (k << 14)];
  }
}

static __global__ __launch_bounds__(512, 1) void ob_dlnetwork_layerPredictWithCo
  (const real32_T varargout_1[245760], real32_T a[245760])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 245760) {
    a[k] = varargout_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void oc_dlnetwork_layerPredictWithCo
  (const real32_T varargin_1[294912], real32_T varargout_1[294912])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 16ULL;
  b_k = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 16ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 1152)) &&
        (static_cast<int32_T>(b_k < 16)))) && (static_cast<int32_T>(c_k < 16)))
  {
    varargout_1[(c_k + (b_k << 4)) + (k << 8)] = varargin_1[(c_k + (b_k << 4)) +
      (k << 8)];
  }
}

static __global__ __launch_bounds__(512, 1) void od_dlnetwork_layerPredictWithCo
  (const real32_T in[32768], const int8_T xq[32], real32_T out[65536])
{
  uint64_T threadId;
  int32_T i;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId % 2048ULL);
  i = static_cast<int32_T>((threadId - static_cast<uint64_T>(k)) / 2048ULL);
  if ((static_cast<int32_T>(i < 32)) && (static_cast<int32_T>(k < 2048))) {
    out[i + (k << 5)] = in[(static_cast<int32_T>(xq[i]) + (k << 4)) - 1];
  }
}

static __global__ __launch_bounds__(512, 1) void p_dlnetwork_layerPredictWithCol
  (const real32_T varargin_1[96], real32_T varargout_1[1572864])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 128ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 128ULL;
  b_k = static_cast<int32_T>(threadId % 128ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 128ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 96)) &&
        (static_cast<int32_T>(b_k < 128)))) && (static_cast<int32_T>(c_k < 128)))
  {
    varargout_1[(c_k + (b_k << 7)) + (k << 14)] = varargin_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void pb_dlnetwork_layerPredictWithCo
  (const real32_T varargin_2[245760], const real32_T a[245760], real32_T
   varargout_1[245760])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 32ULL;
  b_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 32ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 240)) &&
        (static_cast<int32_T>(b_k < 32)))) && (static_cast<int32_T>(c_k < 32)))
  {
    varargout_1[(c_k + (b_k << 5)) + (k << 10)] = a[(c_k + (b_k << 5)) + (k <<
      10)] * varargin_2[(c_k + (b_k << 5)) + (k << 10)];
  }
}

static __global__ __launch_bounds__(512, 1) void pc_dlnetwork_layerPredictWithCo
  (const real32_T varargout_1[294912], real32_T a[294912])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 294912) {
    a[k] = varargout_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void pd_dlnetwork_layerPredictWithCo
  (const real32_T out[65536], real32_T varargout_1[65536])
{
  uint64_T threadId;
  int32_T i;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  i = static_cast<int32_T>(threadId);
  if (i < 65536) {
    varargout_1[i] = out[i];
  }
}

static __global__ __launch_bounds__(512, 1) void q_dlnetwork_layerPredictWithCol
  (const real32_T varargout_1[1572864], real32_T a[1572864])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 1572864) {
    a[k] = varargout_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void qb_dlnetwork_layerPredictWithCo
  (const real32_T varargin_1[240], real32_T varargout_1[245760])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 32ULL;
  b_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 32ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 240)) &&
        (static_cast<int32_T>(b_k < 32)))) && (static_cast<int32_T>(c_k < 32)))
  {
    varargout_1[(c_k + (b_k << 5)) + (k << 10)] = varargin_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void qc_dlnetwork_layerPredictWithCo
  (const real32_T varargin_2[294912], const real32_T a[294912], real32_T
   varargout_1[294912])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 16ULL;
  b_k = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 16ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 1152)) &&
        (static_cast<int32_T>(b_k < 16)))) && (static_cast<int32_T>(c_k < 16)))
  {
    varargout_1[(c_k + (b_k << 4)) + (k << 8)] = a[(c_k + (b_k << 4)) + (k << 8)]
      * varargin_2[(c_k + (b_k << 4)) + (k << 8)];
  }
}

static __global__ __launch_bounds__(512, 1) void qd_dlnetwork_layerPredictWithCo
  (const real32_T out[65536], real32_T varargout_1[65536])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T i;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  b_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 32ULL;
  k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(k)) / 32ULL;
  i = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(i < 64)) &&
        (static_cast<int32_T>(k < 32)))) && (static_cast<int32_T>(b_k < 32))) {
    varargout_1[(k + (b_k << 5)) + (i << 10)] = out[(b_k + (k << 5)) + (i << 10)];
  }
}

static __global__ __launch_bounds__(512, 1) void r_dlnetwork_layerPredictWithCol
  (const real32_T varargin_2[1572864], const real32_T a[1572864], real32_T
   varargout_1[1572864])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 128ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 128ULL;
  b_k = static_cast<int32_T>(threadId % 128ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 128ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 96)) &&
        (static_cast<int32_T>(b_k < 128)))) && (static_cast<int32_T>(c_k < 128)))
  {
    varargout_1[(c_k + (b_k << 7)) + (k << 14)] = a[(c_k + (b_k << 7)) + (k <<
      14)] * varargin_2[(c_k + (b_k << 7)) + (k << 14)];
  }
}

static __global__ __launch_bounds__(512, 1) void rb_dlnetwork_layerPredictWithCo
  (const real32_T varargout_1[245760], real32_T a[245760])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 245760) {
    a[k] = varargout_1[k];
  }
}

static __global__ __launch_bounds__(64, 1) void rc_dlnetwork_layerPredictWithCo(
  const real32_T varargin_2[48], const real32_T varargin_1[48], real32_T
  varargout_1[48])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 48) {
    varargout_1[k] = varargin_1[k] * varargin_2[k];
  }
}

static __global__ __launch_bounds__(512, 1) void rd_dlnetwork_layerPredictWithCo
  (const real32_T varargin_1[65536], real32_T varargout_1[65536])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 32ULL;
  b_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 32ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 64)) &&
        (static_cast<int32_T>(b_k < 32)))) && (static_cast<int32_T>(c_k < 32)))
  {
    varargout_1[(c_k + (b_k << 5)) + (k << 10)] = varargin_1[(c_k + (b_k << 5))
      + (k << 10)];
  }
}

static __global__ __launch_bounds__(512, 1) void s_dlnetwork_layerPredictWithCol
  (const real32_T varargin_1[2359296], real32_T varargout_1[2359296])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 128ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 128ULL;
  b_k = static_cast<int32_T>(threadId % 128ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 128ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 144)) &&
        (static_cast<int32_T>(b_k < 128)))) && (static_cast<int32_T>(c_k < 128)))
  {
    varargout_1[(c_k + (b_k << 7)) + (k << 14)] = varargin_1[(c_k + (b_k << 7))
      + (k << 14)];
  }
}

static __global__ __launch_bounds__(512, 1) void sb_dlnetwork_layerPredictWithCo
  (const real32_T varargin_2[245760], const real32_T a[245760], real32_T
   varargout_1[245760])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 32ULL;
  b_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 32ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 240)) &&
        (static_cast<int32_T>(b_k < 32)))) && (static_cast<int32_T>(c_k < 32)))
  {
    varargout_1[(c_k + (b_k << 5)) + (k << 10)] = a[(c_k + (b_k << 5)) + (k <<
      10)] * varargin_2[(c_k + (b_k << 5)) + (k << 10)];
  }
}

static __global__ __launch_bounds__(512, 1) void sc_dlnetwork_layerPredictWithCo
  (const real32_T varargin_1[1152], real32_T varargout_1[294912])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 16ULL;
  b_k = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 16ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 1152)) &&
        (static_cast<int32_T>(b_k < 16)))) && (static_cast<int32_T>(c_k < 16)))
  {
    varargout_1[(c_k + (b_k << 4)) + (k << 8)] = varargin_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void sd_dlnetwork_layerPredictWithCo
  (const real32_T varargout_1[65536], real32_T a[65536])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 65536) {
    a[k] = varargout_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void t_dlnetwork_layerPredictWithCol
  (const real32_T varargout_1[2359296], real32_T a[2359296])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 2359296) {
    a[k] = varargout_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void tb_dlnetwork_layerPredictWithCo
  (const real32_T varargin_1[491520], real32_T varargout_1[491520])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 32ULL;
  b_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 32ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 480)) &&
        (static_cast<int32_T>(b_k < 32)))) && (static_cast<int32_T>(c_k < 32)))
  {
    varargout_1[(c_k + (b_k << 5)) + (k << 10)] = varargin_1[(c_k + (b_k << 5))
      + (k << 10)];
  }
}

static __global__ __launch_bounds__(512, 1) void tc_dlnetwork_layerPredictWithCo
  (const real32_T varargout_1[294912], real32_T a[294912])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 294912) {
    a[k] = varargout_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void td_dlnetwork_layerPredictWithCo
  (const real32_T varargin_2[65536], const real32_T a[65536], real32_T
   varargout_1[65536])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 32ULL;
  b_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 32ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 64)) &&
        (static_cast<int32_T>(b_k < 32)))) && (static_cast<int32_T>(c_k < 32)))
  {
    varargout_1[(c_k + (b_k << 5)) + (k << 10)] = a[(c_k + (b_k << 5)) + (k <<
      10)] * varargin_2[(c_k + (b_k << 5)) + (k << 10)];
  }
}

static __global__ __launch_bounds__(512, 1) void u_dlnetwork_layerPredictWithCol
  (const real32_T varargin_2[2359296], const real32_T a[2359296], real32_T
   varargout_1[2359296])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 128ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 128ULL;
  b_k = static_cast<int32_T>(threadId % 128ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 128ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 144)) &&
        (static_cast<int32_T>(b_k < 128)))) && (static_cast<int32_T>(c_k < 128)))
  {
    varargout_1[(c_k + (b_k << 7)) + (k << 14)] = a[(c_k + (b_k << 7)) + (k <<
      14)] * varargin_2[(c_k + (b_k << 7)) + (k << 14)];
  }
}

static __global__ __launch_bounds__(512, 1) void ub_dlnetwork_layerPredictWithCo
  (const real32_T varargout_1[491520], real32_T a[491520])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 491520) {
    a[k] = varargout_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void uc_dlnetwork_layerPredictWithCo
  (const real32_T varargin_2[294912], const real32_T a[294912], real32_T
   varargout_1[294912])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 16ULL;
  b_k = static_cast<int32_T>(threadId % 16ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 16ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 1152)) &&
        (static_cast<int32_T>(b_k < 16)))) && (static_cast<int32_T>(c_k < 16)))
  {
    varargout_1[(c_k + (b_k << 4)) + (k << 8)] = a[(c_k + (b_k << 4)) + (k << 8)]
      * varargin_2[(c_k + (b_k << 4)) + (k << 8)];
  }
}

static __global__ __launch_bounds__(512, 1) void ud_dlnetwork_layerPredictWithCo
  (const real32_T varargin_1[65536], const int8_T xq[64], real32_T out[131072])
{
  uint64_T threadId;
  int32_T i;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId % 2048ULL);
  i = static_cast<int32_T>((threadId - static_cast<uint64_T>(k)) / 2048ULL);
  if ((static_cast<int32_T>(i < 64)) && (static_cast<int32_T>(k < 2048))) {
    out[i + (k << 6)] = varargin_1[(static_cast<int32_T>(xq[i]) + (k << 5)) - 1];
  }
}

static __global__ __launch_bounds__(32, 1) void v_dlnetwork_layerPredictWithCol(
  const real32_T varargin_2[6], const real32_T varargin_1[6], real32_T
  varargout_1[6])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 6) {
    varargout_1[k] = varargin_1[k] * varargin_2[k];
  }
}

static __global__ __launch_bounds__(512, 1) void vb_dlnetwork_layerPredictWithCo
  (const real32_T varargin_2[491520], const real32_T a[491520], real32_T
   varargout_1[491520])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 32ULL;
  b_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 32ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 480)) &&
        (static_cast<int32_T>(b_k < 32)))) && (static_cast<int32_T>(c_k < 32)))
  {
    varargout_1[(c_k + (b_k << 5)) + (k << 10)] = a[(c_k + (b_k << 5)) + (k <<
      10)] * varargin_2[(c_k + (b_k << 5)) + (k << 10)];
  }
}

static __global__ __launch_bounds__(512, 1) void vc_dlnetwork_layerPredictWithCo
  (const real32_T varargin_1[1024], const int8_T xq[8], real32_T out[2048])
{
  uint64_T threadId;
  int32_T i;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId % 256ULL);
  i = static_cast<int32_T>((threadId - static_cast<uint64_T>(k)) / 256ULL);
  if ((static_cast<int32_T>(i < 8)) && (static_cast<int32_T>(k < 256))) {
    out[i + (k << 3)] = varargin_1[(static_cast<int32_T>(xq[i]) + (k << 2)) - 1];
  }
}

static __global__ __launch_bounds__(512, 1) void vd_dlnetwork_layerPredictWithCo
  (const real32_T out[131072], real32_T in[131072])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T i;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  b_k = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 64ULL;
  k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(k)) / 32ULL;
  i = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(i < 64)) &&
        (static_cast<int32_T>(k < 32)))) && (static_cast<int32_T>(b_k < 64))) {
    in[(k + (b_k << 5)) + (i << 11)] = out[(b_k + (k << 6)) + (i << 11)];
  }
}

static __global__ __launch_bounds__(512, 1) void w_dlnetwork_layerPredictWithCol
  (const real32_T varargin_1[144], real32_T varargout_1[2359296])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 128ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 128ULL;
  b_k = static_cast<int32_T>(threadId % 128ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 128ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 144)) &&
        (static_cast<int32_T>(b_k < 128)))) && (static_cast<int32_T>(c_k < 128)))
  {
    varargout_1[(c_k + (b_k << 7)) + (k << 14)] = varargin_1[k];
  }
}

static __global__ __launch_bounds__(32, 1) void wb_dlnetwork_layerPredictWithCo(
  const real32_T varargin_2[20], const real32_T varargin_1[20], real32_T
  varargout_1[20])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 20) {
    varargout_1[k] = varargin_1[k] * varargin_2[k];
  }
}

static __global__ __launch_bounds__(512, 1) void wc_dlnetwork_layerPredictWithCo
  (const real32_T out[2048], real32_T in[2048])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T i;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  b_k = static_cast<int32_T>(threadId % 8ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 8ULL;
  k = static_cast<int32_T>(threadId % 4ULL);
  threadId = (threadId - static_cast<uint64_T>(k)) / 4ULL;
  i = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(i < 64)) &&
        (static_cast<int32_T>(k < 4)))) && (static_cast<int32_T>(b_k < 8))) {
    in[(k + (b_k << 2)) + (i << 5)] = out[(b_k + (k << 3)) + (i << 5)];
  }
}

static __global__ __launch_bounds__(512, 1) void wd_dlnetwork_layerPredictWithCo
  (const real32_T in[131072], const int8_T xq[64], real32_T out[262144])
{
  uint64_T threadId;
  int32_T i;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId % 4096ULL);
  i = static_cast<int32_T>((threadId - static_cast<uint64_T>(k)) / 4096ULL);
  if ((static_cast<int32_T>(i < 64)) && (static_cast<int32_T>(k < 4096))) {
    out[i + (k << 6)] = in[(static_cast<int32_T>(xq[i]) + (k << 5)) - 1];
  }
}

static __global__ __launch_bounds__(512, 1) void x_dlnetwork_layerPredictWithCol
  (const real32_T varargout_1[2359296], real32_T a[2359296])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 2359296) {
    a[k] = varargout_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void xb_dlnetwork_layerPredictWithCo
  (const real32_T varargin_1[480], real32_T varargout_1[491520])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 32ULL;
  b_k = static_cast<int32_T>(threadId % 32ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 32ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 480)) &&
        (static_cast<int32_T>(b_k < 32)))) && (static_cast<int32_T>(c_k < 32)))
  {
    varargout_1[(c_k + (b_k << 5)) + (k << 10)] = varargin_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void xc_dlnetwork_layerPredictWithCo
  (const real32_T in[2048], const int8_T xq[8], real32_T out[4096])
{
  uint64_T threadId;
  int32_T i;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId % 512ULL);
  i = static_cast<int32_T>((threadId - static_cast<uint64_T>(k)) / 512ULL);
  if ((static_cast<int32_T>(i < 8)) && (static_cast<int32_T>(k < 512))) {
    out[i + (k << 3)] = in[(static_cast<int32_T>(xq[i]) + (k << 2)) - 1];
  }
}

static __global__ __launch_bounds__(512, 1) void xd_dlnetwork_layerPredictWithCo
  (const real32_T out[262144], real32_T varargout_1[262144])
{
  uint64_T threadId;
  int32_T i;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  i = static_cast<int32_T>(threadId);
  if (i < 262144) {
    varargout_1[i] = out[i];
  }
}

static __global__ __launch_bounds__(512, 1) void y_dlnetwork_layerPredictWithCol
  (const real32_T varargin_2[2359296], const real32_T a[2359296], real32_T
   varargout_1[2359296])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T c_k;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  c_k = static_cast<int32_T>(threadId % 128ULL);
  threadId = (threadId - static_cast<uint64_T>(c_k)) / 128ULL;
  b_k = static_cast<int32_T>(threadId % 128ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 128ULL;
  k = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(k < 144)) &&
        (static_cast<int32_T>(b_k < 128)))) && (static_cast<int32_T>(c_k < 128)))
  {
    varargout_1[(c_k + (b_k << 7)) + (k << 14)] = a[(c_k + (b_k << 7)) + (k <<
      14)] * varargin_2[(c_k + (b_k << 7)) + (k << 14)];
  }
}

static __global__ __launch_bounds__(512, 1) void yb_dlnetwork_layerPredictWithCo
  (const real32_T varargout_1[491520], real32_T a[491520])
{
  uint64_T threadId;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  k = static_cast<int32_T>(threadId);
  if (k < 491520) {
    a[k] = varargout_1[k];
  }
}

static __global__ __launch_bounds__(512, 1) void yc_dlnetwork_layerPredictWithCo
  (const real32_T out[4096], real32_T varargout_1[4096])
{
  uint64_T threadId;
  int32_T i;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  i = static_cast<int32_T>(threadId);
  if (i < 4096) {
    varargout_1[i] = out[i];
  }
}

static __global__ __launch_bounds__(512, 1) void yd_dlnetwork_layerPredictWithCo
  (const real32_T out[262144], real32_T varargout_1[262144])
{
  uint64_T threadId;
  int32_T b_k;
  int32_T i;
  int32_T k;
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  b_k = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(b_k)) / 64ULL;
  k = static_cast<int32_T>(threadId % 64ULL);
  threadId = (threadId - static_cast<uint64_T>(k)) / 64ULL;
  i = static_cast<int32_T>(threadId);
  if ((static_cast<int32_T>((static_cast<int32_T>(i < 64)) &&
        (static_cast<int32_T>(k < 64)))) && (static_cast<int32_T>(b_k < 64))) {
    varargout_1[(k + (b_k << 6)) + (i << 12)] = out[(b_k + (k << 6)) + (i << 12)];
  }
}

void efficientDetD0_coco0_0::activations(int32_T layerIdx)
{
  for (int32_T idx{0}; idx <= layerIdx; idx++) {
    layers[idx]->predict();
  }
}

efficientDetD0_coco0_0::efficientDetD0_coco0_0()
{
  numLayers = 600;
  isInitialized = false;
  targetImpl = 0;
  layers[0] = new MWInputLayer;
  layers[0]->setName("image_input");
  layers[1] = new MWConvLayer;
  layers[1]->setName("efficientnet-b0|stem|conv2d|Conv2D");
  layers[2] = new MWSigmoidLayer;
  layers[2]->setName("efficientnet-b0|stem|Sigmoid");
  layers[3] = new c_MWMultiplicationLayer_efficie;
  layers[3]->setName("efficientnet-b0|stem|mul");
  layers[4] = new MWConvLayer;
  layers[4]->setName("efficientnet-b0|blocks_0|depthwise_conv2d|depthwise");
  layers[5] = new MWSigmoidLayer;
  layers[5]->setName("efficientnet-b0|blocks_0|Sigmoid");
  layers[6] = new d_MWMultiplicationLayer_efficie;
  layers[6]->setName("efficientnet-b0|blocks_0|mul");
  layers[7] = new MWAvgPoolingLayer;
  layers[7]->setName("efficientnet-b0|blocks_0|se|Mean");
  layers[8] = new MWConvLayer;
  layers[8]->setName("efficientnet-b0|blocks_0|se|conv2d|BiasAdd");
  layers[9] = new MWSigmoidLayer;
  layers[9]->setName("efficientnet-b0|blocks_0|se|Sigmoid");
  layers[10] = new e_MWMultiplicationLayer_efficie;
  layers[10]->setName("efficientnet-b0|blocks_0|se|mul");
  layers[11] = new MWConvLayer;
  layers[11]->setName("efficientnet-b0|blocks_0|se|conv2d_1|BiasAdd");
  layers[12] = new MWSigmoidLayer;
  layers[12]->setName("efficientnet-b0|blocks_0|se|Sigmoid_1");
  layers[12]->setInPlaceIndex(0, 0);
  layers[13] = new f_MWMultiplicationLayer_efficie;
  layers[13]->setName("efficientnet-b0|blocks_0|se|mul_1");
  layers[14] = new MWConvLayer;
  layers[14]->setName("efficientnet-b0|blocks_0|conv2d|Conv2D");
  layers[15] = new MWConvLayer;
  layers[15]->setName("efficientnet-b0|blocks_1|conv2d|Conv2D");
  layers[16] = new MWSigmoidLayer;
  layers[16]->setName("efficientnet-b0|blocks_1|Sigmoid");
  layers[17] = new g_MWMultiplicationLayer_efficie;
  layers[17]->setName("efficientnet-b0|blocks_1|mul");
  layers[18] = new MWConvLayer;
  layers[18]->setName("efficientnet-b0|blocks_1|depthwise_conv2d|depthwise");
  layers[19] = new MWSigmoidLayer;
  layers[19]->setName("efficientnet-b0|blocks_1|Sigmoid_1");
  layers[20] = new h_MWMultiplicationLayer_efficie;
  layers[20]->setName("efficientnet-b0|blocks_1|mul_1");
  layers[21] = new MWAvgPoolingLayer;
  layers[21]->setName("efficientnet-b0|blocks_1|se|Mean");
  layers[22] = new MWConvLayer;
  layers[22]->setName("efficientnet-b0|blocks_1|se|conv2d|BiasAdd");
  layers[23] = new MWSigmoidLayer;
  layers[23]->setName("efficientnet-b0|blocks_1|se|Sigmoid");
  layers[24] = new i_MWMultiplicationLayer_efficie;
  layers[24]->setName("efficientnet-b0|blocks_1|se|mul");
  layers[25] = new MWConvLayer;
  layers[25]->setName("efficientnet-b0|blocks_1|se|conv2d_1|BiasAdd");
  layers[26] = new MWSigmoidLayer;
  layers[26]->setName("efficientnet-b0|blocks_1|se|Sigmoid_1");
  layers[26]->setInPlaceIndex(0, 0);
  layers[27] = new j_MWMultiplicationLayer_efficie;
  layers[27]->setName("efficientnet-b0|blocks_1|se|mul_1");
  layers[28] = new MWConvLayer;
  layers[28]->setName("efficientnet-b0|blocks_1|conv2d_1|Conv2D");
  layers[29] = new MWConvLayer;
  layers[29]->setName("efficientnet-b0|blocks_2|conv2d|Conv2D");
  layers[30] = new MWSigmoidLayer;
  layers[30]->setName("efficientnet-b0|blocks_2|Sigmoid");
  layers[31] = new k_MWMultiplicationLayer_efficie;
  layers[31]->setName("efficientnet-b0|blocks_2|mul");
  layers[32] = new MWConvLayer;
  layers[32]->setName("efficientnet-b0|blocks_2|depthwise_conv2d|depthwise");
  layers[33] = new MWSigmoidLayer;
  layers[33]->setName("efficientnet-b0|blocks_2|Sigmoid_1");
  layers[34] = new l_MWMultiplicationLayer_efficie;
  layers[34]->setName("efficientnet-b0|blocks_2|mul_1");
  layers[35] = new MWAvgPoolingLayer;
  layers[35]->setName("efficientnet-b0|blocks_2|se|Mean");
  layers[36] = new MWConvLayer;
  layers[36]->setName("efficientnet-b0|blocks_2|se|conv2d|BiasAdd");
  layers[37] = new MWSigmoidLayer;
  layers[37]->setName("efficientnet-b0|blocks_2|se|Sigmoid");
  layers[38] = new m_MWMultiplicationLayer_efficie;
  layers[38]->setName("efficientnet-b0|blocks_2|se|mul");
  layers[39] = new MWConvLayer;
  layers[39]->setName("efficientnet-b0|blocks_2|se|conv2d_1|BiasAdd");
  layers[40] = new MWSigmoidLayer;
  layers[40]->setName("efficientnet-b0|blocks_2|se|Sigmoid_1");
  layers[40]->setInPlaceIndex(0, 0);
  layers[41] = new n_MWMultiplicationLayer_efficie;
  layers[41]->setName("efficientnet-b0|blocks_2|se|mul_1");
  layers[42] = new MWConvLayer;
  layers[42]->setName("efficientnet-b0|blocks_2|conv2d_1|Conv2D");
  layers[43] = new MWAdditionLayer;
  layers[43]->setName("efficientnet-b0|blocks_2|Add");
  layers[44] = new MWConvLayer;
  layers[44]->setName("efficientnet-b0|blocks_3|conv2d|Conv2D");
  layers[45] = new MWSigmoidLayer;
  layers[45]->setName("efficientnet-b0|blocks_3|Sigmoid");
  layers[46] = new o_MWMultiplicationLayer_efficie;
  layers[46]->setName("efficientnet-b0|blocks_3|mul");
  layers[47] = new MWConvLayer;
  layers[47]->setName("efficientnet-b0|blocks_3|depthwise_conv2d|depthwise");
  layers[48] = new MWSigmoidLayer;
  layers[48]->setName("efficientnet-b0|blocks_3|Sigmoid_1");
  layers[49] = new p_MWMultiplicationLayer_efficie;
  layers[49]->setName("efficientnet-b0|blocks_3|mul_1");
  layers[50] = new MWAvgPoolingLayer;
  layers[50]->setName("efficientnet-b0|blocks_3|se|Mean");
  layers[51] = new MWConvLayer;
  layers[51]->setName("efficientnet-b0|blocks_3|se|conv2d|BiasAdd");
  layers[52] = new MWSigmoidLayer;
  layers[52]->setName("efficientnet-b0|blocks_3|se|Sigmoid");
  layers[53] = new q_MWMultiplicationLayer_efficie;
  layers[53]->setName("efficientnet-b0|blocks_3|se|mul");
  layers[54] = new MWConvLayer;
  layers[54]->setName("efficientnet-b0|blocks_3|se|conv2d_1|BiasAdd");
  layers[55] = new MWSigmoidLayer;
  layers[55]->setName("efficientnet-b0|blocks_3|se|Sigmoid_1");
  layers[55]->setInPlaceIndex(0, 0);
  layers[56] = new r_MWMultiplicationLayer_efficie;
  layers[56]->setName("efficientnet-b0|blocks_3|se|mul_1");
  layers[57] = new MWConvLayer;
  layers[57]->setName("efficientnet-b0|blocks_3|conv2d_1|Conv2D");
  layers[58] = new MWConvLayer;
  layers[58]->setName("efficientnet-b0|blocks_4|conv2d|Conv2D");
  layers[59] = new MWSigmoidLayer;
  layers[59]->setName("efficientnet-b0|blocks_4|Sigmoid");
  layers[60] = new s_MWMultiplicationLayer_efficie;
  layers[60]->setName("efficientnet-b0|blocks_4|mul");
  layers[61] = new MWConvLayer;
  layers[61]->setName("efficientnet-b0|blocks_4|depthwise_conv2d|depthwise");
  layers[62] = new MWSigmoidLayer;
  layers[62]->setName("efficientnet-b0|blocks_4|Sigmoid_1");
  layers[63] = new t_MWMultiplicationLayer_efficie;
  layers[63]->setName("efficientnet-b0|blocks_4|mul_1");
  layers[64] = new MWAvgPoolingLayer;
  layers[64]->setName("efficientnet-b0|blocks_4|se|Mean");
  layers[65] = new MWConvLayer;
  layers[65]->setName("efficientnet-b0|blocks_4|se|conv2d|BiasAdd");
  layers[66] = new MWSigmoidLayer;
  layers[66]->setName("efficientnet-b0|blocks_4|se|Sigmoid");
  layers[67] = new u_MWMultiplicationLayer_efficie;
  layers[67]->setName("efficientnet-b0|blocks_4|se|mul");
  layers[68] = new MWConvLayer;
  layers[68]->setName("efficientnet-b0|blocks_4|se|conv2d_1|BiasAdd");
  layers[69] = new MWSigmoidLayer;
  layers[69]->setName("efficientnet-b0|blocks_4|se|Sigmoid_1");
  layers[69]->setInPlaceIndex(0, 0);
  layers[70] = new v_MWMultiplicationLayer_efficie;
  layers[70]->setName("efficientnet-b0|blocks_4|se|mul_1");
  layers[71] = new MWConvLayer;
  layers[71]->setName("efficientnet-b0|blocks_4|conv2d_1|Conv2D");
  layers[72] = new MWAdditionLayer;
  layers[72]->setName("efficientnet-b0|blocks_4|Add");
  layers[73] = new MWConvLayer;
  layers[73]->setName("efficientnet-b0|blocks_5|conv2d|Conv2D_fused");
  layers[74] = new MWSplittingLayer;
  layers[74]->setName("ChannelWiseSplittingLayer");
  layers[74]->setInPlaceIndex(0, 0);
  layers[74]->setInPlaceIndex(1, 0);
  layers[75] = new MWSigmoidLayer;
  layers[75]->setName("efficientnet-b0|blocks_5|Sigmoid");
  layers[76] = new w_MWMultiplicationLayer_efficie;
  layers[76]->setName("efficientnet-b0|blocks_5|mul");
  layers[77] = new MWConvLayer;
  layers[77]->setName("efficientnet-b0|blocks_5|depthwise_conv2d|depthwise");
  layers[78] = new MWSigmoidLayer;
  layers[78]->setName("efficientnet-b0|blocks_5|Sigmoid_1");
  layers[79] = new x_MWMultiplicationLayer_efficie;
  layers[79]->setName("efficientnet-b0|blocks_5|mul_1");
  layers[80] = new MWAvgPoolingLayer;
  layers[80]->setName("efficientnet-b0|blocks_5|se|Mean");
  layers[81] = new MWConvLayer;
  layers[81]->setName("efficientnet-b0|blocks_5|se|conv2d|BiasAdd");
  layers[82] = new MWSigmoidLayer;
  layers[82]->setName("efficientnet-b0|blocks_5|se|Sigmoid");
  layers[83] = new y_MWMultiplicationLayer_efficie;
  layers[83]->setName("efficientnet-b0|blocks_5|se|mul");
  layers[84] = new MWConvLayer;
  layers[84]->setName("efficientnet-b0|blocks_5|se|conv2d_1|BiasAdd");
  layers[85] = new MWSigmoidLayer;
  layers[85]->setName("efficientnet-b0|blocks_5|se|Sigmoid_1");
  layers[85]->setInPlaceIndex(0, 0);
  layers[86] = new ab_MWMultiplicationLayer_effici;
  layers[86]->setName("efficientnet-b0|blocks_5|se|mul_1");
  layers[87] = new MWConvLayer;
  layers[87]->setName("efficientnet-b0|blocks_5|conv2d_1|Conv2D");
  layers[88] = new MWConvLayer;
  layers[88]->setName("efficientnet-b0|blocks_6|conv2d|Conv2D");
  layers[89] = new MWSigmoidLayer;
  layers[89]->setName("efficientnet-b0|blocks_6|Sigmoid");
  layers[90] = new bb_MWMultiplicationLayer_effici;
  layers[90]->setName("efficientnet-b0|blocks_6|mul");
  layers[91] = new MWConvLayer;
  layers[91]->setName("efficientnet-b0|blocks_6|depthwise_conv2d|depthwise");
  layers[92] = new MWSigmoidLayer;
  layers[92]->setName("efficientnet-b0|blocks_6|Sigmoid_1");
  layers[93] = new cb_MWMultiplicationLayer_effici;
  layers[93]->setName("efficientnet-b0|blocks_6|mul_1");
  layers[94] = new MWAvgPoolingLayer;
  layers[94]->setName("efficientnet-b0|blocks_6|se|Mean");
  layers[95] = new MWConvLayer;
  layers[95]->setName("efficientnet-b0|blocks_6|se|conv2d|BiasAdd");
  layers[96] = new MWSigmoidLayer;
  layers[96]->setName("efficientnet-b0|blocks_6|se|Sigmoid");
  layers[97] = new db_MWMultiplicationLayer_effici;
  layers[97]->setName("efficientnet-b0|blocks_6|se|mul");
  layers[98] = new MWConvLayer;
  layers[98]->setName("efficientnet-b0|blocks_6|se|conv2d_1|BiasAdd");
  layers[99] = new MWSigmoidLayer;
  layers[99]->setName("efficientnet-b0|blocks_6|se|Sigmoid_1");
  layers[99]->setInPlaceIndex(0, 0);
  layers[100] = new eb_MWMultiplicationLayer_effici;
  layers[100]->setName("efficientnet-b0|blocks_6|se|mul_1");
  layers[101] = new MWConvLayer;
  layers[101]->setName("efficientnet-b0|blocks_6|conv2d_1|Conv2D");
  layers[102] = new MWAdditionLayer;
  layers[102]->setName("efficientnet-b0|blocks_6|Add");
  layers[103] = new MWConvLayer;
  layers[103]->setName("efficientnet-b0|blocks_7|conv2d|Conv2D");
  layers[104] = new MWSigmoidLayer;
  layers[104]->setName("efficientnet-b0|blocks_7|Sigmoid");
  layers[105] = new fb_MWMultiplicationLayer_effici;
  layers[105]->setName("efficientnet-b0|blocks_7|mul");
  layers[106] = new MWConvLayer;
  layers[106]->setName("efficientnet-b0|blocks_7|depthwise_conv2d|depthwise");
  layers[107] = new MWSigmoidLayer;
  layers[107]->setName("efficientnet-b0|blocks_7|Sigmoid_1");
  layers[108] = new gb_MWMultiplicationLayer_effici;
  layers[108]->setName("efficientnet-b0|blocks_7|mul_1");
  layers[109] = new MWAvgPoolingLayer;
  layers[109]->setName("efficientnet-b0|blocks_7|se|Mean");
  layers[110] = new MWConvLayer;
  layers[110]->setName("efficientnet-b0|blocks_7|se|conv2d|BiasAdd");
  layers[111] = new MWSigmoidLayer;
  layers[111]->setName("efficientnet-b0|blocks_7|se|Sigmoid");
  layers[112] = new hb_MWMultiplicationLayer_effici;
  layers[112]->setName("efficientnet-b0|blocks_7|se|mul");
  layers[113] = new MWConvLayer;
  layers[113]->setName("efficientnet-b0|blocks_7|se|conv2d_1|BiasAdd");
  layers[114] = new MWSigmoidLayer;
  layers[114]->setName("efficientnet-b0|blocks_7|se|Sigmoid_1");
  layers[114]->setInPlaceIndex(0, 0);
  layers[115] = new ib_MWMultiplicationLayer_effici;
  layers[115]->setName("efficientnet-b0|blocks_7|se|mul_1");
  layers[116] = new MWConvLayer;
  layers[116]->setName("efficientnet-b0|blocks_7|conv2d_1|Conv2D");
  layers[117] = new MWAdditionLayer;
  layers[117]->setName("efficientnet-b0|blocks_7|Add");
  layers[118] = new MWConvLayer;
  layers[118]->setName("efficientnet-b0|blocks_8|conv2d|Conv2D");
  layers[119] = new MWSigmoidLayer;
  layers[119]->setName("efficientnet-b0|blocks_8|Sigmoid");
  layers[120] = new jb_MWMultiplicationLayer_effici;
  layers[120]->setName("efficientnet-b0|blocks_8|mul");
  layers[121] = new MWConvLayer;
  layers[121]->setName("efficientnet-b0|blocks_8|depthwise_conv2d|depthwise");
  layers[122] = new MWSigmoidLayer;
  layers[122]->setName("efficientnet-b0|blocks_8|Sigmoid_1");
  layers[123] = new kb_MWMultiplicationLayer_effici;
  layers[123]->setName("efficientnet-b0|blocks_8|mul_1");
  layers[124] = new MWAvgPoolingLayer;
  layers[124]->setName("efficientnet-b0|blocks_8|se|Mean");
  layers[125] = new MWConvLayer;
  layers[125]->setName("efficientnet-b0|blocks_8|se|conv2d|BiasAdd");
  layers[126] = new MWSigmoidLayer;
  layers[126]->setName("efficientnet-b0|blocks_8|se|Sigmoid");
  layers[127] = new lb_MWMultiplicationLayer_effici;
  layers[127]->setName("efficientnet-b0|blocks_8|se|mul");
  layers[128] = new MWConvLayer;
  layers[128]->setName("efficientnet-b0|blocks_8|se|conv2d_1|BiasAdd");
  layers[129] = new MWSigmoidLayer;
  layers[129]->setName("efficientnet-b0|blocks_8|se|Sigmoid_1");
  layers[129]->setInPlaceIndex(0, 0);
  layers[130] = new mb_MWMultiplicationLayer_effici;
  layers[130]->setName("efficientnet-b0|blocks_8|se|mul_1");
  layers[131] = new MWConvLayer;
  layers[131]->setName("efficientnet-b0|blocks_8|conv2d_1|Conv2D");
  layers[132] = new MWConvLayer;
  layers[132]->setName("efficientnet-b0|blocks_9|conv2d|Conv2D");
  layers[133] = new MWSigmoidLayer;
  layers[133]->setName("efficientnet-b0|blocks_9|Sigmoid");
  layers[134] = new nb_MWMultiplicationLayer_effici;
  layers[134]->setName("efficientnet-b0|blocks_9|mul");
  layers[135] = new MWConvLayer;
  layers[135]->setName("efficientnet-b0|blocks_9|depthwise_conv2d|depthwise");
  layers[136] = new MWSigmoidLayer;
  layers[136]->setName("efficientnet-b0|blocks_9|Sigmoid_1");
  layers[137] = new ob_MWMultiplicationLayer_effici;
  layers[137]->setName("efficientnet-b0|blocks_9|mul_1");
  layers[138] = new MWAvgPoolingLayer;
  layers[138]->setName("efficientnet-b0|blocks_9|se|Mean");
  layers[139] = new MWConvLayer;
  layers[139]->setName("efficientnet-b0|blocks_9|se|conv2d|BiasAdd");
  layers[140] = new MWSigmoidLayer;
  layers[140]->setName("efficientnet-b0|blocks_9|se|Sigmoid");
  layers[141] = new pb_MWMultiplicationLayer_effici;
  layers[141]->setName("efficientnet-b0|blocks_9|se|mul");
  layers[142] = new MWConvLayer;
  layers[142]->setName("efficientnet-b0|blocks_9|se|conv2d_1|BiasAdd");
  layers[143] = new MWSigmoidLayer;
  layers[143]->setName("efficientnet-b0|blocks_9|se|Sigmoid_1");
  layers[143]->setInPlaceIndex(0, 0);
  layers[144] = new qb_MWMultiplicationLayer_effici;
  layers[144]->setName("efficientnet-b0|blocks_9|se|mul_1");
  layers[145] = new MWConvLayer;
  layers[145]->setName("efficientnet-b0|blocks_9|conv2d_1|Conv2D");
  layers[146] = new MWAdditionLayer;
  layers[146]->setName("efficientnet-b0|blocks_9|Add");
  layers[147] = new MWConvLayer;
  layers[147]->setName("efficientnet-b0|blocks_10|conv2d|Conv2D");
  layers[148] = new MWSigmoidLayer;
  layers[148]->setName("efficientnet-b0|blocks_10|Sigmoid");
  layers[149] = new rb_MWMultiplicationLayer_effici;
  layers[149]->setName("efficientnet-b0|blocks_10|mul");
  layers[150] = new MWConvLayer;
  layers[150]->setName("efficientnet-b0|blocks_10|depthwise_conv2d|depthwise");
  layers[151] = new MWSigmoidLayer;
  layers[151]->setName("efficientnet-b0|blocks_10|Sigmoid_1");
  layers[152] = new sb_MWMultiplicationLayer_effici;
  layers[152]->setName("efficientnet-b0|blocks_10|mul_1");
  layers[153] = new MWAvgPoolingLayer;
  layers[153]->setName("efficientnet-b0|blocks_10|se|Mean");
  layers[154] = new MWConvLayer;
  layers[154]->setName("efficientnet-b0|blocks_10|se|conv2d|BiasAdd");
  layers[155] = new MWSigmoidLayer;
  layers[155]->setName("efficientnet-b0|blocks_10|se|Sigmoid");
  layers[156] = new tb_MWMultiplicationLayer_effici;
  layers[156]->setName("efficientnet-b0|blocks_10|se|mul");
  layers[157] = new MWConvLayer;
  layers[157]->setName("efficientnet-b0|blocks_10|se|conv2d_1|BiasAdd");
  layers[158] = new MWSigmoidLayer;
  layers[158]->setName("efficientnet-b0|blocks_10|se|Sigmoid_1");
  layers[158]->setInPlaceIndex(0, 0);
  layers[159] = new ub_MWMultiplicationLayer_effici;
  layers[159]->setName("efficientnet-b0|blocks_10|se|mul_1");
  layers[160] = new MWConvLayer;
  layers[160]->setName("efficientnet-b0|blocks_10|conv2d_1|Conv2D");
  layers[161] = new MWAdditionLayer;
  layers[161]->setName("efficientnet-b0|blocks_10|Add");
  layers[162] = new MWConvLayer;
  layers[162]->setName("efficientnet-b0|blocks_11|conv2d|Conv2D_fused");
  layers[163] = new MWSplittingLayer;
  layers[163]->setName("ChannelWiseSplittingLayer");
  layers[163]->setInPlaceIndex(0, 0);
  layers[163]->setInPlaceIndex(1, 0);
  layers[163]->setInPlaceIndex(2, 0);
  layers[164] = new MWSigmoidLayer;
  layers[164]->setName("efficientnet-b0|blocks_11|Sigmoid");
  layers[165] = new vb_MWMultiplicationLayer_effici;
  layers[165]->setName("efficientnet-b0|blocks_11|mul");
  layers[166] = new MWConvLayer;
  layers[166]->setName("efficientnet-b0|blocks_11|depthwise_conv2d|depthwise");
  layers[167] = new MWSigmoidLayer;
  layers[167]->setName("efficientnet-b0|blocks_11|Sigmoid_1");
  layers[168] = new wb_MWMultiplicationLayer_effici;
  layers[168]->setName("efficientnet-b0|blocks_11|mul_1");
  layers[169] = new MWAvgPoolingLayer;
  layers[169]->setName("efficientnet-b0|blocks_11|se|Mean");
  layers[170] = new MWConvLayer;
  layers[170]->setName("efficientnet-b0|blocks_11|se|conv2d|BiasAdd");
  layers[171] = new MWSigmoidLayer;
  layers[171]->setName("efficientnet-b0|blocks_11|se|Sigmoid");
  layers[172] = new xb_MWMultiplicationLayer_effici;
  layers[172]->setName("efficientnet-b0|blocks_11|se|mul");
  layers[173] = new MWConvLayer;
  layers[173]->setName("efficientnet-b0|blocks_11|se|conv2d_1|BiasAdd");
  layers[174] = new MWSigmoidLayer;
  layers[174]->setName("efficientnet-b0|blocks_11|se|Sigmoid_1");
  layers[174]->setInPlaceIndex(0, 0);
  layers[175] = new yb_MWMultiplicationLayer_effici;
  layers[175]->setName("efficientnet-b0|blocks_11|se|mul_1");
  layers[176] = new MWConvLayer;
  layers[176]->setName("efficientnet-b0|blocks_11|conv2d_1|Conv2D");
  layers[177] = new MWConvLayer;
  layers[177]->setName("efficientnet-b0|blocks_12|conv2d|Conv2D");
  layers[178] = new MWSigmoidLayer;
  layers[178]->setName("efficientnet-b0|blocks_12|Sigmoid");
  layers[179] = new ac_MWMultiplicationLayer_effici;
  layers[179]->setName("efficientnet-b0|blocks_12|mul");
  layers[180] = new MWConvLayer;
  layers[180]->setName("efficientnet-b0|blocks_12|depthwise_conv2d|depthwise");
  layers[181] = new MWSigmoidLayer;
  layers[181]->setName("efficientnet-b0|blocks_12|Sigmoid_1");
  layers[182] = new bc_MWMultiplicationLayer_effici;
  layers[182]->setName("efficientnet-b0|blocks_12|mul_1");
  layers[183] = new MWAvgPoolingLayer;
  layers[183]->setName("efficientnet-b0|blocks_12|se|Mean");
  layers[184] = new MWConvLayer;
  layers[184]->setName("efficientnet-b0|blocks_12|se|conv2d|BiasAdd");
  layers[185] = new MWSigmoidLayer;
  layers[185]->setName("efficientnet-b0|blocks_12|se|Sigmoid");
  layers[186] = new cc_MWMultiplicationLayer_effici;
  layers[186]->setName("efficientnet-b0|blocks_12|se|mul");
  layers[187] = new MWConvLayer;
  layers[187]->setName("efficientnet-b0|blocks_12|se|conv2d_1|BiasAdd");
  layers[188] = new MWSigmoidLayer;
  layers[188]->setName("efficientnet-b0|blocks_12|se|Sigmoid_1");
  layers[188]->setInPlaceIndex(0, 0);
  layers[189] = new dc_MWMultiplicationLayer_effici;
  layers[189]->setName("efficientnet-b0|blocks_12|se|mul_1");
  layers[190] = new MWConvLayer;
  layers[190]->setName("efficientnet-b0|blocks_12|conv2d_1|Conv2D");
  layers[191] = new MWAdditionLayer;
  layers[191]->setName("efficientnet-b0|blocks_12|Add");
  layers[192] = new MWConvLayer;
  layers[192]->setName("efficientnet-b0|blocks_13|conv2d|Conv2D");
  layers[193] = new MWSigmoidLayer;
  layers[193]->setName("efficientnet-b0|blocks_13|Sigmoid");
  layers[194] = new ec_MWMultiplicationLayer_effici;
  layers[194]->setName("efficientnet-b0|blocks_13|mul");
  layers[195] = new MWConvLayer;
  layers[195]->setName("efficientnet-b0|blocks_13|depthwise_conv2d|depthwise");
  layers[196] = new MWSigmoidLayer;
  layers[196]->setName("efficientnet-b0|blocks_13|Sigmoid_1");
  layers[197] = new fc_MWMultiplicationLayer_effici;
  layers[197]->setName("efficientnet-b0|blocks_13|mul_1");
  layers[198] = new MWAvgPoolingLayer;
  layers[198]->setName("efficientnet-b0|blocks_13|se|Mean");
  layers[199] = new MWConvLayer;
  layers[199]->setName("efficientnet-b0|blocks_13|se|conv2d|BiasAdd");
  layers[200] = new MWSigmoidLayer;
  layers[200]->setName("efficientnet-b0|blocks_13|se|Sigmoid");
  layers[201] = new gc_MWMultiplicationLayer_effici;
  layers[201]->setName("efficientnet-b0|blocks_13|se|mul");
  layers[202] = new MWConvLayer;
  layers[202]->setName("efficientnet-b0|blocks_13|se|conv2d_1|BiasAdd");
  layers[203] = new MWSigmoidLayer;
  layers[203]->setName("efficientnet-b0|blocks_13|se|Sigmoid_1");
  layers[203]->setInPlaceIndex(0, 0);
  layers[204] = new hc_MWMultiplicationLayer_effici;
  layers[204]->setName("efficientnet-b0|blocks_13|se|mul_1");
  layers[205] = new MWConvLayer;
  layers[205]->setName("efficientnet-b0|blocks_13|conv2d_1|Conv2D");
  layers[206] = new MWAdditionLayer;
  layers[206]->setName("efficientnet-b0|blocks_13|Add");
  layers[207] = new MWConvLayer;
  layers[207]->setName("efficientnet-b0|blocks_14|conv2d|Conv2D");
  layers[208] = new MWSigmoidLayer;
  layers[208]->setName("efficientnet-b0|blocks_14|Sigmoid");
  layers[209] = new ic_MWMultiplicationLayer_effici;
  layers[209]->setName("efficientnet-b0|blocks_14|mul");
  layers[210] = new MWConvLayer;
  layers[210]->setName("efficientnet-b0|blocks_14|depthwise_conv2d|depthwise");
  layers[211] = new MWSigmoidLayer;
  layers[211]->setName("efficientnet-b0|blocks_14|Sigmoid_1");
  layers[212] = new jc_MWMultiplicationLayer_effici;
  layers[212]->setName("efficientnet-b0|blocks_14|mul_1");
  layers[213] = new MWAvgPoolingLayer;
  layers[213]->setName("efficientnet-b0|blocks_14|se|Mean");
  layers[214] = new MWConvLayer;
  layers[214]->setName("efficientnet-b0|blocks_14|se|conv2d|BiasAdd");
  layers[215] = new MWSigmoidLayer;
  layers[215]->setName("efficientnet-b0|blocks_14|se|Sigmoid");
  layers[216] = new kc_MWMultiplicationLayer_effici;
  layers[216]->setName("efficientnet-b0|blocks_14|se|mul");
  layers[217] = new MWConvLayer;
  layers[217]->setName("efficientnet-b0|blocks_14|se|conv2d_1|BiasAdd");
  layers[218] = new MWSigmoidLayer;
  layers[218]->setName("efficientnet-b0|blocks_14|se|Sigmoid_1");
  layers[218]->setInPlaceIndex(0, 0);
  layers[219] = new lc_MWMultiplicationLayer_effici;
  layers[219]->setName("efficientnet-b0|blocks_14|se|mul_1");
  layers[220] = new MWConvLayer;
  layers[220]->setName("efficientnet-b0|blocks_14|conv2d_1|Conv2D");
  layers[221] = new MWAdditionLayer;
  layers[221]->setName("efficientnet-b0|blocks_14|Add");
  layers[222] = new MWConvLayer;
  layers[222]->setName("efficientnet-b0|blocks_15|conv2d|Conv2D");
  layers[223] = new MWSigmoidLayer;
  layers[223]->setName("efficientnet-b0|blocks_15|Sigmoid");
  layers[224] = new mc_MWMultiplicationLayer_effici;
  layers[224]->setName("efficientnet-b0|blocks_15|mul");
  layers[225] = new MWConvLayer;
  layers[225]->setName("efficientnet-b0|blocks_15|depthwise_conv2d|depthwise");
  layers[226] = new MWSigmoidLayer;
  layers[226]->setName("efficientnet-b0|blocks_15|Sigmoid_1");
  layers[227] = new nc_MWMultiplicationLayer_effici;
  layers[227]->setName("efficientnet-b0|blocks_15|mul_1");
  layers[228] = new MWAvgPoolingLayer;
  layers[228]->setName("efficientnet-b0|blocks_15|se|Mean");
  layers[229] = new MWConvLayer;
  layers[229]->setName("efficientnet-b0|blocks_15|se|conv2d|BiasAdd");
  layers[230] = new MWSigmoidLayer;
  layers[230]->setName("efficientnet-b0|blocks_15|se|Sigmoid");
  layers[231] = new oc_MWMultiplicationLayer_effici;
  layers[231]->setName("efficientnet-b0|blocks_15|se|mul");
  layers[232] = new MWConvLayer;
  layers[232]->setName("efficientnet-b0|blocks_15|se|conv2d_1|BiasAdd");
  layers[233] = new MWSigmoidLayer;
  layers[233]->setName("efficientnet-b0|blocks_15|se|Sigmoid_1");
  layers[233]->setInPlaceIndex(0, 0);
  layers[234] = new pc_MWMultiplicationLayer_effici;
  layers[234]->setName("efficientnet-b0|blocks_15|se|mul_1");
  layers[235] = new MWConvLayer;
  layers[235]->setName("efficientnet-b0|blocks_15|conv2d_1|Conv2D");
  layers[236] = new MWConvLayer;
  layers[236]->setName("fpn_cells|cell_0|fnode1|resample_0_2_6|conv2d|BiasAdd_fused");
  layers[237] = new MWSplittingLayer;
  layers[237]->setName("ChannelWiseSplittingLayer");
  layers[237]->setInPlaceIndex(0, 0);
  layers[237]->setInPlaceIndex(1, 0);
  layers[237]->setInPlaceIndex(2, 0);
  layers[238] = new MWMaxPoolingLayer;
  layers[238]->setName("resample_p6|max_pooling2d|MaxPool");
  layers[239] = new MWMaxPoolingLayer;
  layers[239]->setName("resample_p7|max_pooling2d_1|MaxPool");
  layers[240] = new MWElementwiseAffineLayer;
  layers[240]->setName("fpn_cells|cell_0|fnode6|truediv");
  layers[241] = new MWElementwiseAffineLayer;
  layers[241]->setName("fpn_cells|cell_0|fnode0|truediv");
  layers[242] = new c_MWResize2DLayer_efficientDetD;
  layers[242]->setName("Resize__328_new");
  layers[243] = new MWElementwiseAffineLayer;
  layers[243]->setName("fpn_cells|cell_0|fnode0|truediv_1");
  layers[243]->setInPlaceIndex(0, 0);
  layers[244] = new MWAdditionLayer;
  layers[244]->setName("fpn_cells|cell_0|fnode0|add_n_1|add");
  layers[245] = new MWSigmoidLayer;
  layers[245]->setName("fpn_cells|cell_0|fnode0|op_after_combine5|Sigmoid");
  layers[246] = new qc_MWMultiplicationLayer_effici;
  layers[246]->setName("fpn_cells|cell_0|fnode0|op_after_combine5|mul");
  layers[247] = new MWConvLayer;
  layers[247]->setName("fpn_cells|cell_0|fnode0|op_after_combine5|conv|separable_conv2d|depthwise");
  layers[248] = new MWConvLayer;
  layers[248]->setName("fpn_cells|cell_0|fnode0|op_after_combine5|conv|BiasAdd");
  layers[249] = new MWElementwiseAffineLayer;
  layers[249]->setName("fpn_cells|cell_0|fnode5|truediv");
  layers[249]->setInPlaceIndex(0, 0);
  layers[250] = new MWElementwiseAffineLayer;
  layers[250]->setName("fpn_cells|cell_0|fnode1|truediv");
  layers[250]->setInPlaceIndex(0, 0);
  layers[251] = new d_MWResize2DLayer_efficientDetD;
  layers[251]->setName("Resize__344_new");
  layers[252] = new MWElementwiseAffineLayer;
  layers[252]->setName("fpn_cells|cell_0|fnode1|truediv_1");
  layers[252]->setInPlaceIndex(0, 0);
  layers[253] = new MWAdditionLayer;
  layers[253]->setName("fpn_cells|cell_0|fnode1|add_n_1|add");
  layers[254] = new MWSigmoidLayer;
  layers[254]->setName("fpn_cells|cell_0|fnode1|op_after_combine6|Sigmoid");
  layers[255] = new rc_MWMultiplicationLayer_effici;
  layers[255]->setName("fpn_cells|cell_0|fnode1|op_after_combine6|mul");
  layers[256] = new MWConvLayer;
  layers[256]->setName("fpn_cells|cell_0|fnode1|op_after_combine6|conv|separable_conv2d|depthwise");
  layers[257] = new MWConvLayer;
  layers[257]->setName("fpn_cells|cell_0|fnode1|op_after_combine6|conv|BiasAdd");
  layers[258] = new MWElementwiseAffineLayer;
  layers[258]->setName("fpn_cells|cell_0|fnode4|truediv");
  layers[258]->setInPlaceIndex(0, 0);
  layers[259] = new MWElementwiseAffineLayer;
  layers[259]->setName("fpn_cells|cell_0|fnode2|truediv");
  layers[259]->setInPlaceIndex(0, 0);
  layers[260] = new e_MWResize2DLayer_efficientDetD;
  layers[260]->setName("Resize__368_new");
  layers[261] = new MWElementwiseAffineLayer;
  layers[261]->setName("fpn_cells|cell_0|fnode2|truediv_1");
  layers[261]->setInPlaceIndex(0, 0);
  layers[262] = new MWAdditionLayer;
  layers[262]->setName("fpn_cells|cell_0|fnode2|add_n_1|add");
  layers[263] = new MWSigmoidLayer;
  layers[263]->setName("fpn_cells|cell_0|fnode2|op_after_combine7|Sigmoid");
  layers[264] = new sc_MWMultiplicationLayer_effici;
  layers[264]->setName("fpn_cells|cell_0|fnode2|op_after_combine7|mul");
  layers[265] = new MWConvLayer;
  layers[265]->setName("fpn_cells|cell_0|fnode2|op_after_combine7|conv|separable_conv2d|depthwise");
  layers[266] = new MWConvLayer;
  layers[266]->setName("fpn_cells|cell_0|fnode2|op_after_combine7|conv|BiasAdd");
  layers[267] = new MWElementwiseAffineLayer;
  layers[267]->setName("fpn_cells|cell_0|fnode3|truediv");
  layers[267]->setInPlaceIndex(0, 0);
  layers[268] = new f_MWResize2DLayer_efficientDetD;
  layers[268]->setName("Resize__384_new");
  layers[269] = new MWElementwiseAffineLayer;
  layers[269]->setName("fpn_cells|cell_0|fnode3|truediv_1");
  layers[269]->setInPlaceIndex(0, 0);
  layers[270] = new MWAdditionLayer;
  layers[270]->setName("fpn_cells|cell_0|fnode3|add_n_1|add");
  layers[271] = new MWSigmoidLayer;
  layers[271]->setName("fpn_cells|cell_0|fnode3|op_after_combine8|Sigmoid");
  layers[272] = new tc_MWMultiplicationLayer_effici;
  layers[272]->setName("fpn_cells|cell_0|fnode3|op_after_combine8|mul");
  layers[273] = new MWConvLayer;
  layers[273]->setName("fpn_cells|cell_0|fnode3|op_after_combine8|conv|separable_conv2d|depthwise");
  layers[274] = new MWConvLayer;
  layers[274]->setName("fpn_cells|cell_0|fnode3|op_after_combine8|conv|BiasAdd");
  layers[275] = new MWElementwiseAffineLayer;
  layers[275]->setName("fpn_cells|cell_0|fnode4|truediv_1");
  layers[276] = new MWAdditionLayer;
  layers[276]->setName("fpn_cells|cell_0|fnode4|add_n_1|add");
  layers[277] = new MWMaxPoolingLayer;
  layers[277]->setName("fpn_cells|cell_0|fnode4|resample_2_8_9|max_pooling2d_2|MaxPool");
  layers[278] = new MWElementwiseAffineLayer;
  layers[278]->setName("fpn_cells|cell_0|fnode4|truediv_2");
  layers[278]->setInPlaceIndex(0, 0);
  layers[279] = new MWAdditionLayer;
  layers[279]->setName("fpn_cells|cell_0|fnode4|add_n_1|add_1");
  layers[280] = new MWSigmoidLayer;
  layers[280]->setName("fpn_cells|cell_0|fnode4|op_after_combine9|Sigmoid");
  layers[281] = new uc_MWMultiplicationLayer_effici;
  layers[281]->setName("fpn_cells|cell_0|fnode4|op_after_combine9|mul");
  layers[282] = new MWConvLayer;
  layers[282]->setName("fpn_cells|cell_0|fnode4|op_after_combine9|conv|separable_conv2d|depthwise");
  layers[283] = new MWConvLayer;
  layers[283]->setName("fpn_cells|cell_0|fnode4|op_after_combine9|conv|BiasAdd");
  layers[284] = new MWElementwiseAffineLayer;
  layers[284]->setName("fpn_cells|cell_0|fnode5|truediv_1");
  layers[285] = new MWAdditionLayer;
  layers[285]->setName("fpn_cells|cell_0|fnode5|add_n_1|add");
  layers[286] = new MWMaxPoolingLayer;
  layers[286]->setName("fpn_cells|cell_0|fnode5|resample_2_9_10|max_pooling2d_3|MaxPool");
  layers[287] = new MWElementwiseAffineLayer;
  layers[287]->setName("fpn_cells|cell_0|fnode5|truediv_2");
  layers[287]->setInPlaceIndex(0, 0);
  layers[288] = new MWAdditionLayer;
  layers[288]->setName("fpn_cells|cell_0|fnode5|add_n_1|add_1");
  layers[289] = new MWSigmoidLayer;
  layers[289]->setName("fpn_cells|cell_0|fnode5|op_after_combine10|Sigmoid");
  layers[290] = new vc_MWMultiplicationLayer_effici;
  layers[290]->setName("fpn_cells|cell_0|fnode5|op_after_combine10|mul");
  layers[291] = new MWConvLayer;
  layers[291]->setName("fpn_cells|cell_0|fnode5|op_after_combine10|conv|separable_conv2d|depthwise");
  layers[292] = new MWConvLayer;
  layers[292]->setName("fpn_cells|cell_0|fnode5|op_after_combine10|conv|BiasAdd");
  layers[293] = new MWElementwiseAffineLayer;
  layers[293]->setName("fpn_cells|cell_0|fnode6|truediv_1");
  layers[294] = new MWAdditionLayer;
  layers[294]->setName("fpn_cells|cell_0|fnode6|add_n_1|add");
  layers[295] = new MWMaxPoolingLayer;
  layers[295]->setName("fpn_cells|cell_0|fnode6|resample_2_10_11|max_pooling2d_4|MaxPool");
  layers[296] = new MWElementwiseAffineLayer;
  layers[296]->setName("fpn_cells|cell_0|fnode6|truediv_2");
  layers[296]->setInPlaceIndex(0, 0);
  layers[297] = new MWAdditionLayer;
  layers[297]->setName("fpn_cells|cell_0|fnode6|add_n_1|add_1");
  layers[298] = new MWSigmoidLayer;
  layers[298]->setName("fpn_cells|cell_0|fnode6|op_after_combine11|Sigmoid");
  layers[299] = new wc_MWMultiplicationLayer_effici;
  layers[299]->setName("fpn_cells|cell_0|fnode6|op_after_combine11|mul");
  layers[300] = new MWConvLayer;
  layers[300]->setName("fpn_cells|cell_0|fnode6|op_after_combine11|conv|separable_conv2d|depthwise");
  layers[301] = new MWConvLayer;
  layers[301]->setName("fpn_cells|cell_0|fnode6|op_after_combine11|conv|BiasAdd");
  layers[302] = new MWElementwiseAffineLayer;
  layers[302]->setName("fpn_cells|cell_0|fnode7|truediv");
  layers[303] = new MWMaxPoolingLayer;
  layers[303]->setName("fpn_cells|cell_0|fnode7|resample_1_11_12|max_pooling2d_5|MaxPool");
  layers[304] = new MWElementwiseAffineLayer;
  layers[304]->setName("fpn_cells|cell_0|fnode7|truediv_1");
  layers[304]->setInPlaceIndex(0, 0);
  layers[305] = new MWAdditionLayer;
  layers[305]->setName("fpn_cells|cell_0|fnode7|add_n_1|add");
  layers[306] = new MWSigmoidLayer;
  layers[306]->setName("fpn_cells|cell_0|fnode7|op_after_combine12|Sigmoid");
  layers[307] = new xc_MWMultiplicationLayer_effici;
  layers[307]->setName("fpn_cells|cell_0|fnode7|op_after_combine12|mul");
  layers[308] = new MWConvLayer;
  layers[308]->setName("fpn_cells|cell_0|fnode7|op_after_combine12|conv|separable_conv2d|depthwise");
  layers[309] = new MWConvLayer;
  layers[309]->setName("fpn_cells|cell_0|fnode7|op_after_combine12|conv|BiasAdd");
  layers[310] = new MWElementwiseAffineLayer;
  layers[310]->setName("fpn_cells|cell_1|fnode6|truediv");
  layers[311] = new MWElementwiseAffineLayer;
  layers[311]->setName("fpn_cells|cell_1|fnode0|truediv");
  layers[312] = new g_MWResize2DLayer_efficientDetD;
  layers[312]->setName("Resize__432_new");
  layers[313] = new MWElementwiseAffineLayer;
  layers[313]->setName("fpn_cells|cell_1|fnode0|truediv_1");
  layers[313]->setInPlaceIndex(0, 0);
  layers[314] = new MWAdditionLayer;
  layers[314]->setName("fpn_cells|cell_1|fnode0|add_n_1|add");
  layers[315] = new MWSigmoidLayer;
  layers[315]->setName("fpn_cells|cell_1|fnode0|op_after_combine5|Sigmoid");
  layers[316] = new yc_MWMultiplicationLayer_effici;
  layers[316]->setName("fpn_cells|cell_1|fnode0|op_after_combine5|mul");
  layers[317] = new MWConvLayer;
  layers[317]->setName("fpn_cells|cell_1|fnode0|op_after_combine5|conv|separable_conv2d|depthwise");
  layers[318] = new MWConvLayer;
  layers[318]->setName("fpn_cells|cell_1|fnode0|op_after_combine5|conv|BiasAdd");
  layers[319] = new MWElementwiseAffineLayer;
  layers[319]->setName("fpn_cells|cell_1|fnode5|truediv");
  layers[320] = new MWElementwiseAffineLayer;
  layers[320]->setName("fpn_cells|cell_1|fnode1|truediv");
  layers[321] = new h_MWResize2DLayer_efficientDetD;
  layers[321]->setName("Resize__448_new");
  layers[322] = new MWElementwiseAffineLayer;
  layers[322]->setName("fpn_cells|cell_1|fnode1|truediv_1");
  layers[322]->setInPlaceIndex(0, 0);
  layers[323] = new MWAdditionLayer;
  layers[323]->setName("fpn_cells|cell_1|fnode1|add_n_1|add");
  layers[324] = new MWSigmoidLayer;
  layers[324]->setName("fpn_cells|cell_1|fnode1|op_after_combine6|Sigmoid");
  layers[325] = new ad_MWMultiplicationLayer_effici;
  layers[325]->setName("fpn_cells|cell_1|fnode1|op_after_combine6|mul");
  layers[326] = new MWConvLayer;
  layers[326]->setName("fpn_cells|cell_1|fnode1|op_after_combine6|conv|separable_conv2d|depthwise");
  layers[327] = new MWConvLayer;
  layers[327]->setName("fpn_cells|cell_1|fnode1|op_after_combine6|conv|BiasAdd");
  layers[328] = new MWElementwiseAffineLayer;
  layers[328]->setName("fpn_cells|cell_1|fnode4|truediv");
  layers[329] = new MWElementwiseAffineLayer;
  layers[329]->setName("fpn_cells|cell_1|fnode2|truediv");
  layers[330] = new i_MWResize2DLayer_efficientDetD;
  layers[330]->setName("Resize__464_new");
  layers[331] = new MWElementwiseAffineLayer;
  layers[331]->setName("fpn_cells|cell_1|fnode2|truediv_1");
  layers[331]->setInPlaceIndex(0, 0);
  layers[332] = new MWAdditionLayer;
  layers[332]->setName("fpn_cells|cell_1|fnode2|add_n_1|add");
  layers[333] = new MWSigmoidLayer;
  layers[333]->setName("fpn_cells|cell_1|fnode2|op_after_combine7|Sigmoid");
  layers[334] = new bd_MWMultiplicationLayer_effici;
  layers[334]->setName("fpn_cells|cell_1|fnode2|op_after_combine7|mul");
  layers[335] = new MWConvLayer;
  layers[335]->setName("fpn_cells|cell_1|fnode2|op_after_combine7|conv|separable_conv2d|depthwise");
  layers[336] = new MWConvLayer;
  layers[336]->setName("fpn_cells|cell_1|fnode2|op_after_combine7|conv|BiasAdd");
  layers[337] = new MWElementwiseAffineLayer;
  layers[337]->setName("fpn_cells|cell_1|fnode3|truediv");
  layers[338] = new j_MWResize2DLayer_efficientDetD;
  layers[338]->setName("Resize__480_new");
  layers[339] = new MWElementwiseAffineLayer;
  layers[339]->setName("fpn_cells|cell_1|fnode3|truediv_1");
  layers[339]->setInPlaceIndex(0, 0);
  layers[340] = new MWAdditionLayer;
  layers[340]->setName("fpn_cells|cell_1|fnode3|add_n_1|add");
  layers[341] = new MWSigmoidLayer;
  layers[341]->setName("fpn_cells|cell_1|fnode3|op_after_combine8|Sigmoid");
  layers[342] = new cd_MWMultiplicationLayer_effici;
  layers[342]->setName("fpn_cells|cell_1|fnode3|op_after_combine8|mul");
  layers[343] = new MWConvLayer;
  layers[343]->setName("fpn_cells|cell_1|fnode3|op_after_combine8|conv|separable_conv2d|depthwise");
  layers[344] = new MWConvLayer;
  layers[344]->setName("fpn_cells|cell_1|fnode3|op_after_combine8|conv|BiasAdd");
  layers[345] = new MWElementwiseAffineLayer;
  layers[345]->setName("fpn_cells|cell_1|fnode4|truediv_1");
  layers[346] = new MWAdditionLayer;
  layers[346]->setName("fpn_cells|cell_1|fnode4|add_n_1|add");
  layers[347] = new MWMaxPoolingLayer;
  layers[347]->setName("fpn_cells|cell_1|fnode4|resample_2_8_9|max_pooling2d_6|MaxPool");
  layers[348] = new MWElementwiseAffineLayer;
  layers[348]->setName("fpn_cells|cell_1|fnode4|truediv_2");
  layers[348]->setInPlaceIndex(0, 0);
  layers[349] = new MWAdditionLayer;
  layers[349]->setName("fpn_cells|cell_1|fnode4|add_n_1|add_1");
  layers[350] = new MWSigmoidLayer;
  layers[350]->setName("fpn_cells|cell_1|fnode4|op_after_combine9|Sigmoid");
  layers[351] = new dd_MWMultiplicationLayer_effici;
  layers[351]->setName("fpn_cells|cell_1|fnode4|op_after_combine9|mul");
  layers[352] = new MWConvLayer;
  layers[352]->setName("fpn_cells|cell_1|fnode4|op_after_combine9|conv|separable_conv2d|depthwise");
  layers[353] = new MWConvLayer;
  layers[353]->setName("fpn_cells|cell_1|fnode4|op_after_combine9|conv|BiasAdd");
  layers[354] = new MWElementwiseAffineLayer;
  layers[354]->setName("fpn_cells|cell_1|fnode5|truediv_1");
  layers[355] = new MWAdditionLayer;
  layers[355]->setName("fpn_cells|cell_1|fnode5|add_n_1|add");
  layers[356] = new MWMaxPoolingLayer;
  layers[356]->setName("fpn_cells|cell_1|fnode5|resample_2_9_10|max_pooling2d_7|MaxPool");
  layers[357] = new MWElementwiseAffineLayer;
  layers[357]->setName("fpn_cells|cell_1|fnode5|truediv_2");
  layers[357]->setInPlaceIndex(0, 0);
  layers[358] = new MWAdditionLayer;
  layers[358]->setName("fpn_cells|cell_1|fnode5|add_n_1|add_1");
  layers[359] = new MWSigmoidLayer;
  layers[359]->setName("fpn_cells|cell_1|fnode5|op_after_combine10|Sigmoid");
  layers[360] = new ed_MWMultiplicationLayer_effici;
  layers[360]->setName("fpn_cells|cell_1|fnode5|op_after_combine10|mul");
  layers[361] = new MWConvLayer;
  layers[361]->setName("fpn_cells|cell_1|fnode5|op_after_combine10|conv|separable_conv2d|depthwise");
  layers[362] = new MWConvLayer;
  layers[362]->setName("fpn_cells|cell_1|fnode5|op_after_combine10|conv|BiasAdd");
  layers[363] = new MWElementwiseAffineLayer;
  layers[363]->setName("fpn_cells|cell_1|fnode6|truediv_1");
  layers[364] = new MWAdditionLayer;
  layers[364]->setName("fpn_cells|cell_1|fnode6|add_n_1|add");
  layers[365] = new MWMaxPoolingLayer;
  layers[365]->setName("fpn_cells|cell_1|fnode6|resample_2_10_11|max_pooling2d_8|MaxPool");
  layers[366] = new MWElementwiseAffineLayer;
  layers[366]->setName("fpn_cells|cell_1|fnode6|truediv_2");
  layers[366]->setInPlaceIndex(0, 0);
  layers[367] = new MWAdditionLayer;
  layers[367]->setName("fpn_cells|cell_1|fnode6|add_n_1|add_1");
  layers[368] = new MWSigmoidLayer;
  layers[368]->setName("fpn_cells|cell_1|fnode6|op_after_combine11|Sigmoid");
  layers[369] = new fd_MWMultiplicationLayer_effici;
  layers[369]->setName("fpn_cells|cell_1|fnode6|op_after_combine11|mul");
  layers[370] = new MWConvLayer;
  layers[370]->setName("fpn_cells|cell_1|fnode6|op_after_combine11|conv|separable_conv2d|depthwise");
  layers[371] = new MWConvLayer;
  layers[371]->setName("fpn_cells|cell_1|fnode6|op_after_combine11|conv|BiasAdd");
  layers[372] = new MWElementwiseAffineLayer;
  layers[372]->setName("fpn_cells|cell_1|fnode7|truediv");
  layers[373] = new MWMaxPoolingLayer;
  layers[373]->setName("fpn_cells|cell_1|fnode7|resample_1_11_12|max_pooling2d_9|MaxPool");
  layers[374] = new MWElementwiseAffineLayer;
  layers[374]->setName("fpn_cells|cell_1|fnode7|truediv_1");
  layers[374]->setInPlaceIndex(0, 0);
  layers[375] = new MWAdditionLayer;
  layers[375]->setName("fpn_cells|cell_1|fnode7|add_n_1|add");
  layers[376] = new MWSigmoidLayer;
  layers[376]->setName("fpn_cells|cell_1|fnode7|op_after_combine12|Sigmoid");
  layers[377] = new gd_MWMultiplicationLayer_effici;
  layers[377]->setName("fpn_cells|cell_1|fnode7|op_after_combine12|mul");
  layers[378] = new MWConvLayer;
  layers[378]->setName("fpn_cells|cell_1|fnode7|op_after_combine12|conv|separable_conv2d|depthwise");
  layers[379] = new MWConvLayer;
  layers[379]->setName("fpn_cells|cell_1|fnode7|op_after_combine12|conv|BiasAdd");
  layers[380] = new MWElementwiseAffineLayer;
  layers[380]->setName("fpn_cells|cell_2|fnode6|truediv");
  layers[381] = new MWElementwiseAffineLayer;
  layers[381]->setName("fpn_cells|cell_2|fnode0|truediv");
  layers[382] = new k_MWResize2DLayer_efficientDetD;
  layers[382]->setName("Resize__528_new");
  layers[383] = new MWElementwiseAffineLayer;
  layers[383]->setName("fpn_cells|cell_2|fnode0|truediv_1");
  layers[383]->setInPlaceIndex(0, 0);
  layers[384] = new MWAdditionLayer;
  layers[384]->setName("fpn_cells|cell_2|fnode0|add_n_1|add");
  layers[385] = new MWSigmoidLayer;
  layers[385]->setName("fpn_cells|cell_2|fnode0|op_after_combine5|Sigmoid");
  layers[386] = new hd_MWMultiplicationLayer_effici;
  layers[386]->setName("fpn_cells|cell_2|fnode0|op_after_combine5|mul");
  layers[387] = new MWConvLayer;
  layers[387]->setName("fpn_cells|cell_2|fnode0|op_after_combine5|conv|separable_conv2d|depthwise");
  layers[388] = new MWConvLayer;
  layers[388]->setName("fpn_cells|cell_2|fnode0|op_after_combine5|conv|BiasAdd");
  layers[389] = new MWElementwiseAffineLayer;
  layers[389]->setName("fpn_cells|cell_2|fnode5|truediv");
  layers[390] = new MWElementwiseAffineLayer;
  layers[390]->setName("fpn_cells|cell_2|fnode1|truediv");
  layers[391] = new l_MWResize2DLayer_efficientDetD;
  layers[391]->setName("Resize__544_new");
  layers[392] = new MWElementwiseAffineLayer;
  layers[392]->setName("fpn_cells|cell_2|fnode1|truediv_1");
  layers[392]->setInPlaceIndex(0, 0);
  layers[393] = new MWAdditionLayer;
  layers[393]->setName("fpn_cells|cell_2|fnode1|add_n_1|add");
  layers[394] = new MWSigmoidLayer;
  layers[394]->setName("fpn_cells|cell_2|fnode1|op_after_combine6|Sigmoid");
  layers[395] = new id_MWMultiplicationLayer_effici;
  layers[395]->setName("fpn_cells|cell_2|fnode1|op_after_combine6|mul");
  layers[396] = new MWConvLayer;
  layers[396]->setName("fpn_cells|cell_2|fnode1|op_after_combine6|conv|separable_conv2d|depthwise");
  layers[397] = new MWConvLayer;
  layers[397]->setName("fpn_cells|cell_2|fnode1|op_after_combine6|conv|BiasAdd");
  layers[398] = new MWElementwiseAffineLayer;
  layers[398]->setName("fpn_cells|cell_2|fnode4|truediv");
  layers[399] = new MWElementwiseAffineLayer;
  layers[399]->setName("fpn_cells|cell_2|fnode2|truediv");
  layers[400] = new m_MWResize2DLayer_efficientDetD;
  layers[400]->setName("Resize__560_new");
  layers[401] = new MWElementwiseAffineLayer;
  layers[401]->setName("fpn_cells|cell_2|fnode2|truediv_1");
  layers[401]->setInPlaceIndex(0, 0);
  layers[402] = new MWAdditionLayer;
  layers[402]->setName("fpn_cells|cell_2|fnode2|add_n_1|add");
  layers[403] = new MWSigmoidLayer;
  layers[403]->setName("fpn_cells|cell_2|fnode2|op_after_combine7|Sigmoid");
  layers[404] = new jd_MWMultiplicationLayer_effici;
  layers[404]->setName("fpn_cells|cell_2|fnode2|op_after_combine7|mul");
  layers[405] = new MWConvLayer;
  layers[405]->setName("fpn_cells|cell_2|fnode2|op_after_combine7|conv|separable_conv2d|depthwise");
  layers[406] = new MWConvLayer;
  layers[406]->setName("fpn_cells|cell_2|fnode2|op_after_combine7|conv|BiasAdd");
  layers[407] = new MWElementwiseAffineLayer;
  layers[407]->setName("fpn_cells|cell_2|fnode3|truediv");
  layers[408] = new n_MWResize2DLayer_efficientDetD;
  layers[408]->setName("Resize__576_new");
  layers[409] = new MWElementwiseAffineLayer;
  layers[409]->setName("fpn_cells|cell_2|fnode3|truediv_1");
  layers[409]->setInPlaceIndex(0, 0);
  layers[410] = new MWAdditionLayer;
  layers[410]->setName("fpn_cells|cell_2|fnode3|add_n_1|add");
  layers[411] = new MWSigmoidLayer;
  layers[411]->setName("fpn_cells|cell_2|fnode3|op_after_combine8|Sigmoid");
  layers[412] = new kd_MWMultiplicationLayer_effici;
  layers[412]->setName("fpn_cells|cell_2|fnode3|op_after_combine8|mul");
  layers[413] = new MWConvLayer;
  layers[413]->setName("fpn_cells|cell_2|fnode3|op_after_combine8|conv|separable_conv2d|depthwise");
  layers[414] = new MWConvLayer;
  layers[414]->setName("fpn_cells|cell_2|fnode3|op_after_combine8|conv|BiasAdd");
  layers[415] = new MWElementwiseAffineLayer;
  layers[415]->setName("fpn_cells|cell_2|fnode4|truediv_1");
  layers[416] = new MWAdditionLayer;
  layers[416]->setName("fpn_cells|cell_2|fnode4|add_n_1|add");
  layers[417] = new MWMaxPoolingLayer;
  layers[417]->setName("fpn_cells|cell_2|fnode4|resample_2_8_9|max_pooling2d_10|MaxPool");
  layers[418] = new MWElementwiseAffineLayer;
  layers[418]->setName("fpn_cells|cell_2|fnode4|truediv_2");
  layers[418]->setInPlaceIndex(0, 0);
  layers[419] = new MWAdditionLayer;
  layers[419]->setName("fpn_cells|cell_2|fnode4|add_n_1|add_1");
  layers[420] = new MWSigmoidLayer;
  layers[420]->setName("fpn_cells|cell_2|fnode4|op_after_combine9|Sigmoid");
  layers[421] = new ld_MWMultiplicationLayer_effici;
  layers[421]->setName("fpn_cells|cell_2|fnode4|op_after_combine9|mul");
  layers[422] = new MWConvLayer;
  layers[422]->setName("fpn_cells|cell_2|fnode4|op_after_combine9|conv|separable_conv2d|depthwise");
  layers[423] = new MWConvLayer;
  layers[423]->setName("fpn_cells|cell_2|fnode4|op_after_combine9|conv|BiasAdd");
  layers[424] = new MWElementwiseAffineLayer;
  layers[424]->setName("fpn_cells|cell_2|fnode5|truediv_1");
  layers[425] = new MWAdditionLayer;
  layers[425]->setName("fpn_cells|cell_2|fnode5|add_n_1|add");
  layers[426] = new MWMaxPoolingLayer;
  layers[426]->setName("fpn_cells|cell_2|fnode5|resample_2_9_10|max_pooling2d_11|MaxPool");
  layers[427] = new MWElementwiseAffineLayer;
  layers[427]->setName("fpn_cells|cell_2|fnode5|truediv_2");
  layers[427]->setInPlaceIndex(0, 0);
  layers[428] = new MWAdditionLayer;
  layers[428]->setName("fpn_cells|cell_2|fnode5|add_n_1|add_1");
  layers[429] = new MWSigmoidLayer;
  layers[429]->setName("fpn_cells|cell_2|fnode5|op_after_combine10|Sigmoid");
  layers[430] = new md_MWMultiplicationLayer_effici;
  layers[430]->setName("fpn_cells|cell_2|fnode5|op_after_combine10|mul");
  layers[431] = new MWConvLayer;
  layers[431]->setName("fpn_cells|cell_2|fnode5|op_after_combine10|conv|separable_conv2d|depthwise");
  layers[432] = new MWConvLayer;
  layers[432]->setName("fpn_cells|cell_2|fnode5|op_after_combine10|conv|BiasAdd");
  layers[433] = new MWElementwiseAffineLayer;
  layers[433]->setName("fpn_cells|cell_2|fnode6|truediv_1");
  layers[434] = new MWAdditionLayer;
  layers[434]->setName("fpn_cells|cell_2|fnode6|add_n_1|add");
  layers[435] = new MWMaxPoolingLayer;
  layers[435]->setName("fpn_cells|cell_2|fnode6|resample_2_10_11|max_pooling2d_12|MaxPool");
  layers[436] = new MWElementwiseAffineLayer;
  layers[436]->setName("fpn_cells|cell_2|fnode6|truediv_2");
  layers[436]->setInPlaceIndex(0, 0);
  layers[437] = new MWAdditionLayer;
  layers[437]->setName("fpn_cells|cell_2|fnode6|add_n_1|add_1");
  layers[438] = new MWSigmoidLayer;
  layers[438]->setName("fpn_cells|cell_2|fnode6|op_after_combine11|Sigmoid");
  layers[439] = new nd_MWMultiplicationLayer_effici;
  layers[439]->setName("fpn_cells|cell_2|fnode6|op_after_combine11|mul");
  layers[440] = new MWConvLayer;
  layers[440]->setName("fpn_cells|cell_2|fnode6|op_after_combine11|conv|separable_conv2d|depthwise");
  layers[441] = new MWConvLayer;
  layers[441]->setName("fpn_cells|cell_2|fnode6|op_after_combine11|conv|BiasAdd");
  layers[442] = new MWElementwiseAffineLayer;
  layers[442]->setName("fpn_cells|cell_2|fnode7|truediv");
  layers[443] = new MWMaxPoolingLayer;
  layers[443]->setName("fpn_cells|cell_2|fnode7|resample_1_11_12|max_pooling2d_13|MaxPool");
  layers[444] = new MWElementwiseAffineLayer;
  layers[444]->setName("fpn_cells|cell_2|fnode7|truediv_1");
  layers[444]->setInPlaceIndex(0, 0);
  layers[445] = new MWAdditionLayer;
  layers[445]->setName("fpn_cells|cell_2|fnode7|add_n_1|add");
  layers[446] = new MWSigmoidLayer;
  layers[446]->setName("fpn_cells|cell_2|fnode7|op_after_combine12|Sigmoid");
  layers[447] = new od_MWMultiplicationLayer_effici;
  layers[447]->setName("fpn_cells|cell_2|fnode7|op_after_combine12|mul");
  layers[448] = new MWConvLayer;
  layers[448]->setName("fpn_cells|cell_2|fnode7|op_after_combine12|conv|separable_conv2d|depthwise");
  layers[449] = new MWConvLayer;
  layers[449]->setName("fpn_cells|cell_2|fnode7|op_after_combine12|conv|BiasAdd");
  layers[450] = new MWConvLayer;
  layers[450]->setName("class_net|class-0_4|separable_conv2d|depthwise");
  layers[451] = new MWConvLayer;
  layers[451]->setName("class_net|class-0_4|BiasAdd");
  layers[452] = new MWSigmoidLayer;
  layers[452]->setName("class_net|Sigmoid_12");
  layers[453] = new pd_MWMultiplicationLayer_effici;
  layers[453]->setName("class_net|mul_12");
  layers[454] = new MWConvLayer;
  layers[454]->setName("class_net|class-1_4|separable_conv2d|depthwise");
  layers[455] = new MWConvLayer;
  layers[455]->setName("class_net|class-1_4|BiasAdd");
  layers[456] = new MWSigmoidLayer;
  layers[456]->setName("class_net|Sigmoid_13");
  layers[457] = new qd_MWMultiplicationLayer_effici;
  layers[457]->setName("class_net|mul_13");
  layers[458] = new MWConvLayer;
  layers[458]->setName("class_net|class-2_4|separable_conv2d|depthwise");
  layers[459] = new MWConvLayer;
  layers[459]->setName("class_net|class-2_4|BiasAdd");
  layers[460] = new MWSigmoidLayer;
  layers[460]->setName("class_net|Sigmoid_14");
  layers[461] = new rd_MWMultiplicationLayer_effici;
  layers[461]->setName("class_net|mul_14");
  layers[462] = new MWConvLayer;
  layers[462]->setName("class_net|class-predict_4|separable_conv2d|depthwise");
  layers[463] = new MWConvLayer;
  layers[463]->setName("class_net|class-predict_4|BiasAdd");
  layers[464] = new MWOutputLayer;
  layers[464]->setName("output_class_net|class-predict_4|BiasAdd");
  layers[464]->setInPlaceIndex(0, 0);
  layers[465] = new MWConvLayer;
  layers[465]->setName("box_net|box-0_4|separable_conv2d|depthwise");
  layers[466] = new MWConvLayer;
  layers[466]->setName("box_net|box-0_4|BiasAdd");
  layers[467] = new MWSigmoidLayer;
  layers[467]->setName("box_net|Sigmoid_12");
  layers[468] = new sd_MWMultiplicationLayer_effici;
  layers[468]->setName("box_net|mul_12");
  layers[469] = new MWConvLayer;
  layers[469]->setName("box_net|box-1_4|separable_conv2d|depthwise");
  layers[470] = new MWConvLayer;
  layers[470]->setName("box_net|box-1_4|BiasAdd");
  layers[471] = new MWSigmoidLayer;
  layers[471]->setName("box_net|Sigmoid_13");
  layers[472] = new td_MWMultiplicationLayer_effici;
  layers[472]->setName("box_net|mul_13");
  layers[473] = new MWConvLayer;
  layers[473]->setName("box_net|box-2_4|separable_conv2d|depthwise");
  layers[474] = new MWConvLayer;
  layers[474]->setName("box_net|box-2_4|BiasAdd");
  layers[475] = new MWSigmoidLayer;
  layers[475]->setName("box_net|Sigmoid_14");
  layers[476] = new ud_MWMultiplicationLayer_effici;
  layers[476]->setName("box_net|mul_14");
  layers[477] = new MWConvLayer;
  layers[477]->setName("box_net|box-predict_4|separable_conv2d|depthwise");
  layers[478] = new MWConvLayer;
  layers[478]->setName("box_net|box-predict_4|BiasAdd");
  layers[479] = new MWOutputLayer;
  layers[479]->setName("output_box_net|box-predict_4|BiasAdd");
  layers[479]->setInPlaceIndex(0, 0);
  layers[480] = new MWConvLayer;
  layers[480]->setName("class_net|class-0_3|separable_conv2d|depthwise");
  layers[481] = new MWConvLayer;
  layers[481]->setName("class_net|class-0_3|BiasAdd");
  layers[482] = new MWSigmoidLayer;
  layers[482]->setName("class_net|Sigmoid_9");
  layers[483] = new vd_MWMultiplicationLayer_effici;
  layers[483]->setName("class_net|mul_9");
  layers[484] = new MWConvLayer;
  layers[484]->setName("class_net|class-1_3|separable_conv2d|depthwise");
  layers[485] = new MWConvLayer;
  layers[485]->setName("class_net|class-1_3|BiasAdd");
  layers[486] = new MWSigmoidLayer;
  layers[486]->setName("class_net|Sigmoid_10");
  layers[487] = new wd_MWMultiplicationLayer_effici;
  layers[487]->setName("class_net|mul_10");
  layers[488] = new MWConvLayer;
  layers[488]->setName("class_net|class-2_3|separable_conv2d|depthwise");
  layers[489] = new MWConvLayer;
  layers[489]->setName("class_net|class-2_3|BiasAdd");
  layers[490] = new MWSigmoidLayer;
  layers[490]->setName("class_net|Sigmoid_11");
  layers[491] = new xd_MWMultiplicationLayer_effici;
  layers[491]->setName("class_net|mul_11");
  layers[492] = new MWConvLayer;
  layers[492]->setName("class_net|class-predict_3|separable_conv2d|depthwise");
  layers[493] = new MWConvLayer;
  layers[493]->setName("class_net|class-predict_3|BiasAdd");
  layers[494] = new MWOutputLayer;
  layers[494]->setName("output_class_net|class-predict_3|BiasAdd");
  layers[494]->setInPlaceIndex(0, 0);
  layers[495] = new MWConvLayer;
  layers[495]->setName("box_net|box-0_3|separable_conv2d|depthwise");
  layers[496] = new MWConvLayer;
  layers[496]->setName("box_net|box-0_3|BiasAdd");
  layers[497] = new MWSigmoidLayer;
  layers[497]->setName("box_net|Sigmoid_9");
  layers[498] = new yd_MWMultiplicationLayer_effici;
  layers[498]->setName("box_net|mul_9");
  layers[499] = new MWConvLayer;
  layers[499]->setName("box_net|box-1_3|separable_conv2d|depthwise");
  layers[500] = new MWConvLayer;
  layers[500]->setName("box_net|box-1_3|BiasAdd");
  layers[501] = new MWSigmoidLayer;
  layers[501]->setName("box_net|Sigmoid_10");
  layers[502] = new ae_MWMultiplicationLayer_effici;
  layers[502]->setName("box_net|mul_10");
  layers[503] = new MWConvLayer;
  layers[503]->setName("box_net|box-2_3|separable_conv2d|depthwise");
  layers[504] = new MWConvLayer;
  layers[504]->setName("box_net|box-2_3|BiasAdd");
  layers[505] = new MWSigmoidLayer;
  layers[505]->setName("box_net|Sigmoid_11");
  layers[506] = new be_MWMultiplicationLayer_effici;
  layers[506]->setName("box_net|mul_11");
  layers[507] = new MWConvLayer;
  layers[507]->setName("box_net|box-predict_3|separable_conv2d|depthwise");
  layers[508] = new MWConvLayer;
  layers[508]->setName("box_net|box-predict_3|BiasAdd");
  layers[509] = new MWOutputLayer;
  layers[509]->setName("output_box_net|box-predict_3|BiasAdd");
  layers[509]->setInPlaceIndex(0, 0);
  layers[510] = new MWConvLayer;
  layers[510]->setName("class_net|class-0_2|separable_conv2d|depthwise");
  layers[511] = new MWConvLayer;
  layers[511]->setName("class_net|class-0_2|BiasAdd");
  layers[512] = new MWSigmoidLayer;
  layers[512]->setName("class_net|Sigmoid_6");
  layers[513] = new ce_MWMultiplicationLayer_effici;
  layers[513]->setName("class_net|mul_6");
  layers[514] = new MWConvLayer;
  layers[514]->setName("class_net|class-1_2|separable_conv2d|depthwise");
  layers[515] = new MWConvLayer;
  layers[515]->setName("class_net|class-1_2|BiasAdd");
  layers[516] = new MWSigmoidLayer;
  layers[516]->setName("class_net|Sigmoid_7");
  layers[517] = new de_MWMultiplicationLayer_effici;
  layers[517]->setName("class_net|mul_7");
  layers[518] = new MWConvLayer;
  layers[518]->setName("class_net|class-2_2|separable_conv2d|depthwise");
  layers[519] = new MWConvLayer;
  layers[519]->setName("class_net|class-2_2|BiasAdd");
  layers[520] = new MWSigmoidLayer;
  layers[520]->setName("class_net|Sigmoid_8");
  layers[521] = new ee_MWMultiplicationLayer_effici;
  layers[521]->setName("class_net|mul_8");
  layers[522] = new MWConvLayer;
  layers[522]->setName("class_net|class-predict_2|separable_conv2d|depthwise");
  layers[523] = new MWConvLayer;
  layers[523]->setName("class_net|class-predict_2|BiasAdd");
  layers[524] = new MWOutputLayer;
  layers[524]->setName("output_class_net|class-predict_2|BiasAdd");
  layers[524]->setInPlaceIndex(0, 0);
  layers[525] = new MWConvLayer;
  layers[525]->setName("box_net|box-0_2|separable_conv2d|depthwise");
  layers[526] = new MWConvLayer;
  layers[526]->setName("box_net|box-0_2|BiasAdd");
  layers[527] = new MWSigmoidLayer;
  layers[527]->setName("box_net|Sigmoid_6");
  layers[528] = new fe_MWMultiplicationLayer_effici;
  layers[528]->setName("box_net|mul_6");
  layers[529] = new MWConvLayer;
  layers[529]->setName("box_net|box-1_2|separable_conv2d|depthwise");
  layers[530] = new MWConvLayer;
  layers[530]->setName("box_net|box-1_2|BiasAdd");
  layers[531] = new MWSigmoidLayer;
  layers[531]->setName("box_net|Sigmoid_7");
  layers[532] = new ge_MWMultiplicationLayer_effici;
  layers[532]->setName("box_net|mul_7");
  layers[533] = new MWConvLayer;
  layers[533]->setName("box_net|box-2_2|separable_conv2d|depthwise");
  layers[534] = new MWConvLayer;
  layers[534]->setName("box_net|box-2_2|BiasAdd");
  layers[535] = new MWSigmoidLayer;
  layers[535]->setName("box_net|Sigmoid_8");
  layers[536] = new he_MWMultiplicationLayer_effici;
  layers[536]->setName("box_net|mul_8");
  layers[537] = new MWConvLayer;
  layers[537]->setName("box_net|box-predict_2|separable_conv2d|depthwise");
  layers[538] = new MWConvLayer;
  layers[538]->setName("box_net|box-predict_2|BiasAdd");
  layers[539] = new MWOutputLayer;
  layers[539]->setName("output_box_net|box-predict_2|BiasAdd");
  layers[539]->setInPlaceIndex(0, 0);
  layers[540] = new MWConvLayer;
  layers[540]->setName("class_net|class-0_1|separable_conv2d|depthwise");
  layers[541] = new MWConvLayer;
  layers[541]->setName("class_net|class-0_1|BiasAdd");
  layers[542] = new MWSigmoidLayer;
  layers[542]->setName("class_net|Sigmoid_3");
  layers[543] = new ie_MWMultiplicationLayer_effici;
  layers[543]->setName("class_net|mul_3");
  layers[544] = new MWConvLayer;
  layers[544]->setName("class_net|class-1_1|separable_conv2d|depthwise");
  layers[545] = new MWConvLayer;
  layers[545]->setName("class_net|class-1_1|BiasAdd");
  layers[546] = new MWSigmoidLayer;
  layers[546]->setName("class_net|Sigmoid_4");
  layers[547] = new je_MWMultiplicationLayer_effici;
  layers[547]->setName("class_net|mul_4");
  layers[548] = new MWConvLayer;
  layers[548]->setName("class_net|class-2_1|separable_conv2d|depthwise");
  layers[549] = new MWConvLayer;
  layers[549]->setName("class_net|class-2_1|BiasAdd");
  layers[550] = new MWSigmoidLayer;
  layers[550]->setName("class_net|Sigmoid_5");
  layers[551] = new ke_MWMultiplicationLayer_effici;
  layers[551]->setName("class_net|mul_5");
  layers[552] = new MWConvLayer;
  layers[552]->setName("class_net|class-predict_1|separable_conv2d|depthwise");
  layers[553] = new MWConvLayer;
  layers[553]->setName("class_net|class-predict_1|BiasAdd");
  layers[554] = new MWOutputLayer;
  layers[554]->setName("output_class_net|class-predict_1|BiasAdd");
  layers[554]->setInPlaceIndex(0, 0);
  layers[555] = new MWConvLayer;
  layers[555]->setName("box_net|box-0_1|separable_conv2d|depthwise");
  layers[556] = new MWConvLayer;
  layers[556]->setName("box_net|box-0_1|BiasAdd");
  layers[557] = new MWSigmoidLayer;
  layers[557]->setName("box_net|Sigmoid_3");
  layers[558] = new le_MWMultiplicationLayer_effici;
  layers[558]->setName("box_net|mul_3");
  layers[559] = new MWConvLayer;
  layers[559]->setName("box_net|box-1_1|separable_conv2d|depthwise");
  layers[560] = new MWConvLayer;
  layers[560]->setName("box_net|box-1_1|BiasAdd");
  layers[561] = new MWSigmoidLayer;
  layers[561]->setName("box_net|Sigmoid_4");
  layers[562] = new me_MWMultiplicationLayer_effici;
  layers[562]->setName("box_net|mul_4");
  layers[563] = new MWConvLayer;
  layers[563]->setName("box_net|box-2_1|separable_conv2d|depthwise");
  layers[564] = new MWConvLayer;
  layers[564]->setName("box_net|box-2_1|BiasAdd");
  layers[565] = new MWSigmoidLayer;
  layers[565]->setName("box_net|Sigmoid_5");
  layers[566] = new ne_MWMultiplicationLayer_effici;
  layers[566]->setName("box_net|mul_5");
  layers[567] = new MWConvLayer;
  layers[567]->setName("box_net|box-predict_1|separable_conv2d|depthwise");
  layers[568] = new MWConvLayer;
  layers[568]->setName("box_net|box-predict_1|BiasAdd");
  layers[569] = new MWOutputLayer;
  layers[569]->setName("output_box_net|box-predict_1|BiasAdd");
  layers[569]->setInPlaceIndex(0, 0);
  layers[570] = new MWConvLayer;
  layers[570]->setName("class_net|class-0|separable_conv2d|depthwise");
  layers[571] = new MWConvLayer;
  layers[571]->setName("class_net|class-0|BiasAdd");
  layers[572] = new MWSigmoidLayer;
  layers[572]->setName("class_net|Sigmoid");
  layers[573] = new oe_MWMultiplicationLayer_effici;
  layers[573]->setName("class_net|mul");
  layers[574] = new MWConvLayer;
  layers[574]->setName("class_net|class-1|separable_conv2d|depthwise");
  layers[575] = new MWConvLayer;
  layers[575]->setName("class_net|class-1|BiasAdd");
  layers[576] = new MWSigmoidLayer;
  layers[576]->setName("class_net|Sigmoid_1");
  layers[577] = new pe_MWMultiplicationLayer_effici;
  layers[577]->setName("class_net|mul_1");
  layers[578] = new MWConvLayer;
  layers[578]->setName("class_net|class-2|separable_conv2d|depthwise");
  layers[579] = new MWConvLayer;
  layers[579]->setName("class_net|class-2|BiasAdd");
  layers[580] = new MWSigmoidLayer;
  layers[580]->setName("class_net|Sigmoid_2");
  layers[581] = new qe_MWMultiplicationLayer_effici;
  layers[581]->setName("class_net|mul_2");
  layers[582] = new MWConvLayer;
  layers[582]->setName("class_net|class-predict|separable_conv2d|depthwise");
  layers[583] = new MWConvLayer;
  layers[583]->setName("class_net|class-predict|BiasAdd");
  layers[584] = new MWOutputLayer;
  layers[584]->setName("output_class_net|class-predict|BiasAdd");
  layers[584]->setInPlaceIndex(0, 0);
  layers[585] = new MWConvLayer;
  layers[585]->setName("box_net|box-0|separable_conv2d|depthwise");
  layers[586] = new MWConvLayer;
  layers[586]->setName("box_net|box-0|BiasAdd");
  layers[587] = new MWSigmoidLayer;
  layers[587]->setName("box_net|Sigmoid");
  layers[588] = new re_MWMultiplicationLayer_effici;
  layers[588]->setName("box_net|mul");
  layers[589] = new MWConvLayer;
  layers[589]->setName("box_net|box-1|separable_conv2d|depthwise");
  layers[590] = new MWConvLayer;
  layers[590]->setName("box_net|box-1|BiasAdd");
  layers[591] = new MWSigmoidLayer;
  layers[591]->setName("box_net|Sigmoid_1");
  layers[592] = new se_MWMultiplicationLayer_effici;
  layers[592]->setName("box_net|mul_1");
  layers[593] = new MWConvLayer;
  layers[593]->setName("box_net|box-2|separable_conv2d|depthwise");
  layers[594] = new MWConvLayer;
  layers[594]->setName("box_net|box-2|BiasAdd");
  layers[595] = new MWSigmoidLayer;
  layers[595]->setName("box_net|Sigmoid_2");
  layers[596] = new te_MWMultiplicationLayer_effici;
  layers[596]->setName("box_net|mul_2");
  layers[597] = new MWConvLayer;
  layers[597]->setName("box_net|box-predict|separable_conv2d|depthwise");
  layers[598] = new MWConvLayer;
  layers[598]->setName("box_net|box-predict|BiasAdd");
  layers[599] = new MWOutputLayer;
  layers[599]->setName("output_box_net|box-predict|BiasAdd");
  layers[599]->setInPlaceIndex(0, 0);
  targetImpl = new MWCudnnTarget::MWTargetNetworkImpl;
  inputTensors[0] = new MWTensor<real32_T>;
  inputTensors[0]->setHeight(512);
  inputTensors[0]->setWidth(512);
  inputTensors[0]->setChannels(3);
  inputTensors[0]->setBatchSize(1);
  inputTensors[0]->setSequenceLength(1);
}

efficientDetD0_coco0_0::~efficientDetD0_coco0_0()
{
  emlrtSetIsInDestructor((emlrtCTX *)emlrtRootTLSGlobal, true);
  try {
    if (isInitialized) {
      cleanup();
    }

    for (int32_T idx{0}; idx < 600; idx++) {
      delete layers[idx];
    }

    if (targetImpl) {
      delete targetImpl;
    }

    delete inputTensors[0];
  } catch (...) {
  }

  emlrtSetIsInDestructor((emlrtCTX *)emlrtRootTLSGlobal, false);
}

int32_T efficientDetD0_coco0_0::getBatchSize()
{
  return inputTensors[0]->getBatchSize();
}

real32_T *efficientDetD0_coco0_0::getInputDataPointer(int32_T b_index)
{
  return (static_cast<MWTensor<real32_T> *>(inputTensors[b_index]))->getData();
}

real32_T *efficientDetD0_coco0_0::getInputDataPointer()
{
  return (static_cast<MWTensor<real32_T> *>(inputTensors[0]))->getData();
}

real32_T *efficientDetD0_coco0_0::getLayerOutput(int32_T layerIndex, int32_T
  portIndex)
{
  return layers[layerIndex]->getLayerOutput(portIndex);
}

int32_T efficientDetD0_coco0_0::getLayerOutputSize(int32_T layerIndex, int32_T
  portIndex)
{
  return layers[layerIndex]->getOutputTensor(portIndex)->getNumElements() *
    sizeof(real32_T);
}

real32_T *efficientDetD0_coco0_0::getOutputDataPointer(int32_T b_index)
{
  return (static_cast<MWTensor<real32_T> *>(outputTensors[b_index]))->getData();
}

real32_T *efficientDetD0_coco0_0::getOutputDataPointer()
{
  return (static_cast<MWTensor<real32_T> *>(outputTensors[0]))->getData();
}

namespace coder
{
  void af_dlnetwork_layerPredictWithCo(const real32_T varargin_1[480], const
    real32_T varargin_2[491520], real32_T varargout_1[491520])
  {
    real32_T (*gpu_a)[491520];
    cudaMalloc(&gpu_a, 1966080ULL);
    xb_dlnetwork_layerPredictWithCo<<<dim3(960U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, varargout_1);
    yb_dlnetwork_layerPredictWithCo<<<dim3(960U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargout_1, *gpu_a);
    ac_dlnetwork_layerPredictWithCo<<<dim3(960U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_2, *gpu_a, varargout_1);
    cudaFree(*gpu_a);
  }

  void bf_dlnetwork_layerPredictWithCo(const real32_T varargin_1[688128], const
    real32_T varargin_2[688128], real32_T varargout_1[688128])
  {
    real32_T (*gpu_a)[688128];
    cudaMalloc(&gpu_a, 2752512ULL);
    bc_dlnetwork_layerPredictWithCo<<<dim3(1344U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, varargout_1);
    cc_dlnetwork_layerPredictWithCo<<<dim3(1344U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargout_1, *gpu_a);
    dc_dlnetwork_layerPredictWithCo<<<dim3(1344U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_2, *gpu_a, varargout_1);
    cudaFree(*gpu_a);
  }

  void cf_dlnetwork_layerPredictWithCo(const real32_T varargin_1[28], const
    real32_T varargin_2[28], real32_T varargout_1[28])
  {
    ec_dlnetwork_layerPredictWithCo<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
      (varargin_2, varargin_1, varargout_1);
  }

  void df_dlnetwork_layerPredictWithCo(const real32_T varargin_1[672], const
    real32_T varargin_2[688128], real32_T varargout_1[688128])
  {
    real32_T (*gpu_a)[688128];
    cudaMalloc(&gpu_a, 2752512ULL);
    fc_dlnetwork_layerPredictWithCo<<<dim3(1344U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, varargout_1);
    gc_dlnetwork_layerPredictWithCo<<<dim3(1344U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargout_1, *gpu_a);
    hc_dlnetwork_layerPredictWithCo<<<dim3(1344U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_2, *gpu_a, varargout_1);
    cudaFree(*gpu_a);
  }

  void dlnetwork_delete(efficientDetD0_coco0_0 *obj)
  {
    if (&obj->isInitialized) {
      obj->cleanup();
    }
  }

  void dlnetwork_setup(efficientDetD0_coco0_0 *obj)
  {
    try {
      obj->setup();
    } catch (std::runtime_error const& err) {
      obj->cleanup();
      checkRunTimeError(err.what(), __FILE__, __LINE__);
    }

    catch (...)
    {
      obj->cleanup();
      checkRunTimeError("", __FILE__, __LINE__);
    }
  }

  void ef_dlnetwork_layerPredictWithCo(const real32_T varargin_1[172032], const
    real32_T varargin_2[172032], real32_T varargout_1[172032])
  {
    real32_T (*gpu_a)[172032];
    cudaMalloc(&gpu_a, 688128ULL);
    ic_dlnetwork_layerPredictWithCo<<<dim3(336U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, varargout_1);
    jc_dlnetwork_layerPredictWithCo<<<dim3(336U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargout_1, *gpu_a);
    kc_dlnetwork_layerPredictWithCo<<<dim3(336U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_2, *gpu_a, varargout_1);
    cudaFree(*gpu_a);
  }

  void ff_dlnetwork_layerPredictWithCo(const real32_T varargin_1[672], const
    real32_T varargin_2[172032], real32_T varargout_1[172032])
  {
    real32_T (*gpu_a)[172032];
    cudaMalloc(&gpu_a, 688128ULL);
    lc_dlnetwork_layerPredictWithCo<<<dim3(336U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, varargout_1);
    mc_dlnetwork_layerPredictWithCo<<<dim3(336U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargout_1, *gpu_a);
    nc_dlnetwork_layerPredictWithCo<<<dim3(336U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_2, *gpu_a, varargout_1);
    cudaFree(*gpu_a);
  }

  void ge_dlnetwork_layerPredictWithCo(const real32_T varargin_1[1024], real32_T
    varargout_1[4096])
  {
    static const int8_T xq[8]{ 1, 1, 2, 2, 3, 3, 4, 4 };

    real32_T (*b_gpu_out)[4096];
    real32_T (*gpu_in)[2048];
    real32_T (*gpu_out)[2048];
    if (!c_gpuConstsCopied_dlnetwork_lay) {
      c_gpuConstsCopied_dlnetwork_lay = true;
      cudaMemcpy(*xq_gpu_clone, xq, sizeof(int8_T [8]), cudaMemcpyHostToDevice);
    }

    cudaMalloc(&b_gpu_out, 16384ULL);
    cudaMalloc(&gpu_in, 8192ULL);
    cudaMalloc(&gpu_out, 8192ULL);
    vc_dlnetwork_layerPredictWithCo<<<dim3(4U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, *xq_gpu_clone, *gpu_out);
    wc_dlnetwork_layerPredictWithCo<<<dim3(4U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (*gpu_out, *gpu_in);
    xc_dlnetwork_layerPredictWithCo<<<dim3(8U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (*gpu_in, *xq_gpu_clone, *b_gpu_out);
    yc_dlnetwork_layerPredictWithCo<<<dim3(8U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (*b_gpu_out, varargout_1);
    ad_dlnetwork_layerPredictWithCo<<<dim3(8U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (*b_gpu_out, varargout_1);
    cudaFree(*gpu_out);
    cudaFree(*gpu_in);
    cudaFree(*b_gpu_out);
  }

  void ge_dlnetwork_layerPredictWithCo(const real32_T varargin_1[2097152], const
    real32_T varargin_2[2097152], real32_T varargout_1[2097152])
  {
    real32_T (*gpu_a)[2097152];
    cudaMalloc(&gpu_a, 8388608ULL);
    c_dlnetwork_layerPredictWithCol<<<dim3(4096U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, varargout_1);
    d_dlnetwork_layerPredictWithCol<<<dim3(4096U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargout_1, *gpu_a);
    e_dlnetwork_layerPredictWithCol<<<dim3(4096U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_2, *gpu_a, varargout_1);
    cudaFree(*gpu_a);
  }

  void gf_dlnetwork_layerPredictWithCo(const real32_T varargin_1[294912], const
    real32_T varargin_2[294912], real32_T varargout_1[294912])
  {
    real32_T (*gpu_a)[294912];
    cudaMalloc(&gpu_a, 1179648ULL);
    oc_dlnetwork_layerPredictWithCo<<<dim3(576U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, varargout_1);
    pc_dlnetwork_layerPredictWithCo<<<dim3(576U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargout_1, *gpu_a);
    qc_dlnetwork_layerPredictWithCo<<<dim3(576U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_2, *gpu_a, varargout_1);
    cudaFree(*gpu_a);
  }

  void he_dlnetwork_layerPredictWithCo(const real32_T varargin_1[8], const
    real32_T varargin_2[8], real32_T varargout_1[8])
  {
    f_dlnetwork_layerPredictWithCol<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
      (varargin_2, varargin_1, varargout_1);
  }

  void he_dlnetwork_layerPredictWithCo(const real32_T varargin_1[4096], real32_T
    varargout_1[16384])
  {
    static const int8_T xq[16]{ 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8 };

    real32_T (*b_gpu_out)[16384];
    real32_T (*gpu_in)[8192];
    real32_T (*gpu_out)[8192];
    if (!d_gpuConstsCopied_dlnetwork_lay) {
      d_gpuConstsCopied_dlnetwork_lay = true;
      cudaMemcpy(*b_xq_gpu_clone, xq, sizeof(int8_T [16]),
                 cudaMemcpyHostToDevice);
    }

    cudaMalloc(&b_gpu_out, 65536ULL);
    cudaMalloc(&gpu_in, 32768ULL);
    cudaMalloc(&gpu_out, 32768ULL);
    ed_dlnetwork_layerPredictWithCo<<<dim3(16U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, *b_xq_gpu_clone, *gpu_out);
    fd_dlnetwork_layerPredictWithCo<<<dim3(16U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (*gpu_out, *gpu_in);
    gd_dlnetwork_layerPredictWithCo<<<dim3(32U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (*gpu_in, *b_xq_gpu_clone, *b_gpu_out);
    hd_dlnetwork_layerPredictWithCo<<<dim3(32U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (*b_gpu_out, varargout_1);
    id_dlnetwork_layerPredictWithCo<<<dim3(32U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (*b_gpu_out, varargout_1);
    cudaFree(*gpu_out);
    cudaFree(*gpu_in);
    cudaFree(*b_gpu_out);
  }

  void hf_dlnetwork_layerPredictWithCo(const real32_T varargin_1[48], const
    real32_T varargin_2[48], real32_T varargout_1[48])
  {
    rc_dlnetwork_layerPredictWithCo<<<dim3(1U, 1U, 1U), dim3(64U, 1U, 1U)>>>
      (varargin_2, varargin_1, varargout_1);
  }

  void ie_dlnetwork_layerPredictWithCo(const real32_T varargin_1[32], const
    real32_T varargin_2[2097152], real32_T varargout_1[2097152])
  {
    real32_T (*gpu_a)[2097152];
    cudaMalloc(&gpu_a, 8388608ULL);
    g_dlnetwork_layerPredictWithCol<<<dim3(4096U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, varargout_1);
    h_dlnetwork_layerPredictWithCol<<<dim3(4096U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargout_1, *gpu_a);
    i_dlnetwork_layerPredictWithCol<<<dim3(4096U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_2, *gpu_a, varargout_1);
    cudaFree(*gpu_a);
  }

  void ie_dlnetwork_layerPredictWithCo(const real32_T varargin_1[16384],
    real32_T varargout_1[65536])
  {
    static const int8_T xq[32]{ 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8,
      9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16 };

    real32_T (*b_gpu_out)[65536];
    real32_T (*gpu_in)[32768];
    real32_T (*gpu_out)[32768];
    if (!e_gpuConstsCopied_dlnetwork_lay) {
      e_gpuConstsCopied_dlnetwork_lay = true;
      cudaMemcpy(*c_xq_gpu_clone, xq, sizeof(int8_T [32]),
                 cudaMemcpyHostToDevice);
    }

    cudaMalloc(&b_gpu_out, 262144ULL);
    cudaMalloc(&gpu_in, 131072ULL);
    cudaMalloc(&gpu_out, 131072ULL);
    md_dlnetwork_layerPredictWithCo<<<dim3(64U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, *c_xq_gpu_clone, *gpu_out);
    nd_dlnetwork_layerPredictWithCo<<<dim3(64U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (*gpu_out, *gpu_in);
    od_dlnetwork_layerPredictWithCo<<<dim3(128U, 1U, 1U), dim3(512U, 1U, 1U)>>>(*
      gpu_in, *c_xq_gpu_clone, *b_gpu_out);
    pd_dlnetwork_layerPredictWithCo<<<dim3(128U, 1U, 1U), dim3(512U, 1U, 1U)>>>(*
      b_gpu_out, varargout_1);
    qd_dlnetwork_layerPredictWithCo<<<dim3(128U, 1U, 1U), dim3(512U, 1U, 1U)>>>(*
      b_gpu_out, varargout_1);
    cudaFree(*gpu_out);
    cudaFree(*gpu_in);
    cudaFree(*b_gpu_out);
  }

  void if_dlnetwork_layerPredictWithCo(const real32_T varargin_1[1152], const
    real32_T varargin_2[294912], real32_T varargout_1[294912])
  {
    real32_T (*gpu_a)[294912];
    cudaMalloc(&gpu_a, 1179648ULL);
    sc_dlnetwork_layerPredictWithCo<<<dim3(576U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, varargout_1);
    tc_dlnetwork_layerPredictWithCo<<<dim3(576U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargout_1, *gpu_a);
    uc_dlnetwork_layerPredictWithCo<<<dim3(576U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_2, *gpu_a, varargout_1);
    cudaFree(*gpu_a);
  }

  void je_dlnetwork_layerPredictWithCo(const real32_T varargin_1[6291456], const
    real32_T varargin_2[6291456], real32_T varargout_1[6291456])
  {
    real32_T (*gpu_a)[6291456];
    cudaMalloc(&gpu_a, 25165824ULL);
    j_dlnetwork_layerPredictWithCol<<<dim3(12288U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, varargout_1);
    k_dlnetwork_layerPredictWithCol<<<dim3(12288U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargout_1, *gpu_a);
    l_dlnetwork_layerPredictWithCol<<<dim3(12288U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_2, *gpu_a, varargout_1);
    cudaFree(*gpu_a);
  }

  void je_dlnetwork_layerPredictWithCo(const real32_T varargin_1[65536],
    real32_T varargout_1[262144])
  {
    static const int8_T xq[64]{ 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8,
      9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 18,
      18, 19, 19, 20, 20, 21, 21, 22, 22, 23, 23, 24, 24, 25, 25, 26, 26, 27, 27,
      28, 28, 29, 29, 30, 30, 31, 31, 32, 32 };

    real32_T (*b_gpu_out)[262144];
    real32_T (*gpu_in)[131072];
    real32_T (*gpu_out)[131072];
    if (!f_gpuConstsCopied_dlnetwork_lay) {
      f_gpuConstsCopied_dlnetwork_lay = true;
      cudaMemcpy(*d_xq_gpu_clone, xq, sizeof(int8_T [64]),
                 cudaMemcpyHostToDevice);
    }

    cudaMalloc(&b_gpu_out, 1048576ULL);
    cudaMalloc(&gpu_in, 524288ULL);
    cudaMalloc(&gpu_out, 524288ULL);
    ud_dlnetwork_layerPredictWithCo<<<dim3(256U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, *d_xq_gpu_clone, *gpu_out);
    vd_dlnetwork_layerPredictWithCo<<<dim3(256U, 1U, 1U), dim3(512U, 1U, 1U)>>>(*
      gpu_out, *gpu_in);
    wd_dlnetwork_layerPredictWithCo<<<dim3(512U, 1U, 1U), dim3(512U, 1U, 1U)>>>(*
      gpu_in, *d_xq_gpu_clone, *b_gpu_out);
    xd_dlnetwork_layerPredictWithCo<<<dim3(512U, 1U, 1U), dim3(512U, 1U, 1U)>>>(*
      b_gpu_out, varargout_1);
    yd_dlnetwork_layerPredictWithCo<<<dim3(512U, 1U, 1U), dim3(512U, 1U, 1U)>>>(*
      b_gpu_out, varargout_1);
    cudaFree(*gpu_out);
    cudaFree(*gpu_in);
    cudaFree(*b_gpu_out);
  }

  void jf_dlnetwork_layerPredictWithCo(const real32_T varargin_1[4096], const
    real32_T varargin_2[4096], real32_T varargout_1[4096])
  {
    real32_T (*gpu_a)[4096];
    cudaMalloc(&gpu_a, 16384ULL);
    bd_dlnetwork_layerPredictWithCo<<<dim3(8U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, varargout_1);
    cd_dlnetwork_layerPredictWithCo<<<dim3(8U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargout_1, *gpu_a);
    dd_dlnetwork_layerPredictWithCo<<<dim3(8U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_2, *gpu_a, varargout_1);
    cudaFree(*gpu_a);
  }

  void ke_dlnetwork_layerPredictWithCo(const real32_T varargin_1[1572864], const
    real32_T varargin_2[1572864], real32_T varargout_1[1572864])
  {
    real32_T (*gpu_a)[1572864];
    cudaMalloc(&gpu_a, 6291456ULL);
    m_dlnetwork_layerPredictWithCol<<<dim3(3072U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, varargout_1);
    n_dlnetwork_layerPredictWithCol<<<dim3(3072U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargout_1, *gpu_a);
    o_dlnetwork_layerPredictWithCol<<<dim3(3072U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_2, *gpu_a, varargout_1);
    cudaFree(*gpu_a);
  }

  void kf_dlnetwork_layerPredictWithCo(const real32_T varargin_1[16384], const
    real32_T varargin_2[16384], real32_T varargout_1[16384])
  {
    real32_T (*gpu_a)[16384];
    cudaMalloc(&gpu_a, 65536ULL);
    jd_dlnetwork_layerPredictWithCo<<<dim3(32U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, varargout_1);
    kd_dlnetwork_layerPredictWithCo<<<dim3(32U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargout_1, *gpu_a);
    ld_dlnetwork_layerPredictWithCo<<<dim3(32U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_2, *gpu_a, varargout_1);
    cudaFree(*gpu_a);
  }

  void le_dlnetwork_layerPredictWithCo(const real32_T varargin_1[4], const
    real32_T varargin_2[4], real32_T varargout_1[4])
  {
    real32_T (*cpu_varargin_1)[4];
    real32_T (*cpu_varargin_2)[4];
    real32_T (*cpu_varargout_1)[4];
    cpu_varargin_2 = (real32_T (*)[4])malloc(16U);
    cpu_varargin_1 = (real32_T (*)[4])malloc(16U);
    cpu_varargout_1 = (real32_T (*)[4])malloc(16U);
    cudaMemcpy(*cpu_varargout_1, varargout_1, 16ULL, cudaMemcpyDeviceToHost);
    cudaMemcpy(*cpu_varargin_1, varargin_1, 16ULL, cudaMemcpyDeviceToHost);
    cudaMemcpy(*cpu_varargin_2, varargin_2, 16ULL, cudaMemcpyDeviceToHost);
    (*cpu_varargout_1)[0] = (*cpu_varargin_1)[0] * (*cpu_varargin_2)[0];
    (*cpu_varargout_1)[1] = (*cpu_varargin_1)[1] * (*cpu_varargin_2)[1];
    (*cpu_varargout_1)[2] = (*cpu_varargin_1)[2] * (*cpu_varargin_2)[2];
    (*cpu_varargout_1)[3] = (*cpu_varargin_1)[3] * (*cpu_varargin_2)[3];
    cudaMemcpy(varargout_1, *cpu_varargout_1, 16ULL, cudaMemcpyHostToDevice);
    free(*cpu_varargout_1);
    free(*cpu_varargin_1);
    free(*cpu_varargin_2);
  }

  void lf_dlnetwork_layerPredictWithCo(const real32_T varargin_1[65536], const
    real32_T varargin_2[65536], real32_T varargout_1[65536])
  {
    real32_T (*gpu_a)[65536];
    cudaMalloc(&gpu_a, 262144ULL);
    rd_dlnetwork_layerPredictWithCo<<<dim3(128U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, varargout_1);
    sd_dlnetwork_layerPredictWithCo<<<dim3(128U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargout_1, *gpu_a);
    td_dlnetwork_layerPredictWithCo<<<dim3(128U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_2, *gpu_a, varargout_1);
    cudaFree(*gpu_a);
  }

  void me_dlnetwork_layerPredictWithCo(const real32_T varargin_1[96], const
    real32_T varargin_2[1572864], real32_T varargout_1[1572864])
  {
    real32_T (*gpu_a)[1572864];
    cudaMalloc(&gpu_a, 6291456ULL);
    p_dlnetwork_layerPredictWithCol<<<dim3(3072U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, varargout_1);
    q_dlnetwork_layerPredictWithCol<<<dim3(3072U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargout_1, *gpu_a);
    r_dlnetwork_layerPredictWithCol<<<dim3(3072U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_2, *gpu_a, varargout_1);
    cudaFree(*gpu_a);
  }

  void mf_dlnetwork_layerPredictWithCo(const real32_T varargin_1[262144], const
    real32_T varargin_2[262144], real32_T varargout_1[262144])
  {
    real32_T (*gpu_a)[262144];
    cudaMalloc(&gpu_a, 1048576ULL);
    ae_dlnetwork_layerPredictWithCo<<<dim3(512U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, varargout_1);
    be_dlnetwork_layerPredictWithCo<<<dim3(512U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargout_1, *gpu_a);
    ce_dlnetwork_layerPredictWithCo<<<dim3(512U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_2, *gpu_a, varargout_1);
    cudaFree(*gpu_a);
  }

  void ne_dlnetwork_layerPredictWithCo(const real32_T varargin_1[2359296], const
    real32_T varargin_2[2359296], real32_T varargout_1[2359296])
  {
    real32_T (*gpu_a)[2359296];
    cudaMalloc(&gpu_a, 9437184ULL);
    s_dlnetwork_layerPredictWithCol<<<dim3(4608U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, varargout_1);
    t_dlnetwork_layerPredictWithCol<<<dim3(4608U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargout_1, *gpu_a);
    u_dlnetwork_layerPredictWithCol<<<dim3(4608U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_2, *gpu_a, varargout_1);
    cudaFree(*gpu_a);
  }

  void nf_dlnetwork_layerPredictWithCo(const real32_T varargin_1[1024], const
    real32_T varargin_2[1024], real32_T varargout_1[1024])
  {
    real32_T (*gpu_a)[1024];
    cudaMalloc(&gpu_a, 4096ULL);
    de_dlnetwork_layerPredictWithCo<<<dim3(1U, 1U, 1U), dim3(256U, 1U, 1U)>>>
      (varargin_1, varargout_1);
    ee_dlnetwork_layerPredictWithCo<<<dim3(2U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargout_1, *gpu_a);
    fe_dlnetwork_layerPredictWithCo<<<dim3(1U, 1U, 1U), dim3(256U, 1U, 1U)>>>
      (varargin_2, *gpu_a, varargout_1);
    cudaFree(*gpu_a);
  }

  void oe_dlnetwork_layerPredictWithCo(const real32_T varargin_1[6], const
    real32_T varargin_2[6], real32_T varargout_1[6])
  {
    v_dlnetwork_layerPredictWithCol<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
      (varargin_2, varargin_1, varargout_1);
  }

  void pe_dlnetwork_layerPredictWithCo(const real32_T varargin_1[144], const
    real32_T varargin_2[2359296], real32_T varargout_1[2359296])
  {
    real32_T (*gpu_a)[2359296];
    cudaMalloc(&gpu_a, 9437184ULL);
    w_dlnetwork_layerPredictWithCol<<<dim3(4608U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, varargout_1);
    x_dlnetwork_layerPredictWithCol<<<dim3(4608U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargout_1, *gpu_a);
    y_dlnetwork_layerPredictWithCol<<<dim3(4608U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_2, *gpu_a, varargout_1);
    cudaFree(*gpu_a);
  }

  void qe_dlnetwork_layerPredictWithCo(const real32_T varargin_1[589824], const
    real32_T varargin_2[589824], real32_T varargout_1[589824])
  {
    real32_T (*gpu_a)[589824];
    cudaMalloc(&gpu_a, 2359296ULL);
    ab_dlnetwork_layerPredictWithCo<<<dim3(1152U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, varargout_1);
    bb_dlnetwork_layerPredictWithCo<<<dim3(1152U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargout_1, *gpu_a);
    cb_dlnetwork_layerPredictWithCo<<<dim3(1152U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_2, *gpu_a, varargout_1);
    cudaFree(*gpu_a);
  }

  void re_dlnetwork_layerPredictWithCo(const real32_T varargin_1[144], const
    real32_T varargin_2[589824], real32_T varargout_1[589824])
  {
    real32_T (*gpu_a)[589824];
    cudaMalloc(&gpu_a, 2359296ULL);
    db_dlnetwork_layerPredictWithCo<<<dim3(1152U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, varargout_1);
    eb_dlnetwork_layerPredictWithCo<<<dim3(1152U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargout_1, *gpu_a);
    fb_dlnetwork_layerPredictWithCo<<<dim3(1152U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_2, *gpu_a, varargout_1);
    cudaFree(*gpu_a);
  }

  void se_dlnetwork_layerPredictWithCo(const real32_T varargin_1[983040], const
    real32_T varargin_2[983040], real32_T varargout_1[983040])
  {
    real32_T (*gpu_a)[983040];
    cudaMalloc(&gpu_a, 3932160ULL);
    gb_dlnetwork_layerPredictWithCo<<<dim3(1920U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, varargout_1);
    hb_dlnetwork_layerPredictWithCo<<<dim3(1920U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargout_1, *gpu_a);
    ib_dlnetwork_layerPredictWithCo<<<dim3(1920U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_2, *gpu_a, varargout_1);
    cudaFree(*gpu_a);
  }

  void te_dlnetwork_layerPredictWithCo(const real32_T varargin_1[10], const
    real32_T varargin_2[10], real32_T varargout_1[10])
  {
    jb_dlnetwork_layerPredictWithCo<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
      (varargin_2, varargin_1, varargout_1);
  }

  void ue_dlnetwork_layerPredictWithCo(const real32_T varargin_1[240], const
    real32_T varargin_2[983040], real32_T varargout_1[983040])
  {
    real32_T (*gpu_a)[983040];
    cudaMalloc(&gpu_a, 3932160ULL);
    kb_dlnetwork_layerPredictWithCo<<<dim3(1920U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, varargout_1);
    lb_dlnetwork_layerPredictWithCo<<<dim3(1920U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargout_1, *gpu_a);
    mb_dlnetwork_layerPredictWithCo<<<dim3(1920U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_2, *gpu_a, varargout_1);
    cudaFree(*gpu_a);
  }

  void ve_dlnetwork_layerPredictWithCo(const real32_T varargin_1[245760], const
    real32_T varargin_2[245760], real32_T varargout_1[245760])
  {
    real32_T (*gpu_a)[245760];
    cudaMalloc(&gpu_a, 983040ULL);
    nb_dlnetwork_layerPredictWithCo<<<dim3(480U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, varargout_1);
    ob_dlnetwork_layerPredictWithCo<<<dim3(480U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargout_1, *gpu_a);
    pb_dlnetwork_layerPredictWithCo<<<dim3(480U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_2, *gpu_a, varargout_1);
    cudaFree(*gpu_a);
  }

  void we_dlnetwork_layerPredictWithCo(const real32_T varargin_1[240], const
    real32_T varargin_2[245760], real32_T varargout_1[245760])
  {
    real32_T (*gpu_a)[245760];
    cudaMalloc(&gpu_a, 983040ULL);
    qb_dlnetwork_layerPredictWithCo<<<dim3(480U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, varargout_1);
    rb_dlnetwork_layerPredictWithCo<<<dim3(480U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargout_1, *gpu_a);
    sb_dlnetwork_layerPredictWithCo<<<dim3(480U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_2, *gpu_a, varargout_1);
    cudaFree(*gpu_a);
  }

  void xe_dlnetwork_layerPredictWithCo(const real32_T varargin_1[491520], const
    real32_T varargin_2[491520], real32_T varargout_1[491520])
  {
    real32_T (*gpu_a)[491520];
    cudaMalloc(&gpu_a, 1966080ULL);
    tb_dlnetwork_layerPredictWithCo<<<dim3(960U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_1, varargout_1);
    ub_dlnetwork_layerPredictWithCo<<<dim3(960U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargout_1, *gpu_a);
    vb_dlnetwork_layerPredictWithCo<<<dim3(960U, 1U, 1U), dim3(512U, 1U, 1U)>>>
      (varargin_2, *gpu_a, varargout_1);
    cudaFree(*gpu_a);
  }

  void ye_dlnetwork_layerPredictWithCo(const real32_T varargin_1[20], const
    real32_T varargin_2[20], real32_T varargout_1[20])
  {
    wb_dlnetwork_layerPredictWithCo<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
      (varargin_2, varargin_1, varargout_1);
  }
}

// End of code generation (dlnetwork.cu)
