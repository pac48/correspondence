/* Copyright 2018-2021 The MathWorks, Inc. */

#ifndef MW_CUDNN_CONV_LAYER_IMPL
#define MW_CUDNN_CONV_LAYER_IMPL

#include "MWCudnnCNNLayerImpl.hpp"

#include <vector>

class MWCNNLayer;

namespace MWCudnnTarget
{

class MWTargetNetworkImpl;

/**
 * Codegen class for Convolution layer implementation
 */
class MWConvLayerImpl : public MWCNNLayerImpl
{   
  private:
    
    int AzTsxYcYjIEJsGQbeYHm;          
    int BHuHNDGoRwGRouCxeMbw;          

    int BkwhtPQUCQKchmmimoXs;
    int BUOdotSvmFyUWQKMUdra;
    int BdqURaHPmdnfzvtUvocl;

    int AdmgfUbRAfzFeYHxSnQr;
    int AuqaQHxmPQSyYRemQvyX;

    int CGbFsczkgkhjcHoCKzBx;
    int CDJtexcMbXMWAmnNZsNf;
    int CZNYmBcNFSZWvaCklqeM;
    int ClEhcJFlvGCgiavziIag;

    int FLuSVNoPhAFKtLUchSvv;
    int FeVcBgtQmTLtmnNcJGMY;  

    float* vIWQzNvYZSuxmOTVDFhU;
    float* IwKnaBoXVubIRYcxEJLH;

    // for temporary pre-padded input for asymmetric padding
    MWTensorBase* SugesRlPIbOVzRgNWRnl;
    int bERCRkGjpaKXMNComoYl;
    int bOrQjJTNlssnrexxbHdi;

    bool IAlDgIFcchbwRGBSfVfA;

  public:
    
    MWConvLayerImpl(MWCNNLayer* layer,
                    MWTargetNetworkImpl* ntwk_impl,
                    int filt_H,
                    int filt_W,
                    int numGrps,
                    int numChannels,
                    int numFilts,
                    int FLuSVNoPhAFKtLUchSvv,
                    int FeVcBgtQmTLtmnNcJGMY,
                    int CGbFsczkgkhjcHoCKzBx,
                    int CDJtexcMbXMWAmnNZsNf,
                    int CZNYmBcNFSZWvaCklqeM,
                    int ClEhcJFlvGCgiavziIag,
                    int AdmgfUbRAfzFeYHxSnQr,
                    int AuqaQHxmPQSyYRemQvyX,
                    const char* xHViLEwTujGGrPZZgmbF,
                    const char* JxwPQNPACGfmGpNncpCY);
    
    ~MWConvLayerImpl(){}

    void predict();
    void cleanup();
    void postSetup();
    void propagateSize();
    void allocate();
    void deallocate();
    void setLearnables(std::vector<float*>);

  private:
    
    void loadWeights(const char*);
    void loadBias(const char*);
    void getConvAlgoTuned();
    void getConvAlgoWorkSpaceLimit();
		
  private:
    
    cudnnConvolutionDescriptor_t  NMMfJylfQjiIUAKhXCJb;
    cudnnConvolutionFwdAlgo_t     NDjzAZSYJuWymuKDNZYB;

    cudnnFilterDescriptor_t       PtkeOkuClHzhOfpmBevf;
    cudnnTensorDescriptor_t       JsZenQeBPMhwsyEhVHiD;

    cudnnTensorDescriptor_t       XYbzSmRQGatVJtGmDZSo;

};

} // namespace MWCudnnTarget

#endif
