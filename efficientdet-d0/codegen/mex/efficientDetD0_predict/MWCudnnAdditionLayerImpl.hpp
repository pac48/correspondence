/* Copyright 2017-2021 The MathWorks, Inc. */

#ifndef MW_CUDNN_ADDITION_LAYER_IMPL
#define MW_CUDNN_ADDITION_LAYER_IMPL

#include "MWCudnnCNNLayerImpl.hpp"

class MWCNNLayer;

namespace MWCudnnTarget
{

class MWTargetNetworkImpl;

class MWAdditionLayerImpl : public MWCNNLayerImpl {
  public:
    MWAdditionLayerImpl(MWCNNLayer*, MWTargetNetworkImpl*);
    ~MWAdditionLayerImpl();

    void predict();
    void cleanup();
    void propagateSize();
};
} // namespace MWCudnnTarget

#endif
