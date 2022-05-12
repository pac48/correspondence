/* Copyright 2017-2021 The MathWorks, Inc. */

#ifndef MW_SPLITTING_LAYER
#define MW_SPLITTING_LAYER

#include "MWCNNLayer.hpp"

class MWTargetNetworkImplBase;
class MWTensorBase;

/**
  *  Codegen class for Splitting layer
  *  Splitting a tensor across channels
**/
class MWSplittingLayer : public MWCNNLayer
{
  public:
    MWSplittingLayer();
    ~MWSplittingLayer();

    void createSplittingLayer(MWTargetNetworkImplBase* , MWTensorBase* tensorInput, ...);
    void propagateSize();

  private:
    int* channelSizes;
};

#endif
