//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// dlnetwork.h
//
// Code generation for function 'dlnetwork'
//

#pragma once

// Include files
#include "rtwtypes.h"
#include "emlrt.h"
#include "mex.h"
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>

// Custom Header Code

#ifdef __CUDA_ARCH__
#undef printf
#endif

// Type Declarations
class efficientDetD0_coco0_0;

// Function Declarations
namespace coder {
void af_dlnetwork_layerPredictWithCo(const real32_T varargin_1[480],
                                     const real32_T varargin_2[491520],
                                     real32_T varargout_1[491520]);

void bf_dlnetwork_layerPredictWithCo(const real32_T varargin_1[688128],
                                     const real32_T varargin_2[688128],
                                     real32_T varargout_1[688128]);

void cf_dlnetwork_layerPredictWithCo(const real32_T varargin_1[28],
                                     const real32_T varargin_2[28],
                                     real32_T varargout_1[28]);

void df_dlnetwork_layerPredictWithCo(const real32_T varargin_1[672],
                                     const real32_T varargin_2[688128],
                                     real32_T varargout_1[688128]);

void dlnetwork_delete(efficientDetD0_coco0_0 *obj);

void dlnetwork_setup(efficientDetD0_coco0_0 *obj);

void ef_dlnetwork_layerPredictWithCo(const real32_T varargin_1[172032],
                                     const real32_T varargin_2[172032],
                                     real32_T varargout_1[172032]);

void ff_dlnetwork_layerPredictWithCo(const real32_T varargin_1[672],
                                     const real32_T varargin_2[172032],
                                     real32_T varargout_1[172032]);

void ge_dlnetwork_layerPredictWithCo(const real32_T varargin_1[2097152],
                                     const real32_T varargin_2[2097152],
                                     real32_T varargout_1[2097152]);

void ge_dlnetwork_layerPredictWithCo(const real32_T varargin_1[1024],
                                     real32_T varargout_1[4096]);

void gf_dlnetwork_layerPredictWithCo(const real32_T varargin_1[294912],
                                     const real32_T varargin_2[294912],
                                     real32_T varargout_1[294912]);

void he_dlnetwork_layerPredictWithCo(const real32_T varargin_1[8],
                                     const real32_T varargin_2[8],
                                     real32_T varargout_1[8]);

void he_dlnetwork_layerPredictWithCo(const real32_T varargin_1[4096],
                                     real32_T varargout_1[16384]);

void hf_dlnetwork_layerPredictWithCo(const real32_T varargin_1[48],
                                     const real32_T varargin_2[48],
                                     real32_T varargout_1[48]);

void ie_dlnetwork_layerPredictWithCo(const real32_T varargin_1[32],
                                     const real32_T varargin_2[2097152],
                                     real32_T varargout_1[2097152]);

void ie_dlnetwork_layerPredictWithCo(const real32_T varargin_1[16384],
                                     real32_T varargout_1[65536]);

void if_dlnetwork_layerPredictWithCo(const real32_T varargin_1[1152],
                                     const real32_T varargin_2[294912],
                                     real32_T varargout_1[294912]);

void je_dlnetwork_layerPredictWithCo(const real32_T varargin_1[6291456],
                                     const real32_T varargin_2[6291456],
                                     real32_T varargout_1[6291456]);

void je_dlnetwork_layerPredictWithCo(const real32_T varargin_1[65536],
                                     real32_T varargout_1[262144]);

void jf_dlnetwork_layerPredictWithCo(const real32_T varargin_1[4096],
                                     const real32_T varargin_2[4096],
                                     real32_T varargout_1[4096]);

void ke_dlnetwork_layerPredictWithCo(const real32_T varargin_1[1572864],
                                     const real32_T varargin_2[1572864],
                                     real32_T varargout_1[1572864]);

void kf_dlnetwork_layerPredictWithCo(const real32_T varargin_1[16384],
                                     const real32_T varargin_2[16384],
                                     real32_T varargout_1[16384]);

void le_dlnetwork_layerPredictWithCo(const real32_T varargin_1[4],
                                     const real32_T varargin_2[4],
                                     real32_T varargout_1[4]);

void lf_dlnetwork_layerPredictWithCo(const real32_T varargin_1[65536],
                                     const real32_T varargin_2[65536],
                                     real32_T varargout_1[65536]);

void me_dlnetwork_layerPredictWithCo(const real32_T varargin_1[96],
                                     const real32_T varargin_2[1572864],
                                     real32_T varargout_1[1572864]);

void mf_dlnetwork_layerPredictWithCo(const real32_T varargin_1[262144],
                                     const real32_T varargin_2[262144],
                                     real32_T varargout_1[262144]);

void ne_dlnetwork_layerPredictWithCo(const real32_T varargin_1[2359296],
                                     const real32_T varargin_2[2359296],
                                     real32_T varargout_1[2359296]);

void nf_dlnetwork_layerPredictWithCo(const real32_T varargin_1[1024],
                                     const real32_T varargin_2[1024],
                                     real32_T varargout_1[1024]);

void oe_dlnetwork_layerPredictWithCo(const real32_T varargin_1[6],
                                     const real32_T varargin_2[6],
                                     real32_T varargout_1[6]);

void pe_dlnetwork_layerPredictWithCo(const real32_T varargin_1[144],
                                     const real32_T varargin_2[2359296],
                                     real32_T varargout_1[2359296]);

void qe_dlnetwork_layerPredictWithCo(const real32_T varargin_1[589824],
                                     const real32_T varargin_2[589824],
                                     real32_T varargout_1[589824]);

void re_dlnetwork_layerPredictWithCo(const real32_T varargin_1[144],
                                     const real32_T varargin_2[589824],
                                     real32_T varargout_1[589824]);

void se_dlnetwork_layerPredictWithCo(const real32_T varargin_1[983040],
                                     const real32_T varargin_2[983040],
                                     real32_T varargout_1[983040]);

void te_dlnetwork_layerPredictWithCo(const real32_T varargin_1[10],
                                     const real32_T varargin_2[10],
                                     real32_T varargout_1[10]);

void ue_dlnetwork_layerPredictWithCo(const real32_T varargin_1[240],
                                     const real32_T varargin_2[983040],
                                     real32_T varargout_1[983040]);

void ve_dlnetwork_layerPredictWithCo(const real32_T varargin_1[245760],
                                     const real32_T varargin_2[245760],
                                     real32_T varargout_1[245760]);

void we_dlnetwork_layerPredictWithCo(const real32_T varargin_1[240],
                                     const real32_T varargin_2[245760],
                                     real32_T varargout_1[245760]);

void xe_dlnetwork_layerPredictWithCo(const real32_T varargin_1[491520],
                                     const real32_T varargin_2[491520],
                                     real32_T varargout_1[491520]);

void ye_dlnetwork_layerPredictWithCo(const real32_T varargin_1[20],
                                     const real32_T varargin_2[20],
                                     real32_T varargout_1[20]);

} // namespace coder

// End of code generation (dlnetwork.h)
