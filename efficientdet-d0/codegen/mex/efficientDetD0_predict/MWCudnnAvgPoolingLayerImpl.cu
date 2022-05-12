#include "MWCudnnAvgPoolingLayerImpl.hpp"
#include "MWCudnnCNNLayerImpl.hpp"
#include "MWCNNLayer.hpp"
#include "MWTensorBase.hpp"
#include "MWTensor.hpp"
#include "MWCudnnTargetNetworkImpl.hpp"
 namespace MWCudnnTarget { 
MWAvgPoolingLayerImpl::MWAvgPoolingLayerImpl(MWCNNLayer* layer, 
MWTargetNetworkImpl* ntwk_impl, int DGzdAcREJHGXjyRzNjJV, int 
ECTnqgWHyHCHCLBZlffd, int FOcStuqCptsGIZXskVpC, int FpguQZSermqZCMRiUfML, 
int CTCbzQMDaLxINPbODdng, int CLOUhPjbgggWoXHTtmjC, int 
CpMjJjtGOeWOzwxpAAQP, int CqtPRJvHlGJFssiPzsOm) : 
MWCNNLayerImpl(layer, ntwk_impl) , SugesRlPIbOVzRgNWRnl(NULL) , 
DCdZnqpcBnvXVgEsLBnz(DGzdAcREJHGXjyRzNjJV) , 
DqxLTLaJwwgQqmrtCDuu(ECTnqgWHyHCHCLBZlffd) , 
CufLFODQDXTAPyRqYodN(DGzdAcREJHGXjyRzNjJV) , 
DSsxcjIrUgZCKZovyNQf(ECTnqgWHyHCHCLBZlffd) , 
FLuSVNoPhAFKtLUchSvv(FOcStuqCptsGIZXskVpC) , 
FeVcBgtQmTLtmnNcJGMY(FpguQZSermqZCMRiUfML) , 
CGbFsczkgkhjcHoCKzBx(CTCbzQMDaLxINPbODdng) , 
CDJtexcMbXMWAmnNZsNf(CLOUhPjbgggWoXHTtmjC) , 
CZNYmBcNFSZWvaCklqeM(CpMjJjtGOeWOzwxpAAQP) , 
ClEhcJFlvGCgiavziIag(CqtPRJvHlGJFssiPzsOm) , 
IAlDgIFcchbwRGBSfVfA((CGbFsczkgkhjcHoCKzBx != CDJtexcMbXMWAmnNZsNf) 
|| (CZNYmBcNFSZWvaCklqeM != ClEhcJFlvGCgiavziIag)) , 
lWJYwWaFPmWNQDPrlqER(CTCbzQMDaLxINPbODdng) , 
lXJKIOEATumoVKStGbVy(CpMjJjtGOeWOzwxpAAQP) , 
puSFZkRJmyuFPfQRswDK(std::pow(2, layer->getScalingExponent())) , 
vFNECEAeLZsYsUxvlgqL(std::string{"INT8x4"}.compare(layer->getAccelMode()) 
== 0){ CUDNN_CALL(cudnnCreatePoolingDescriptor(&lHtftnmGBvlSSoGOXVui)); 
MWTensorBase* ipTensor = getLayer()->getInputTensor(0); if 
(IAlDgIFcchbwRGBSfVfA) { assert(ipTensor->isFloat()); 
lWJYwWaFPmWNQDPrlqER = 0;  lXJKIOEATumoVKStGbVy = 0; 
SugesRlPIbOVzRgNWRnl = new MWTensor<float>(-1, -1, -1, -1, -1, NULL, getLayer(), 
ipTensor->getDataFormat(), 0); if (!SugesRlPIbOVzRgNWRnl) { 
MWCNNLayerImpl::throwAllocationError(__LINE__ , __FILE__); } 
CUDNN_CALL(cudnnCreateTensorDescriptor(&XYbzSmRQGatVJtGmDZSo));  } else { 
SugesRlPIbOVzRgNWRnl = ipTensor;  } assert(SugesRlPIbOVzRgNWRnl != NULL); MWTensorBase* 
opTensorBase = getLayer()->getOutputTensor(0); 
createAndAddDescriptor(opTensorBase->getSourcePortIndex()); if 
(opTensorBase->isInt8()) { 
CUDNN_CALL(cudnnCreateTensorDescriptor(&IpFhwalnAlrMvcuyQpQD)); } } 
MWAvgPoolingLayerImpl::~MWAvgPoolingLayerImpl() { } void 
MWAvgPoolingLayerImpl::propagateSize() { MWTensorBase* ipTensorBase = 
getLayer()->getInputTensor(0); MWTensorBase* opTensorBase = 
getLayer()->getOutputTensor(0);  if ((DCdZnqpcBnvXVgEsLBnz == -1) && 
(DqxLTLaJwwgQqmrtCDuu == -1)) { CufLFODQDXTAPyRqYodN = 
ipTensorBase->getHeight(); DSsxcjIrUgZCKZovyNQf = ipTensorBase->getWidth(); } int 
inputH; int inputW; if (IAlDgIFcchbwRGBSfVfA) { inputH = 
ipTensorBase->getHeight() + CGbFsczkgkhjcHoCKzBx + CDJtexcMbXMWAmnNZsNf;  
inputW = ipTensorBase->getWidth() + CZNYmBcNFSZWvaCklqeM + 
ClEhcJFlvGCgiavziIag; } else { inputH = ipTensorBase->getHeight(); inputW = 
ipTensorBase->getWidth(); } SugesRlPIbOVzRgNWRnl->setHeight(inputH); 
SugesRlPIbOVzRgNWRnl->setWidth(inputW); 
SugesRlPIbOVzRgNWRnl->setChannels(ipTensorBase->getChannels()); 
SugesRlPIbOVzRgNWRnl->setBatchSize(ipTensorBase->getBatchSize()); 
SugesRlPIbOVzRgNWRnl->setSequenceLength(ipTensorBase->getSequenceLength()); 
assert(SugesRlPIbOVzRgNWRnl->getSequenceLength() == 1); 
CUDNN_CALL(cudnnSetPooling2dDescriptor(lHtftnmGBvlSSoGOXVui,  
CUDNN_POOLING_AVERAGE_COUNT_INCLUDE_PADDING,  CUDNN_NOT_PROPAGATE_NAN,  
CufLFODQDXTAPyRqYodN,  DSsxcjIrUgZCKZovyNQf,  lWJYwWaFPmWNQDPrlqER,  
lXJKIOEATumoVKStGbVy,  FLuSVNoPhAFKtLUchSvv,  FeVcBgtQmTLtmnNcJGMY));  
cudnnTensorDescriptor_t* desc = 
getDescriptor(opTensorBase->getSourcePortIndex()); assert(desc); if 
(opTensorBase->isInt8()) { if (vFNECEAeLZsYsUxvlgqL) { 
CUDNN_CALL(cudnnSetTensor4dDescriptor(IpFhwalnAlrMvcuyQpQD, 
CUDNN_TENSOR_NCHW_VECT_C,  CUDNN_DATA_INT8x4,  ipTensorBase->getBatchSize(),  
ipTensorBase->getChannels(),  ipTensorBase->getHeight(),  
ipTensorBase->getWidth())  ); MWCNNLayerImpl::setDescriptorForINT8(*desc, 
static_cast<MWTensor<signed char>*>(opTensorBase), CUDNN_DATA_INT8x4, 
CUDNN_TENSOR_NCHW_VECT_C );  } else { 
CUDNN_CALL(cudnnSetTensor4dDescriptor(IpFhwalnAlrMvcuyQpQD, 
CUDNN_TENSOR_NCHW, CUDNN_DATA_INT8, ipTensorBase->getBatchSize(), 
ipTensorBase->getChannels(), ipTensorBase->getHeight(), 
ipTensorBase->getWidth())); MWCNNLayerImpl::setDescriptorForINT8(*desc, 
static_cast<MWTensor<signed char>*>(opTensorBase), CUDNN_DATA_INT8, 
CUDNN_TENSOR_NCHW); } } else { if (IAlDgIFcchbwRGBSfVfA) { 
CUDNN_CALL(cudnnSetTensor4dDescriptor(XYbzSmRQGatVJtGmDZSo, CUDNN_TENSOR_NCHW, 
CUDNN_DATA_FLOAT, SugesRlPIbOVzRgNWRnl->getBatchSize(), SugesRlPIbOVzRgNWRnl->getChannels(), 
SugesRlPIbOVzRgNWRnl->getHeight(), SugesRlPIbOVzRgNWRnl->getWidth())); } else { 
XYbzSmRQGatVJtGmDZSo = MWCNNLayerImpl::getCuDNNDescriptor(SugesRlPIbOVzRgNWRnl); }  
setDescriptor<float>(*desc, static_cast<MWTensor<float>*>(opTensorBase)); } } 
void MWAvgPoolingLayerImpl::allocate() { MWTensorBase* ipTensorBase = 
getLayer()->getInputTensor(0); if (IAlDgIFcchbwRGBSfVfA) { float* 
newInput; int inputH = ipTensorBase->getHeight() + CGbFsczkgkhjcHoCKzBx + 
CDJtexcMbXMWAmnNZsNf;  int inputW = ipTensorBase->getWidth() + 
CZNYmBcNFSZWvaCklqeM + ClEhcJFlvGCgiavziIag; int paddedSize = 
ipTensorBase->getBatchSize() * ipTensorBase->getChannels() * inputH * inputW; 
CUDA_CALL(cudaMalloc((void**)&newInput, sizeof(float)*paddedSize)); 
CUDA_CALL(cudaMemset(newInput, 0, sizeof(float)*paddedSize)); 
static_cast<MWTensor<float>*>(SugesRlPIbOVzRgNWRnl)->setData(newInput); } } void 
MWAvgPoolingLayerImpl::deallocate() { if (SugesRlPIbOVzRgNWRnl != 
getLayer()->getInputTensor(0)) { assert(IAlDgIFcchbwRGBSfVfA); 
CUDA_FREE_CALL(static_cast<MWTensor<float>*>(SugesRlPIbOVzRgNWRnl)->getData()); 
static_cast<MWTensor<float>*>(SugesRlPIbOVzRgNWRnl)->setData((float*)NULL); } } void 
MWAvgPoolingLayerImpl::predict() { MWTensorBase* opTensorBase = 
getLayer()->getOutputTensor(0); MWTensorBase* ipTensorBase = 
getLayer()->getInputTensor(0); cudnnTensorDescriptor_t* desc = 
getDescriptor(opTensorBase->getSourcePortIndex()); assert(desc); if 
(opTensorBase->isInt8()) { assert(!IAlDgIFcchbwRGBSfVfA); 
MWTensor<signed char>* opTensor = static_cast<MWTensor<signed 
char>*>(opTensorBase); 
CUDNN_CALL(cudnnPoolingForward(*cQBKlCKXxecGPJrXBXdk->getCudnnHandle(), 
lHtftnmGBvlSSoGOXVui, &puSFZkRJmyuFPfQRswDK, 
IpFhwalnAlrMvcuyQpQD, static_cast<MWTensor<signed 
char>*>(SugesRlPIbOVzRgNWRnl)->getData(), getZeroPtr(), *desc, opTensor->getData())); 
}else{ MWTensor<float>* ipTensor = static_cast<MWTensor<float>*>(ipTensorBase); 
MWTensor<float>* opTensor = static_cast<MWTensor<float>*>(opTensorBase); if 
(SugesRlPIbOVzRgNWRnl != ipTensorBase) { 
CUDA_CALL(cudaMemset(static_cast<MWTensor<float>*>(SugesRlPIbOVzRgNWRnl)->getData(), 
0, sizeof(float)*SugesRlPIbOVzRgNWRnl->getNumElements())); 
MWCNNLayerImpl::padInput(ipTensor->getData(), ipTensor->getHeight(), 
ipTensor->getWidth(), ipTensor->getChannels(), SugesRlPIbOVzRgNWRnl->getHeight(), 
SugesRlPIbOVzRgNWRnl->getWidth(), CGbFsczkgkhjcHoCKzBx, CZNYmBcNFSZWvaCklqeM, 
static_cast<MWTensor<float>*>(SugesRlPIbOVzRgNWRnl)->getData(), 
ipTensor->getNumElements()); } assert(opTensor->getData() != 
static_cast<MWTensor<float>*>(SugesRlPIbOVzRgNWRnl)->getData()); 
CUDNN_CALL(cudnnPoolingForward(*cQBKlCKXxecGPJrXBXdk->getCudnnHandle(), 
lHtftnmGBvlSSoGOXVui, getOnePtr(), XYbzSmRQGatVJtGmDZSo, 
static_cast<MWTensor<float>*>(SugesRlPIbOVzRgNWRnl)->getData(), getZeroPtr(), *desc, 
opTensor->getData())); } } void MWAvgPoolingLayerImpl::cleanup() { 
CUDNN_CALL(cudnnDestroyPoolingDescriptor(lHtftnmGBvlSSoGOXVui)); if 
(SugesRlPIbOVzRgNWRnl != getLayer()->getInputTensor(0)) { 
assert(IAlDgIFcchbwRGBSfVfA); 
CUDNN_CALL(cudnnDestroyTensorDescriptor(XYbzSmRQGatVJtGmDZSo)); } MWTensorBase* 
opTensorBase = getLayer()->getOutputTensor(0); if (opTensorBase->isInt8()) { 
CUDNN_CALL(cudnnDestroyTensorDescriptor(IpFhwalnAlrMvcuyQpQD)); }  } } 