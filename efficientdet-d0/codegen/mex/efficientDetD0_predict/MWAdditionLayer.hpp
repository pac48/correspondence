/* Copyright 2017-2021 The MathWorks, Inc. */

#ifndef MW_ADDITION_LAYER
#define MW_ADDITION_LAYER

#include "MWCNNLayer.hpp"

class MWTargetNetworkImplBase;

/**
 *  Codegen class for AdditionLayer
 *  ElementWise Addition layer
 **/
class MWAdditionLayer : public MWCNNLayer {
  public:
    MWAdditionLayer();
    ~MWAdditionLayer();

    template <typename T1, typename T2>
    void createAdditionLayer(MWTargetNetworkImplBase*, int numInputs, ...);
    void propagateSize();

};

#endif
