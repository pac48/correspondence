/* Copyright 2021 The MathWorks, Inc. */

#ifndef MW_CUDNN_LAYER_IMPL_FACTORY
#define MW_CUDNN_LAYER_IMPL_FACTORY

#include "MWLayerImplFactory.hpp"

class MWCNNLayerImplBase;

class MWCudnnLayerImplFactory : public MWLayerImplFactory {

  public:
    
    MWCudnnLayerImplFactory() {}
    virtual ~MWCudnnLayerImplFactory() {}

    // auto-emit createLayerImpl declarations here

#ifndef CREATE_INPUT_LAYER_IMPL_DECLARATION
#define CREATE_INPUT_LAYER_IMPL_DECLARATION

MWCNNLayerImplBase* createInputLayerImpl(MWCNNLayer* arg1,
MWTargetNetworkImplBase* arg2);


#endif

#ifndef CREATE_CONV_LAYER_IMPL_DECLARATION
#define CREATE_CONV_LAYER_IMPL_DECLARATION

MWCNNLayerImplBase* createConvLayerImpl(MWCNNLayer* arg1,
MWTargetNetworkImplBase* arg2,
int arg3,
int arg4,
int arg5,
int arg6,
int arg7,
int arg8,
int arg9,
int arg10,
int arg11,
int arg12,
int arg13,
int arg14,
int arg15,
const char* arg16,
const char* arg17);


#endif

#ifndef CREATE_SIGMOID_LAYER_IMPL_DECLARATION
#define CREATE_SIGMOID_LAYER_IMPL_DECLARATION

MWCNNLayerImplBase* createSigmoidLayerImpl(MWCNNLayer* arg1,
MWTargetNetworkImplBase* arg2);


#endif

#ifndef CREATE_AVGPOOLING_LAYER_IMPL_DECLARATION
#define CREATE_AVGPOOLING_LAYER_IMPL_DECLARATION

MWCNNLayerImplBase* createAvgPoolingLayerImpl(MWCNNLayer* arg1,
MWTargetNetworkImplBase* arg2,
int arg3,
int arg4,
int arg5,
int arg6,
int arg7,
int arg8,
int arg9,
int arg10);


#endif

#ifndef CREATE_ADDITION_LAYER_IMPL_DECLARATION
#define CREATE_ADDITION_LAYER_IMPL_DECLARATION

MWCNNLayerImplBase* createAdditionLayerImpl(MWCNNLayer* arg1,
MWTargetNetworkImplBase* arg2);


#endif

#ifndef CREATE_SPLITTING_LAYER_IMPL_DECLARATION
#define CREATE_SPLITTING_LAYER_IMPL_DECLARATION

MWCNNLayerImplBase* createSplittingLayerImpl(MWCNNLayer* arg1,
MWTargetNetworkImplBase* arg2,
int arg3,
int* arg4);


#endif

#ifndef CREATE_MAXPOOLING_LAYER_IMPL_DECLARATION
#define CREATE_MAXPOOLING_LAYER_IMPL_DECLARATION

MWCNNLayerImplBase* createMaxPoolingLayerImpl(MWCNNLayer* arg1,
MWTargetNetworkImplBase* arg2,
int arg3,
int arg4,
int arg5,
int arg6,
int arg7,
int arg8,
int arg9,
int arg10,
bool arg11,
int arg12);


#endif

#ifndef CREATE_ELEMENTWISEAFFINE_LAYER_IMPL_DECLARATION
#define CREATE_ELEMENTWISEAFFINE_LAYER_IMPL_DECLARATION

MWCNNLayerImplBase* createElementwiseAffineLayerImpl(MWCNNLayer* arg1,
MWTargetNetworkImplBase* arg2,
int arg3,
int arg4,
int arg5,
int arg6,
int arg7,
int arg8,
bool arg9,
int arg10,
int arg11,
const char* arg12,
const char* arg13);


#endif

#ifndef CREATE_OUTPUT_LAYER_IMPL_DECLARATION
#define CREATE_OUTPUT_LAYER_IMPL_DECLARATION

MWCNNLayerImplBase* createOutputLayerImpl(MWCNNLayer* arg1,
MWTargetNetworkImplBase* arg2);


#endif
};
#endif