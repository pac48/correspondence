/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * getQuadTree.h
 *
 * Code generation for function 'getQuadTree'
 *
 */

#pragma once

/* Include files */
#include "getQuadTree_types.h"
#include "rtwtypes.h"
#include "emlrt.h"
#include "mex.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* Function Declarations */
void getQuadTree(getQuadTreeStackData *SD, const emlrtStack *sp,
                 const emxArray_real32_T *allVerts2d, emxArray_real_T *bins,
                 emxArray_real_T *distances);

/* End of code generation (getQuadTree.h) */
