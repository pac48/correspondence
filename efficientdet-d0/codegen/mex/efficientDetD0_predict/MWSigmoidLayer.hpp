/* Copyright 2018-2021 The MathWorks, Inc. */

// Target Agnostic header for Keras' Sigmoid Layer
#ifndef MW_SIGMOID_LAYER
#define MW_SIGMOID_LAYER

#include "MWCNNLayer.hpp"

class MWTargetNetworkImplBase;
class MWTensorBase;

/**
  * Codegen class for Keras Sigmoid Layer
**/
class MWSigmoidLayer : public MWCNNLayer
{
  public:
    MWSigmoidLayer();
    ~MWSigmoidLayer();

    /** Create a new Sigmoid Layer */
    void createSigmoidLayer(MWTargetNetworkImplBase*, MWTensorBase*, const char*, int);
    void propagateSize();
};
#endif
