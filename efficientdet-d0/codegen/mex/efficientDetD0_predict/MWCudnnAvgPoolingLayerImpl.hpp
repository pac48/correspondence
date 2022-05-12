/* Copyright 2020-2021 The MathWorks, Inc. */

#ifndef MW_CUDNN_AVG_POOLING_LAYER_IMPL
#define MW_CUDNN_AVG_POOLING_LAYER_IMPL

#include "MWCudnnCNNLayerImpl.hpp"

class MWCNNLayer;

namespace MWCudnnTarget
{

class MWTargetNetworkImpl;

//AvgPooling2DLayer
class MWAvgPoolingLayerImpl : public MWCNNLayerImpl
{
public:
    //Create AvgPooling2DLayer with PoolSize = [ PoolH PoolW ]
    //                                Stride = [ StrideH StrideW ]
    //                               Padding = [ PaddingH_T PaddingH_B PaddingW_L PaddingW_R ]
    MWAvgPoolingLayerImpl(MWCNNLayer*, MWTargetNetworkImpl*, int, int, int, int, int, int, int, int);
    ~MWAvgPoolingLayerImpl();

    void predict();
    void cleanup();
    void propagateSize();
    void allocate();
    void deallocate();

  public:
    int DCdZnqpcBnvXVgEsLBnz;
    int DqxLTLaJwwgQqmrtCDuu;
    int CufLFODQDXTAPyRqYodN;
    int DSsxcjIrUgZCKZovyNQf; 
    int FLuSVNoPhAFKtLUchSvv; 
    int FeVcBgtQmTLtmnNcJGMY; 
    int CGbFsczkgkhjcHoCKzBx; 
    int CDJtexcMbXMWAmnNZsNf;
    int CZNYmBcNFSZWvaCklqeM;
    int ClEhcJFlvGCgiavziIag;
    
private:
    cudnnPoolingDescriptor_t      lHtftnmGBvlSSoGOXVui;
    int lWJYwWaFPmWNQDPrlqER;
    int lXJKIOEATumoVKStGbVy;
    
    cudnnTensorDescriptor_t       XYbzSmRQGatVJtGmDZSo;
    // for temporary pre-padded input for asymmetric padding
    MWTensorBase* SugesRlPIbOVzRgNWRnl; 
    int bMAyVFGSPDjmUbziYLAy;
    int bLhHPDtQpqOAnMiVledO;
    bool IAlDgIFcchbwRGBSfVfA;
    float puSFZkRJmyuFPfQRswDK;
    bool vFNECEAeLZsYsUxvlgqL;
    cudnnTensorDescriptor_t IpFhwalnAlrMvcuyQpQD;
};

} // namespace MWCudnnTarget

#endif
