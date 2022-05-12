//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// efficientDetD0_predict_data.cu
//
// Code generation for function 'efficientDetD0_predict_data'
//

// Include files
#include "efficientDetD0_predict_data.h"
#include "rt_nonfinite.h"

// Variable Definitions
emlrtCTX emlrtRootTLSGlobal{nullptr};

emlrtContext emlrtContextGlobal{
    true,                                                // bFirstTime
    false,                                               // bInitialized
    131611U,                                             // fVersionInfo
    nullptr,                                             // fErrorFunction
    "efficientDetD0_predict",                            // fFunctionName
    nullptr,                                             // fRTCallStack
    false,                                               // bDebugMode
    {2972408902U, 284659433U, 4288192657U, 4262179843U}, // fSigWrd
    nullptr                                              // fSigMem
};

int8_T (*xq_gpu_clone)[8];

int8_T (*b_xq_gpu_clone)[16];

int8_T (*c_xq_gpu_clone)[32];

int8_T (*d_xq_gpu_clone)[64];

// End of code generation (efficientDetD0_predict_data.cu)
