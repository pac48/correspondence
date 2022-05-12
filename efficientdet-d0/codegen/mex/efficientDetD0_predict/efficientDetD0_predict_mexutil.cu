//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// efficientDetD0_predict_mexutil.cu
//
// Code generation for function 'efficientDetD0_predict_mexutil'
//

// Include files
#include "efficientDetD0_predict_mexutil.h"
#include "efficientDetD0_predict_data.h"
#include "rt_nonfinite.h"

// Function Definitions
void checkRunTimeError(const char_T *errMsg, const char_T *file, uint32_T line)
{
  emlrtRTEInfo rtInfo;
  uint32_T errMsgLen;
  rtInfo = createEmlrtInfoStruct(file, line);
  errMsgLen = (uint32_T)strlen(errMsg);
  emlrtErrorWithMessageIdR2018a(
      emlrtRootTLSGlobal, &rtInfo, "dnn_core:cnncodegen:RunTimeError",
      "dnn_core:cnncodegen:RunTimeError", 3, mxCHAR_CLASS, errMsgLen, errMsg);
}

emlrtRTEInfo createEmlrtInfoStruct(const char_T *file, uint32_T line)
{
  emlrtRTEInfo b_rtInfo;
  uint32_T len;
  char_T *brk;
  char_T *fn;
  char_T *pn;
  len = (uint32_T)strlen(file);
  pn = (char_T *)calloc(len + 1U, 1U);
  fn = (char_T *)calloc(len + 1U, 1U);
  memcpy(pn, file, len);
  memcpy(fn, file, len);
  brk = strrchr(fn, '.');
  *brk = '\x00';
  brk = strrchr(fn, '/');
  if (brk == nullptr) {
    brk = strrchr(fn, '\\');
  }
  if (brk == nullptr) {
    brk = fn;
  } else {
    brk++;
  }
  b_rtInfo.lineNo = static_cast<int32_T>(line);
  b_rtInfo.colNo = 0;
  b_rtInfo.fName = brk;
  b_rtInfo.pName = pn;
  return b_rtInfo;
}

// End of code generation (efficientDetD0_predict_mexutil.cu)
