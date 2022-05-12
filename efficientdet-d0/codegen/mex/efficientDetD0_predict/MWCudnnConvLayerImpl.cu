#include "MWCudnnConvLayerImpl.hpp"
#include "MWCudnnCNNLayerImpl.hpp"
#include "MWCNNLayer.hpp"
#include "MWTensorBase.hpp"
#include "MWTensor.hpp"
#include "MWCudnnTargetNetworkImpl.hpp"
#include <cassert>
#include <cstdio>
#include <vector>
 namespace MWCudnnTarget { MWConvLayerImpl::MWConvLayerImpl(MWCNNLayer* layer, 
MWTargetNetworkImpl* ntwk_impl, int filt_H, int filt_W, int numGrps, int 
numChnls, int numFilts, int FOcStuqCptsGIZXskVpC, int 
FpguQZSermqZCMRiUfML, int CTCbzQMDaLxINPbODdng, int 
CLOUhPjbgggWoXHTtmjC, int CpMjJjtGOeWOzwxpAAQP, int 
CqtPRJvHlGJFssiPzsOm, int AjhVZuQXURJimwbnYqDF, int 
AwZQzUhuWVLGrWgLHRuM, const char* xHViLEwTujGGrPZZgmbF, const 
char* JxwPQNPACGfmGpNncpCY) : MWCNNLayerImpl(layer, ntwk_impl) , 
vIWQzNvYZSuxmOTVDFhU(NULL) , IwKnaBoXVubIRYcxEJLH(NULL) , SugesRlPIbOVzRgNWRnl(NULL) , 
AzTsxYcYjIEJsGQbeYHm(filt_H) , BHuHNDGoRwGRouCxeMbw (filt_W) , 
BkwhtPQUCQKchmmimoXs (numGrps) , BUOdotSvmFyUWQKMUdra (numChnls) , 
BdqURaHPmdnfzvtUvocl (numFilts) , 
AdmgfUbRAfzFeYHxSnQr(AjhVZuQXURJimwbnYqDF) , 
AuqaQHxmPQSyYRemQvyX(AwZQzUhuWVLGrWgLHRuM) , 
CGbFsczkgkhjcHoCKzBx(CTCbzQMDaLxINPbODdng) , 
CDJtexcMbXMWAmnNZsNf(CLOUhPjbgggWoXHTtmjC) , 
CZNYmBcNFSZWvaCklqeM(CpMjJjtGOeWOzwxpAAQP) , 
ClEhcJFlvGCgiavziIag(CqtPRJvHlGJFssiPzsOm) , 
FLuSVNoPhAFKtLUchSvv(FOcStuqCptsGIZXskVpC) , 
FeVcBgtQmTLtmnNcJGMY(FpguQZSermqZCMRiUfML) , 
IAlDgIFcchbwRGBSfVfA((CGbFsczkgkhjcHoCKzBx != CDJtexcMbXMWAmnNZsNf) 
|| (CZNYmBcNFSZWvaCklqeM != ClEhcJFlvGCgiavziIag)) { cQBKlCKXxecGPJrXBXdk = 
ntwk_impl; CUDNN_CALL(cudnnCreateConvolutionDescriptor(&NMMfJylfQjiIUAKhXCJb)); 
CUDNN_CALL(cudnnCreateFilterDescriptor(&PtkeOkuClHzhOfpmBevf)); 
CUDNN_CALL(cudnnCreateTensorDescriptor(&JsZenQeBPMhwsyEhVHiD));  MWCNNLayer* 
convLayer = getLayer(); MWTensorBase* ipTensor = convLayer->getInputTensor(0); 
if (IAlDgIFcchbwRGBSfVfA) { SugesRlPIbOVzRgNWRnl = new MWTensor<float>(-1, 
-1, -1, -1, -1, NULL, getLayer(), ipTensor->getDataFormat(), 0); if 
(!SugesRlPIbOVzRgNWRnl) { MWCNNLayerImpl::throwAllocationError(__LINE__ , __FILE__); } 
CUDNN_CALL(cudnnCreateTensorDescriptor(&XYbzSmRQGatVJtGmDZSo)); } else { 
SugesRlPIbOVzRgNWRnl = ipTensor; } assert(SugesRlPIbOVzRgNWRnl != NULL); int 
NNhshzQGJHLSGjDiVerE; int NXruhrCCiguRjAgSNDuz; if 
(IAlDgIFcchbwRGBSfVfA) { NNhshzQGJHLSGjDiVerE = 0;  
NXruhrCCiguRjAgSNDuz = 0; } else { NNhshzQGJHLSGjDiVerE = 
CGbFsczkgkhjcHoCKzBx; NXruhrCCiguRjAgSNDuz = CZNYmBcNFSZWvaCklqeM; } 
bERCRkGjpaKXMNComoYl = CGbFsczkgkhjcHoCKzBx; bOrQjJTNlssnrexxbHdi = CZNYmBcNFSZWvaCklqeM;
#if (CUDNN_MAJOR <= 5)
 { if ((AdmgfUbRAfzFeYHxSnQr != 1) && (AuqaQHxmPQSyYRemQvyX != 1)){ 
printf("Dilated Convolution only supported for cuDNN 6 or greater "); throw 
std::runtime_error("Unsupported Dilation Factor"); } 
CUDNN_CALL(cudnnSetConvolution2dDescriptor(NMMfJylfQjiIUAKhXCJb, 
NNhshzQGJHLSGjDiVerE, NXruhrCCiguRjAgSNDuz, FLuSVNoPhAFKtLUchSvv, 
FeVcBgtQmTLtmnNcJGMY, 1, 1, CUDNN_CROSS_CORRELATION));  }
#else
 { CUDNN_CALL(cudnnSetConvolution2dDescriptor(NMMfJylfQjiIUAKhXCJb, 
NNhshzQGJHLSGjDiVerE, NXruhrCCiguRjAgSNDuz, FLuSVNoPhAFKtLUchSvv, 
FeVcBgtQmTLtmnNcJGMY, AdmgfUbRAfzFeYHxSnQr, AuqaQHxmPQSyYRemQvyX, 
CUDNN_CROSS_CORRELATION, CUDNN_DATA_FLOAT)); }
#endif
#if (FP16_ENABLED == 1 && ( CUDNN_MAJOR > 7 || (CUDNN_MAJOR == 7 && CUDNN_MINOR >= 2) ))
 CUDNN_CALL(cudnnSetConvolutionMathType(NMMfJylfQjiIUAKhXCJb, CUDNN_TENSOR_OP_MATH_ALLOW_CONVERSION));
#endif
 if (BkwhtPQUCQKchmmimoXs > 1){ 
CUDNN_CALL(cudnnSetConvolutionGroupCount(NMMfJylfQjiIUAKhXCJb, 
BkwhtPQUCQKchmmimoXs)); } int eWYFXrUazhqiEIscccda = 
BUOdotSvmFyUWQKMUdra*BkwhtPQUCQKchmmimoXs; int eqmVWbEcwBRGnVNDUtrG = 
BdqURaHPmdnfzvtUvocl*BkwhtPQUCQKchmmimoXs; 
CUDNN_CALL(cudnnSetFilter4dDescriptor(PtkeOkuClHzhOfpmBevf, CUDNN_DATA_FLOAT, 
CUDNN_TENSOR_NCHW, eqmVWbEcwBRGnVNDUtrG, 
eWYFXrUazhqiEIscccda/BkwhtPQUCQKchmmimoXs, AzTsxYcYjIEJsGQbeYHm, 
BHuHNDGoRwGRouCxeMbw)); 
CUDNN_CALL(cudnnSetTensor4dDescriptor(JsZenQeBPMhwsyEhVHiD, CUDNN_TENSOR_NCHW, 
CUDNN_DATA_FLOAT, 1, eqmVWbEcwBRGnVNDUtrG, 1, 1)); int weightSize = 
BUOdotSvmFyUWQKMUdra*eqmVWbEcwBRGnVNDUtrG*AzTsxYcYjIEJsGQbeYHm*BHuHNDGoRwGRouCxeMbw; 
CUDA_CALL(cudaMalloc((void**)&vIWQzNvYZSuxmOTVDFhU, sizeof(float)*weightSize)); 
CUDA_CALL(cudaMalloc((void**)&IwKnaBoXVubIRYcxEJLH, 
sizeof(float)*eqmVWbEcwBRGnVNDUtrG)); 
loadWeights(xHViLEwTujGGrPZZgmbF); loadBias(JxwPQNPACGfmGpNncpCY); 
createAndAddDescriptor(getLayer()->getOutputTensor()->getSourcePortIndex()); } 
void MWConvLayerImpl::propagateSize() { MWTensorBase* ipTensor = 
getLayer()->getInputTensor(0); int inputH; int inputW; if 
(IAlDgIFcchbwRGBSfVfA) { inputH = ipTensor->getHeight() + 
CGbFsczkgkhjcHoCKzBx + CDJtexcMbXMWAmnNZsNf; inputW = ipTensor->getWidth() + 
CZNYmBcNFSZWvaCklqeM + ClEhcJFlvGCgiavziIag; } else { inputH = 
ipTensor->getHeight(); inputW = ipTensor->getWidth(); } 
SugesRlPIbOVzRgNWRnl->setHeight(inputH); SugesRlPIbOVzRgNWRnl->setWidth(inputW); 
SugesRlPIbOVzRgNWRnl->setChannels(ipTensor->getChannels()); 
SugesRlPIbOVzRgNWRnl->setBatchSize(ipTensor->getBatchSize()); 
SugesRlPIbOVzRgNWRnl->setSequenceLength(ipTensor->getSequenceLength()); 
assert(SugesRlPIbOVzRgNWRnl->getSequenceLength() == 1); if 
(IAlDgIFcchbwRGBSfVfA) { 
CUDNN_CALL(cudnnSetTensor4dDescriptor(XYbzSmRQGatVJtGmDZSo, CUDNN_TENSOR_NCHW, 
CUDNN_DATA_FLOAT, SugesRlPIbOVzRgNWRnl->getBatchSize(), SugesRlPIbOVzRgNWRnl->getChannels(), 
SugesRlPIbOVzRgNWRnl->getHeight(), SugesRlPIbOVzRgNWRnl->getWidth())); } else { 
XYbzSmRQGatVJtGmDZSo = MWCNNLayerImpl::getCuDNNDescriptor(SugesRlPIbOVzRgNWRnl); } 
MWTensorBase* opTensor = getLayer()->getOutputTensor(0); 
cudnnTensorDescriptor_t* desc = getDescriptor(opTensor->getSourcePortIndex()); 
assert(desc); setDescriptor<float>(*desc, static_cast<MWTensor<float>*>(opTensor));
#if (CUDNN_MAJOR < 7)
 { 
CUDNN_CALL(cudnnGetConvolutionForwardAlgorithm(*cQBKlCKXxecGPJrXBXdk->getCudnnHandle(), 
XYbzSmRQGatVJtGmDZSo, PtkeOkuClHzhOfpmBevf, NMMfJylfQjiIUAKhXCJb, *desc, 
CUDNN_CONVOLUTION_FWD_PREFER_FASTEST, 0, &NDjzAZSYJuWymuKDNZYB)); }
#else
 { const int maxAlgoCount(3); int returnedAlgoCount(-1);  
cudnnConvolutionFwdAlgoPerf_t perf_results[maxAlgoCount]; 
CUDNN_CALL(cudnnGetConvolutionForwardAlgorithm_v7(*cQBKlCKXxecGPJrXBXdk->getCudnnHandle(), 
XYbzSmRQGatVJtGmDZSo, PtkeOkuClHzhOfpmBevf, NMMfJylfQjiIUAKhXCJb, *desc, 
maxAlgoCount, &returnedAlgoCount, perf_results)); NDjzAZSYJuWymuKDNZYB = 
perf_results[0].algo; }
#endif
 size_t sxuOMwKXOKfuExclRaSe = 0; 
CUDNN_CALL(cudnnGetConvolutionForwardWorkspaceSize( 
*cQBKlCKXxecGPJrXBXdk->getCudnnHandle(), XYbzSmRQGatVJtGmDZSo, 
PtkeOkuClHzhOfpmBevf, NMMfJylfQjiIUAKhXCJb, *desc, NDjzAZSYJuWymuKDNZYB, 
&sxuOMwKXOKfuExclRaSe)); if (sxuOMwKXOKfuExclRaSe > 
*cQBKlCKXxecGPJrXBXdk->getProposedWorkSpaceSize()) { 
cQBKlCKXxecGPJrXBXdk->setProposedWorkSpaceSize(sxuOMwKXOKfuExclRaSe); } } void 
MWConvLayerImpl::allocate() { MWTensorBase* ipTensor = 
getLayer()->getInputTensor(0); if (IAlDgIFcchbwRGBSfVfA) { float* 
newInput; int inputH = ipTensor->getHeight() + CGbFsczkgkhjcHoCKzBx + 
CDJtexcMbXMWAmnNZsNf; int inputW = ipTensor->getWidth() + 
CZNYmBcNFSZWvaCklqeM + ClEhcJFlvGCgiavziIag; int paddedSize = 
ipTensor->getBatchSize() * ipTensor->getChannels() * inputH * inputW; 
CUDA_CALL(cudaMalloc((void**)&newInput, sizeof(float)*paddedSize)); 
CUDA_CALL(cudaMemset(newInput, 0, sizeof(float)*paddedSize)); 
static_cast<MWTensor<float>*>(SugesRlPIbOVzRgNWRnl)->setData(newInput); } } void 
MWConvLayerImpl::deallocate() { if (SugesRlPIbOVzRgNWRnl != 
getLayer()->getInputTensor(0)) { assert(IAlDgIFcchbwRGBSfVfA); 
CUDA_FREE_CALL(static_cast<MWTensor<float>*>(SugesRlPIbOVzRgNWRnl)->getData()); 
static_cast<MWTensor<float>*>(SugesRlPIbOVzRgNWRnl)->setData((float*)NULL); } } void 
MWConvLayerImpl::predict() { MWCNNLayer* convLayer = getLayer(); MWTensorBase* 
ipTensorBase = convLayer->getInputTensor(); MWTensorBase* opTensorBase = 
convLayer->getOutputTensor(); MWTensor<float>* ipTensor = 
static_cast<MWTensor<float>*>(ipTensorBase); MWTensor<float>* opTensor = 
static_cast<MWTensor<float>*>(opTensorBase); if (SugesRlPIbOVzRgNWRnl != 
convLayer->getInputTensor()) { 
CUDA_CALL(cudaMemset(static_cast<MWTensor<float>*>(SugesRlPIbOVzRgNWRnl)->getData(), 
0, sizeof(float)*SugesRlPIbOVzRgNWRnl->getNumElements()));  
MWCNNLayerImpl::padInput(ipTensor->getData(), ipTensor->getHeight(), 
ipTensor->getWidth(), ipTensor->getChannels(), SugesRlPIbOVzRgNWRnl->getHeight(), 
SugesRlPIbOVzRgNWRnl->getWidth(), bERCRkGjpaKXMNComoYl, bOrQjJTNlssnrexxbHdi, 
static_cast<MWTensor<float>*>(SugesRlPIbOVzRgNWRnl)->getData(), 
ipTensor->getNumElements()); } assert(opTensor->getData() != 
static_cast<MWTensor<float>*>(SugesRlPIbOVzRgNWRnl)->getData()); 
cudnnTensorDescriptor_t* desc = getDescriptor(opTensor->getSourcePortIndex()); 
assert(desc); 
CUDNN_CALL(cudnnConvolutionForward(*cQBKlCKXxecGPJrXBXdk->getCudnnHandle(), 
getOnePtr(), XYbzSmRQGatVJtGmDZSo, 
static_cast<MWTensor<float>*>(SugesRlPIbOVzRgNWRnl)->getData(), PtkeOkuClHzhOfpmBevf, 
vIWQzNvYZSuxmOTVDFhU, NMMfJylfQjiIUAKhXCJb, NDjzAZSYJuWymuKDNZYB, 
cQBKlCKXxecGPJrXBXdk->getWorkSpace(), 
*cQBKlCKXxecGPJrXBXdk->getAllocatedWorkSpaceSize(), getZeroPtr(), *desc, 
opTensor->getData())); 
CUDNN_CALL(cudnnAddTensor(*cQBKlCKXxecGPJrXBXdk->getCudnnHandle(), getOnePtr(), 
JsZenQeBPMhwsyEhVHiD, IwKnaBoXVubIRYcxEJLH, getOnePtr(), *desc, opTensor->getData())); } 
void MWConvLayerImpl::cleanup() { 
CUDNN_CALL(cudnnDestroyConvolutionDescriptor(NMMfJylfQjiIUAKhXCJb)); 
CUDNN_CALL(cudnnDestroyFilterDescriptor(PtkeOkuClHzhOfpmBevf)); if 
(vIWQzNvYZSuxmOTVDFhU) { CUDA_FREE_CALL(vIWQzNvYZSuxmOTVDFhU); vIWQzNvYZSuxmOTVDFhU = NULL; } 
CUDNN_CALL(cudnnDestroyTensorDescriptor(JsZenQeBPMhwsyEhVHiD)); if 
(IwKnaBoXVubIRYcxEJLH) { CUDA_FREE_CALL(IwKnaBoXVubIRYcxEJLH); IwKnaBoXVubIRYcxEJLH = NULL; } if 
(SugesRlPIbOVzRgNWRnl != getLayer()->getInputTensor(0)) { 
assert(IAlDgIFcchbwRGBSfVfA); 
CUDNN_CALL(cudnnDestroyTensorDescriptor(XYbzSmRQGatVJtGmDZSo)); } } void 
MWConvLayerImpl::loadWeights(const char* PmFfARVzoHVAYkfpuvqK) {  FILE* 
QMgBqCuvjnbWHWiVPEwn = MWCNNLayer::openBinaryFile(PmFfARVzoHVAYkfpuvqK); 
assert(QMgBqCuvjnbWHWiVPEwn); int cRtIUoZRPICuQEOZOSzT = 
BUOdotSvmFyUWQKMUdra*BdqURaHPmdnfzvtUvocl*BkwhtPQUCQKchmmimoXs*AzTsxYcYjIEJsGQbeYHm*BHuHNDGoRwGRouCxeMbw; 
 float* KZWeXiYFmdpQdsgidKeG = MALLOC_CALL(sizeof(float)*cRtIUoZRPICuQEOZOSzT); 
MWCNNLayer::call_fread(KZWeXiYFmdpQdsgidKeG, sizeof(float), cRtIUoZRPICuQEOZOSzT, 
QMgBqCuvjnbWHWiVPEwn, PmFfARVzoHVAYkfpuvqK); CUDA_CALL(cudaMemcpy(vIWQzNvYZSuxmOTVDFhU, 
KZWeXiYFmdpQdsgidKeG, sizeof(float)*cRtIUoZRPICuQEOZOSzT, cudaMemcpyHostToDevice)); 
fclose(QMgBqCuvjnbWHWiVPEwn); free(KZWeXiYFmdpQdsgidKeG); } void 
MWConvLayerImpl::loadBias(const char* PmFfARVzoHVAYkfpuvqK) { FILE* 
QMgBqCuvjnbWHWiVPEwn = MWCNNLayer::openBinaryFile(PmFfARVzoHVAYkfpuvqK);  
assert(QMgBqCuvjnbWHWiVPEwn); int cRtIUoZRPICuQEOZOSzT = 
BdqURaHPmdnfzvtUvocl*BkwhtPQUCQKchmmimoXs;  float* KZWeXiYFmdpQdsgidKeG = 
MALLOC_CALL(sizeof(float)*cRtIUoZRPICuQEOZOSzT); 
MWCNNLayer::call_fread(KZWeXiYFmdpQdsgidKeG, sizeof(float), cRtIUoZRPICuQEOZOSzT, 
QMgBqCuvjnbWHWiVPEwn, PmFfARVzoHVAYkfpuvqK); CUDA_CALL(cudaMemcpy(IwKnaBoXVubIRYcxEJLH, 
KZWeXiYFmdpQdsgidKeG, sizeof(float)*cRtIUoZRPICuQEOZOSzT, cudaMemcpyHostToDevice)); 
free(KZWeXiYFmdpQdsgidKeG); fclose(QMgBqCuvjnbWHWiVPEwn); } void 
MWConvLayerImpl::setLearnables(std::vector<float*> learnables) { 
assert(learnables.size() == 2); int cRtIUoZRPICuQEOZOSzT = BUOdotSvmFyUWQKMUdra * 
BdqURaHPmdnfzvtUvocl * BkwhtPQUCQKchmmimoXs * AzTsxYcYjIEJsGQbeYHm * 
BHuHNDGoRwGRouCxeMbw;  float* wqggPBXZvtlxnxwngvAq = learnables[0]; 
CUDA_CALL(cudaMemcpy(vIWQzNvYZSuxmOTVDFhU, wqggPBXZvtlxnxwngvAq, sizeof(float) * 
cRtIUoZRPICuQEOZOSzT, cudaMemcpyHostToDevice)); cRtIUoZRPICuQEOZOSzT = 
BdqURaHPmdnfzvtUvocl * BkwhtPQUCQKchmmimoXs;  float* JgLfgHrHMEMmMYTettJF = 
learnables[1]; CUDA_CALL(cudaMemcpy(IwKnaBoXVubIRYcxEJLH, JgLfgHrHMEMmMYTettJF, 
sizeof(float) * cRtIUoZRPICuQEOZOSzT, cudaMemcpyHostToDevice)); } void 
MWConvLayerImpl::postSetup() { if (cQBKlCKXxecGPJrXBXdk->getAutoTune()) { 
getConvAlgoTuned(); } else { getConvAlgoWorkSpaceLimit(); } } void 
MWConvLayerImpl::getConvAlgoTuned() { MWTensorBase* opTensorBase = 
getLayer()->getOutputTensor(0); MWTensor<float>* opTensor = 
static_cast<MWTensor<float>*>(opTensorBase); cudnnConvolutionFwdAlgoPerf_t 
perf_results[3]; cudnnTensorDescriptor_t* desc = 
getDescriptor(getLayer()->getOutputTensor()->getSourcePortIndex()); 
assert(desc); int returnedAlgoCount; 
CUDNN_CALL(cudnnFindConvolutionForwardAlgorithmEx(*cQBKlCKXxecGPJrXBXdk->getCudnnHandle(), 
XYbzSmRQGatVJtGmDZSo, static_cast<MWTensor<float>*>(SugesRlPIbOVzRgNWRnl)->getData(), 
PtkeOkuClHzhOfpmBevf, vIWQzNvYZSuxmOTVDFhU, NMMfJylfQjiIUAKhXCJb, *desc, 
opTensor->getData(), 3, &returnedAlgoCount, &perf_results[0], 
cQBKlCKXxecGPJrXBXdk->getWorkSpace(), 
*cQBKlCKXxecGPJrXBXdk->getAllocatedWorkSpaceSize())); NDjzAZSYJuWymuKDNZYB = 
perf_results[0].algo; } void MWConvLayerImpl::getConvAlgoWorkSpaceLimit() { 
cudnnTensorDescriptor_t* desc = 
getDescriptor(getLayer()->getOutputTensor()->getSourcePortIndex()); assert(desc);
#if (CUDNN_MAJOR < 8)
 
CUDNN_CALL(cudnnGetConvolutionForwardAlgorithm(*cQBKlCKXxecGPJrXBXdk->getCudnnHandle(), 
XYbzSmRQGatVJtGmDZSo, PtkeOkuClHzhOfpmBevf, NMMfJylfQjiIUAKhXCJb, *desc, 
CUDNN_CONVOLUTION_FWD_SPECIFY_WORKSPACE_LIMIT, 
*cQBKlCKXxecGPJrXBXdk->getAllocatedWorkSpaceSize(), &NDjzAZSYJuWymuKDNZYB));
#else
 int maxAlgoCount(-1); 
CUDNN_CALL(cudnnGetConvolutionForwardAlgorithmMaxCount(*cQBKlCKXxecGPJrXBXdk->getCudnnHandle(), 
&maxAlgoCount)); int returnedAlgoCount(-1); 
std::vector<cudnnConvolutionFwdAlgoPerf_t> perf_results(maxAlgoCount);  
CUDNN_CALL(cudnnGetConvolutionForwardAlgorithm_v7(*cQBKlCKXxecGPJrXBXdk->getCudnnHandle(), 
XYbzSmRQGatVJtGmDZSo, PtkeOkuClHzhOfpmBevf, NMMfJylfQjiIUAKhXCJb, *desc, 
maxAlgoCount, &returnedAlgoCount, &perf_results[0])); 
cudnnConvolutionFwdAlgoPerf_t nextFastest; bool algoFound(false); for (int i = 
0; i < returnedAlgoCount; ++i) { nextFastest = perf_results[i]; if 
(nextFastest.memory <= *cQBKlCKXxecGPJrXBXdk->getAllocatedWorkSpaceSize()) { 
NDjzAZSYJuWymuKDNZYB = nextFastest.algo; algoFound = true; break; } } assert(algoFound);
#endif
 } } 