/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * getQuadTree_types.h
 *
 * Code generation for function 'getQuadTree'
 *
 */

#pragma once

/* Include files */
#include "rtwtypes.h"
#include "emlrt.h"

/* Type Definitions */
#ifndef struct_emxArray_real32_T
#define struct_emxArray_real32_T
struct emxArray_real32_T {
  real32_T *data;
  int32_T *size;
  int32_T allocatedSize;
  int32_T numDimensions;
  boolean_T canFreeData;
};
#endif /* struct_emxArray_real32_T */
#ifndef typedef_emxArray_real32_T
#define typedef_emxArray_real32_T
typedef struct emxArray_real32_T emxArray_real32_T;
#endif /* typedef_emxArray_real32_T */

#ifndef struct_emxArray_real_T
#define struct_emxArray_real_T
struct emxArray_real_T {
  real_T *data;
  int32_T *size;
  int32_T allocatedSize;
  int32_T numDimensions;
  boolean_T canFreeData;
};
#endif /* struct_emxArray_real_T */
#ifndef typedef_emxArray_real_T
#define typedef_emxArray_real_T
typedef struct emxArray_real_T emxArray_real_T;
#endif /* typedef_emxArray_real_T */

#ifndef typedef_cell_wrap_3
#define typedef_cell_wrap_3
typedef struct {
  emxArray_real32_T *f1;
} cell_wrap_3;
#endif /* typedef_cell_wrap_3 */

#ifndef typedef_b_getQuadTree
#define typedef_b_getQuadTree
typedef struct {
  real_T bins[610000];
} b_getQuadTree;
#endif /* typedef_b_getQuadTree */

#ifndef typedef_getQuadTreeStackData
#define typedef_getQuadTreeStackData
typedef struct {
  b_getQuadTree f0;
} getQuadTreeStackData;
#endif /* typedef_getQuadTreeStackData */

/* End of code generation (getQuadTree_types.h) */
