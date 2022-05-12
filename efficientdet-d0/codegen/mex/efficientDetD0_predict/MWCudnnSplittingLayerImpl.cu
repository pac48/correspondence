#include "MWCudnnSplittingLayerImpl.hpp"
#include "MWCudnnCNNLayerImpl.hpp"
#include "MWCNNLayer.hpp"
#include "MWCudnnTargetNetworkImpl.hpp"
#include "MWTensorBase.hpp"
#include "MWTensor.hpp"
#include <cmath>
#include <cassert>
 namespace MWCudnnTarget { 
MWSplittingLayerImpl::MWSplittingLayerImpl(MWCNNLayer* layer, 
MWTargetNetworkImpl* ntwk_impl, int numOutputs, int* channelSizes) : 
MWCNNLayerImpl(layer, ntwk_impl) , etjQLJVQCaeAXRWYtqOl(numOutputs) , 
MgAiRWiTutoTMxKXjmHQ(channelSizes) { } 
MWSplittingLayerImpl::~MWSplittingLayerImpl() { } void 
MWSplittingLayerImpl::propagateSize() { } void __global__ 
__launch_bounds__(1024) SplittingLayerImpl(float* inputBuffer, float* 
outputBuffer, int MW_startingChannel, int MW_channelWidth,  double 
YNmJhGSUszJKxsodxiuV, double YNDVziqpDddiXQKYZZhX, double 
YMNbgnUYZspjMLjwcIOS, double hljcfGWsvZXJZNrImpJB, const long 
int BRSPqxNffoBYKqpSVHne) { int idx = blockDim.x * blockIdx.x + threadIdx.x; if (idx < 
BRSPqxNffoBYKqpSVHne) { double cAUupmktEnGPfLHyWfFm = floor(idx / 
YMNbgnUYZspjMLjwcIOS); double EpwuhXsRcwdqXSjBpUeO = idx - 
(YMNbgnUYZspjMLjwcIOS * cAUupmktEnGPfLHyWfFm); double LklYEpYUjaLTgcFFAaJX = 
floor(EpwuhXsRcwdqXSjBpUeO / YNDVziqpDddiXQKYZZhX); if 
(static_cast<int>(LklYEpYUjaLTgcFFAaJX) >= MW_startingChannel && 
static_cast<int>(LklYEpYUjaLTgcFFAaJX) < MW_startingChannel + MW_channelWidth ) { 
double LtEgcYoEYjkrWuohutgw = LklYEpYUjaLTgcFFAaJX - (MW_startingChannel); double 
EvebzoroiuKkIxwjkGnD = EpwuhXsRcwdqXSjBpUeO - 
(YNDVziqpDddiXQKYZZhX * LklYEpYUjaLTgcFFAaJX); long int opIdx = cAUupmktEnGPfLHyWfFm 
* hljcfGWsvZXJZNrImpJB + LtEgcYoEYjkrWuohutgw * 
YNDVziqpDddiXQKYZZhX + EvebzoroiuKkIxwjkGnD; outputBuffer[opIdx] 
= inputBuffer[idx]; } } } void MWSplittingLayerImpl::predict() { MWTensorBase* 
ipTensorBase = getLayer()->getInputTensor(0); MWTensor<float>* ipTensor = 
static_cast<MWTensor<float>*>(ipTensorBase); if (getLayer()->getInPlaceIndex(0) 
!= -1) { assert(ipTensor->getBatchSize() == 1); 
assert(ipTensor->getSequenceLength() == 1); } else { int YNmJhGSUszJKxsodxiuV = 
ipTensor->getWidth(); long int YNDVziqpDddiXQKYZZhX = 
ipTensor->getHeight() * ipTensor->getWidth(); long int 
YMNbgnUYZspjMLjwcIOS = YNDVziqpDddiXQKYZZhX * 
(ipTensor->getChannels()); long int YGiQICncmsGZkNUyiQyg = 
YMNbgnUYZspjMLjwcIOS * ipTensor->getBatchSize(); long int 
rlQsibXJSWJVnUVpdNeL = ((YGiQICncmsGZkNUyiQyg + 31) / 32) * 32; long int 
shEncNmxJsMuJKwbrwok = (rlQsibXJSWJVnUVpdNeL < 1024) ? rlQsibXJSWJVnUVpdNeL : 1024; 
long int KHClOltUSuqFVVErSxVb = (YGiQICncmsGZkNUyiQyg + 
shEncNmxJsMuJKwbrwok - 1) / shEncNmxJsMuJKwbrwok; int 
MW_startingChannel = 0; for (int i = 0; i < this->etjQLJVQCaeAXRWYtqOl; i++){  
long int hljcfGWsvZXJZNrImpJB = YNDVziqpDddiXQKYZZhX * 
(getLayer()->getOutputTensor(i)->getChannels()); 
SplittingLayerImpl<<<KHClOltUSuqFVVErSxVb, shEncNmxJsMuJKwbrwok>>>( 
ipTensor->getData(), 
static_cast<MWTensor<float>*>(getLayer()->getOutputTensor(i))->getData(), 
MW_startingChannel, getLayer()->getOutputTensor(i)->getChannels(), 
YNmJhGSUszJKxsodxiuV, YNDVziqpDddiXQKYZZhX, 
YMNbgnUYZspjMLjwcIOS, hljcfGWsvZXJZNrImpJB, 
YGiQICncmsGZkNUyiQyg); MW_startingChannel += 
getLayer()->getOutputTensor(i)->getChannels(); } } return; } void 
MWSplittingLayerImpl::cleanup() { } float* 
MWSplittingLayerImpl::offsetOutputPointer(float* initialPointer, int outIdx) { 
if (getLayer()->getInPlaceIndex(0) != -1) { 
assert(getLayer()->getInputTensor(0)->getBatchSize() == 1); 
assert(getLayer()->getInputTensor(0)->getSequenceLength() == 1);  long int 
accumulatedC = 0; long int HW = (getLayer()->getOutputTensor(0)->getHeight()) * 
(getLayer()->getOutputTensor(0)->getWidth()); assert(outIdx < 
this->etjQLJVQCaeAXRWYtqOl); for (int i = 0; i < outIdx; i++){ accumulatedC += 
getLayer()->getOutputTensor(i)->getChannels(); } return initialPointer + 
(HW*accumulatedC); } else { return initialPointer; } } signed char* 
MWSplittingLayerImpl::offsetOutputPointer(signed char* initialPointer, int 
outIdx) { assert(false); return NULL; } } 