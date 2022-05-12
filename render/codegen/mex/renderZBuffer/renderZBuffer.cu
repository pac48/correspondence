//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// renderZBuffer.cu
//
// Code generation for function 'renderZBuffer'
//

// Include files
#include "renderZBuffer.h"
#include "rt_nonfinite.h"
#include "MWCudaDimUtility.hpp"
#include "math_constants.h"

// Function Declarations
static __global__ void renderZBuffer_kernel1(
    const real32_T allColor_data[], const real32_T allVertsCamera_data[],
    const real32_T allVerts2d_data[], const real32_T boundingBox_data[],
    const real32_T distances_data[], const real32_T idxAll_data[],
    const int32_T idxAll_size[3], const real32_T tree_data[],
    real_T vertInds[262144], real32_T im[786432]);

// Function Definitions
static __global__ __launch_bounds__(1024, 1) void renderZBuffer_kernel1(
    const real32_T allColor_data[], const real32_T allVertsCamera_data[],
    const real32_T allVerts2d_data[], const real32_T boundingBox_data[],
    const real32_T distances_data[], const real32_T idxAll_data[],
    const int32_T idxAll_size[3], const real32_T tree_data[],
    real_T vertInds[262144], real32_T im[786432])
{
  uint64_T threadId;
  int32_T px;
  int32_T py;
  real32_T b_colors[9];
  real32_T b_verts2d[6];
  real32_T colors[6];
  real32_T verts2d[6];
  real32_T A[4];
  real32_T point[3];
  real32_T deltas[2];
  real32_T point2d[2];
  real32_T u[2];
  int8_T distInds[2];
  boolean_T x[2];
  threadId = static_cast<uint64_T>(mwGetGlobalThreadIndexInXDimension());
  py = static_cast<int32_T>(threadId % 512ULL);
  px = static_cast<int32_T>((threadId - static_cast<uint64_T>(py)) / 512ULL);
  if ((static_cast<int32_T>(px < 512)) && (static_cast<int32_T>(py < 512))) {
    int32_T binInd;
    int32_T faceInd;
    real32_T depth;
    real32_T pixelX;
    real32_T pixelY;
    faceInd = -1;
    pixelX = 2.0F * ((static_cast<real32_T>(px) + 1.0F) - 256.0F) / 512.0F;
    pixelY = 2.0F * ((static_cast<real32_T>(py) + 1.0F) - 256.0F) / 512.0F;
    //  pixelX = 2*(px - resX/2)/(resX);
    //  pixelY = 2*(py - resY/2)/(resY);
    depth = CUDART_INF_F;
    //  depth = (inf);
    point[0] = 0.0F;
    point[1] = 0.0F;
    point[2] = 0.0F;
    //  color = coder.nullcopy(zeros(3, 1));
    binInd = 1;
    while (binInd != 0) {
      int32_T b_childInd;
      int32_T binInd2;
      int32_T childInd;
      real32_T absxk;
      real32_T t;
      binInd2 = binInd;
      t = tree_data[61 * (binInd - 1) + 5] +
          (tree_data[61 * (binInd - 1) + 6] -
           tree_data[61 * (binInd - 1) + 5]) /
              2.0F;
      absxk = tree_data[61 * (binInd - 1) + 7] +
              (tree_data[61 * (binInd - 1) + 8] -
               tree_data[61 * (binInd - 1) + 7]) /
                  2.0F;
      childInd = ((static_cast<int32_T>(pixelY < absxk) << 1) +
                  static_cast<int32_T>(pixelX > t)) +
                 1;
      if (childInd - 1 == 0) {
        b_childInd = 0;
      } else {
        b_childInd = static_cast<int32_T>(
            fmodf(static_cast<real32_T>(childInd) - 1.0F, 2.0F));
      }
      distInds[0] = static_cast<int8_T>(b_childInd + 1);
      distInds[1] = static_cast<int8_T>(
          4 - static_cast<int32_T>(
                  floorf((static_cast<real32_T>(childInd) - 1.0F) / 2.0F)));
      deltas[0] = fabsf(pixelX - t);
      deltas[1] = fabsf(pixelY - absxk);
      //  for k = 1:4
      //  distInd1 = mod(k-1, 2)+1;
      //      distInd2 = floor((k-1)/2)+3;
      //      [distInd1 distInd2]
      //  end
      //  child1: dist 1 4
      //  child2: dist 2 4
      //  child3: dist 1 3
      //  child4: dist 2 3
      while (binInd2 != 0) {
        //  loop through all overflow
        for (int32_T dInd{0}; dInd < 2; dInd++) {
          b_childInd = 0;
          int32_T exitg1;
          do {
            int32_T r1;
            exitg1 = 0;
            t = roundf(tree_data[61 * (binInd2 - 1) + 9]);
            if (t < 2.14748365E+9F) {
              if (t >= -2.14748365E+9F) {
                r1 = static_cast<int32_T>(t);
              } else {
                r1 = MIN_int32_T;
              }
            } else if (t >= 2.14748365E+9F) {
              r1 = MAX_int32_T;
            } else {
              r1 = 0;
            }
            if (b_childInd < r1) {
              int32_T i;
              int32_T r2;
              b_childInd++;
              t = roundf(
                  idxAll_data[((b_childInd + 50 * (binInd2 - 1)) +
                               50 * idxAll_size[1] *
                                   (static_cast<int32_T>(distInds[dInd]) - 1)) -
                              1]);
              if (t < 2.14748365E+9F) {
                if (t >= -2.14748365E+9F) {
                  r2 = static_cast<int32_T>(t);
                } else {
                  r2 = MIN_int32_T;
                }
              } else if (t >= 2.14748365E+9F) {
                r2 = MAX_int32_T;
              } else {
                r2 = 0;
              }
              if (r2 >= -2147483647) {
                r2--;
              }
              if (r2 > 2147483635) {
                r2 = MAX_int32_T;
              } else {
                r2 += 12;
              }
              t = roundf(tree_data[(r2 + 61 * (binInd2 - 1)) - 1]);
              if (t < 2.14748365E+9F) {
                if (t >= -2.14748365E+9F) {
                  i = static_cast<int32_T>(t);
                } else {
                  i = MIN_int32_T;
                }
              } else if (t >= 2.14748365E+9F) {
                i = MAX_int32_T;
              } else {
                i = 0;
              }
              if (distances_data[(static_cast<int32_T>(distInds[dInd]) +
                                  4 * (i - 1)) -
                                 1] < deltas[dInd]) {
                exitg1 = 1;
              } else if ((static_cast<int32_T>(
                             (static_cast<int32_T>(
                                 (!static_cast<int32_T>(
                                     pixelX < boundingBox_data[4 * (i - 1)])) &&
                                 (!static_cast<int32_T>(
                                     pixelX >
                                     boundingBox_data[4 * (i - 1) + 1])))) &&
                             (!static_cast<int32_T>(
                                 pixelY <
                                 boundingBox_data[4 * (i - 1) + 2])))) &&
                         (!static_cast<int32_T>(
                             pixelY > boundingBox_data[4 * (i - 1) + 3]))) {
                int32_T v;
                boolean_T exitg2;
                boolean_T y;
                v = 3 * (i - 1) + 1;
                r2 = v + 2;
                for (r1 = 0; r1 <= r2 - v; r1++) {
                  b_verts2d[r1 << 1] = allVerts2d_data[2 * ((v + r1) - 1)];
                  b_verts2d[(r1 << 1) + 1] =
                      allVerts2d_data[2 * ((v + r1) - 1) + 1];
                }
                point2d[0] = pixelX - b_verts2d[0];
                point2d[1] = pixelY - b_verts2d[1];
                for (r1 = 0; r1 < 3; r1++) {
                  verts2d[r1 << 1] = b_verts2d[r1 << 1] - b_verts2d[0];
                  verts2d[(r1 << 1) + 1] =
                      b_verts2d[(r1 << 1) + 1] - b_verts2d[1];
                }
                for (r1 = 0; r1 < 6; r1++) {
                  b_verts2d[r1] = verts2d[r1];
                }
                A[0] = b_verts2d[2];
                A[2] = b_verts2d[4];
                A[1] = b_verts2d[3];
                A[3] = b_verts2d[5];
                if (fabsf(b_verts2d[3]) > fabsf(b_verts2d[2])) {
                  r1 = 2;
                  r2 = 1;
                } else {
                  r1 = 1;
                  r2 = 2;
                }
                t = A[r2 - 1] / A[r1 - 1];
                u[1] = (point2d[r2 - 1] - point2d[r1 - 1] * t) /
                       (A[r2 + 1] - t * A[r1 + 1]);
                u[0] = (point2d[r1 - 1] - u[1] * A[r1 + 1]) / A[r1 - 1];
                x[0] = (u[0] < 0.0F);
                x[1] = (u[1] < 0.0F);
                y = false;
                r2 = 0;
                exitg2 = false;
                while ((!static_cast<int32_T>(exitg2)) &&
                       (static_cast<int32_T>(r2 < 2))) {
                  if (x[r2]) {
                    y = true;
                    exitg2 = true;
                  } else {
                    r2++;
                  }
                }
                if (!static_cast<int32_T>(y)) {
                  x[0] = (u[0] > 1.0F);
                  x[1] = (u[1] > 1.0F);
                  r2 = 0;
                  exitg2 = false;
                  while ((!static_cast<int32_T>(exitg2)) &&
                         (static_cast<int32_T>(r2 < 2))) {
                    if (x[r2]) {
                      y = true;
                      exitg2 = true;
                    } else {
                      r2++;
                    }
                  }
                  if ((!static_cast<int32_T>(y)) &&
                      (!static_cast<int32_T>(u[0] + u[1] > 1.0F))) {
                    real32_T d;
                    real32_T scale;
                    r2 = v + 2;
                    for (r1 = 0; r1 <= r2 - v; r1++) {
                      b_colors[3 * r1] =
                          allVertsCamera_data[3 * ((v + r1) - 1)];
                      b_colors[3 * r1 + 1] =
                          allVertsCamera_data[3 * ((v + r1) - 1) + 1];
                      b_colors[3 * r1 + 2] =
                          allVertsCamera_data[3 * ((v + r1) - 1) + 2];
                    }
                    for (r1 = 0; r1 < 2; r1++) {
                      colors[3 * r1] = b_colors[3 * (r1 + 1)] - b_colors[0];
                      colors[3 * r1 + 1] =
                          b_colors[3 * (r1 + 1) + 1] - b_colors[1];
                      colors[3 * r1 + 2] =
                          b_colors[3 * (r1 + 1) + 2] - b_colors[2];
                    }
                    d = 0.0F;
                    scale = 1.29246971E-26F;
                    for (r2 = 0; r2 < 3; r2++) {
                      absxk = fabsf(b_colors[r2] + (colors[r2] * u[0] +
                                                    colors[r2 + 3] * u[1]));
                      if (absxk > scale) {
                        t = scale / absxk;
                        d = d * t * t + 1.0F;
                        scale = absxk;
                      } else {
                        t = absxk / scale;
                        d += t * t;
                      }
                    }
                    d = scale * sqrtf(d);
                    if (d < depth) {
                      depth = d;
                      r2 = v + 2;
                      for (r1 = 0; r1 <= r2 - v; r1++) {
                        b_colors[3 * r1] = allColor_data[3 * ((v + r1) - 1)];
                        b_colors[3 * r1 + 1] =
                            allColor_data[3 * ((v + r1) - 1) + 1];
                        b_colors[3 * r1 + 2] =
                            allColor_data[3 * ((v + r1) - 1) + 2];
                      }
                      for (r1 = 0; r1 < 2; r1++) {
                        colors[3 * r1] = b_colors[3 * (r1 + 1)] - b_colors[0];
                        colors[3 * r1 + 1] =
                            b_colors[3 * (r1 + 1) + 1] - b_colors[1];
                        colors[3 * r1 + 2] =
                            b_colors[3 * (r1 + 1) + 2] - b_colors[2];
                      }
                      for (r1 = 0; r1 < 3; r1++) {
                        point[r1] = b_colors[r1] +
                                    (colors[r1] * u[0] + colors[r1 + 3] * u[1]);
                      }
                      faceInd = i;
                    }
                  } else {
                    //  miss
                  }
                } else {
                  //  miss
                }
              }
            } else {
              exitg1 = 1;
            }
          } while (exitg1 == 0);
        }
        t = roundf(tree_data[61 * (binInd2 - 1) + 4]);
        if (t < 2.14748365E+9F) {
          if (t >= -2.14748365E+9F) {
            binInd2 = static_cast<int32_T>(t);
          } else {
            binInd2 = MIN_int32_T;
          }
        } else if (t >= 2.14748365E+9F) {
          binInd2 = MAX_int32_T;
        } else {
          binInd2 = 0;
        }
      }
      t = roundf(tree_data[(childInd + 61 * (binInd - 1)) - 1]);
      if (t < 2.14748365E+9F) {
        if (t >= -2.14748365E+9F) {
          binInd = static_cast<int32_T>(t);
        } else {
          binInd = MIN_int32_T;
        }
      } else if (t >= 2.14748365E+9F) {
        binInd = MAX_int32_T;
      } else {
        binInd = 0;
      }
    }
    //  count
    im[((px << 9) - py) + 511] = point[0];
    im[((px << 9) - py) + 262655] = point[1];
    im[((px << 9) - py) + 524799] = point[2];
    vertInds[((px << 9) - py) + 511] = static_cast<real_T>(faceInd);
  }
}

void renderZBuffer(const real32_T allVerts2d_data[], const int32_T[2],
                   const real32_T allVertsCamera_data[], const int32_T[2],
                   const real32_T allColor_data[], const int32_T[2],
                   const real32_T boundingBox_data[], const int32_T[2],
                   const real32_T tree_data[], const int32_T[2],
                   const real32_T idxAll_data[], const int32_T idxAll_size[3],
                   const real32_T distances_data[], const int32_T[2],
                   real32_T im[786432], real_T vertInds[262144])
{
  int32_T(*gpu_idxAll_size)[3];
  cudaMalloc(&gpu_idxAll_size, 12ULL);
  //  vertInds = coder.nullcopy(zeros(resX, resY, 'int32'));
  //  for px = int32(1):resX
  //      for py = int32(1):resY
  cudaMemcpy(*gpu_idxAll_size, idxAll_size, 12ULL, cudaMemcpyHostToDevice);
  renderZBuffer_kernel1<<<dim3(256U, 1U, 1U), dim3(1024U, 1U, 1U)>>>(
      allColor_data, allVertsCamera_data, allVerts2d_data, boundingBox_data,
      distances_data, idxAll_data, *gpu_idxAll_size, tree_data, vertInds, im);
  cudaFree(*gpu_idxAll_size);
}

// End of code generation (renderZBuffer.cu)
