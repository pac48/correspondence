/* Copyright 2020-2021 The MathWorks, Inc. */

#ifndef MW_AVG_POOLING_LAYER
#define MW_AVG_POOLING_LAYER

#include "MWCNNLayer.hpp"

class MWTargetNetworkImplBase;
class MWTensorBase;

// AvgPooling2DLayer
class MWAvgPoolingLayer : public MWCNNLayer {
  public:
    MWAvgPoolingLayer()
        : isGlobalAveragePooling(false) {
    }
    ~MWAvgPoolingLayer() {
    }

    template <typename T1, typename T2>
    void createAvgPoolingLayer(MWTargetNetworkImplBase*,
                               MWTensorBase*,
                               int,
                               int,
                               int,
                               int,
                               int,
                               int,
                               int,
                               int,
                               int,
                               const char*,
                               int,
                               const char*,
                               int);
    void propagateSize();

  private:
    int strideH;
    int strideW;

    int poolH;
    int poolW;

    int paddingH_T;
    int paddingH_B;
    int paddingW_L;
    int paddingW_R;

    bool isGlobalAveragePooling;
};

#endif
