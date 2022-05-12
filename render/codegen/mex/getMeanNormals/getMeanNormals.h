/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * getMeanNormals.h
 *
 * Code generation for function 'getMeanNormals'
 *
 */

#pragma once

/* Include files */
#include "getMeanNormals_types.h"
#include "rtwtypes.h"
#include "emlrt.h"
#include "mex.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* Function Declarations */
void getMeanNormals(const emlrtStack *sp, const emxArray_real32_T *normals,
                    const emxArray_int32_T *vertOrder,
                    emxArray_real_T *meanNorms);

/* End of code generation (getMeanNormals.h) */
