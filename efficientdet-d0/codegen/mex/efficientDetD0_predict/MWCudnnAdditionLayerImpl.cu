#include "MWCudnnAdditionLayerImpl.hpp"
#include "MWCudnnCNNLayerImpl.hpp"
#include "MWCNNLayer.hpp"
#include "MWTensorBase.hpp"
#include "MWTensor.hpp"
#include "MWCudnnTargetNetworkImpl.hpp"
#include <cstdarg>
#include <cassert>
 namespace MWCudnnTarget { MWAdditionLayerImpl::MWAdditionLayerImpl(MWCNNLayer* 
layer, MWTargetNetworkImpl* ntwk_impl) : MWCNNLayerImpl(layer, ntwk_impl) { 
createAndAddDescriptor(getLayer()->getOutputTensor(0)->getSourcePortIndex()); } 
MWAdditionLayerImpl::~MWAdditionLayerImpl() { } void 
MWAdditionLayerImpl::propagateSize() { MWCNNLayer* AdditionLayer = getLayer(); 
MWTensorBase* opTensor = AdditionLayer->getOutputTensor(0); 
cudnnTensorDescriptor_t* desc = getDescriptor(opTensor->getSourcePortIndex()); 
assert(desc); setDescriptor<float>(*desc, 
static_cast<MWTensor<float>*>(opTensor)); } void __global__ 
__launch_bounds__(1024) addImpl(float* in1, float* in2, float* out, size_t 
maxElems) { size_t i = blockDim.x * blockIdx.x + threadIdx.x; for (; i < 
maxElems; i += size_t(blockDim.x * gridDim.x)) { out[i] = in1[i] + in2[i]; } } 
void MWAdditionLayerImpl::predict() { MWCNNLayer* AdditionLayer = getLayer(); 
MWTensorBase* ipTensorBase = AdditionLayer->getInputTensor(0); MWTensorBase* 
opTensorBase = AdditionLayer->getOutputTensor(0); MWTensor<float>* ipTensor = 
static_cast<MWTensor<float>*>(ipTensorBase); MWTensor<float>* opTensor = 
static_cast<MWTensor<float>*>(opTensorBase); int dJcdBfQQLhIAYHPxwQeg = 
ipTensor->getNumElements(); cudaMemcpy(opTensor->getData(), 
ipTensor->getData(), dJcdBfQQLhIAYHPxwQeg * sizeof(float), 
cudaMemcpyDeviceToDevice); cudnnTensorDescriptor_t* desc = 
getDescriptor(opTensor->getSourcePortIndex()); assert(desc); for (int k = 1; k 
< AdditionLayer->getNumInputs(); k++) { cudnnTensorDescriptor_t ipDesc = 
MWCNNLayerImpl::getCuDNNDescriptor(AdditionLayer->getInputTensor(k)); 
cudnnAddTensor(*cQBKlCKXxecGPJrXBXdk->getCudnnHandle(), getOnePtr(), ipDesc, 
static_cast<MWTensor<float>*>(AdditionLayer->getInputTensor(k))->getData(), 
getOnePtr(), *desc, opTensor->getData()); } } void 
MWAdditionLayerImpl::cleanup() { } } 