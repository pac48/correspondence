/* Copyright 2017-2021 The MathWorks, Inc. */

#include "MWSplittingLayer.hpp"
#include "MWCNNLayerImplBase.hpp"
#include "MWTensorBase.hpp"
#include "MWCNNLayer.hpp"
#include "MWTargetNetworkImplBase.hpp"
#include "MWLayerImplFactory.hpp"

#include <cstdarg>
#include <cassert>

MWSplittingLayer::MWSplittingLayer()
{
}

MWSplittingLayer::~MWSplittingLayer()
{    
}

void MWSplittingLayer::createSplittingLayer(MWTargetNetworkImplBase* ntwk_impl, MWTensorBase* tensorInput, ...)
{
    setInputTensor(tensorInput);

    va_list args;
    va_start(args, tensorInput);
    
    int numOutputs = va_arg(args, int);
    int* channelWidths = new int[numOutputs];
    
    for (int i = 0; i < numOutputs; i++)
    {
        channelWidths[i] = va_arg(args, int);
    }

    channelSizes = channelWidths;

    //Why is numoutputs appended instead of prepended
    int numOutputs_blah = va_arg(args,int);
    
    //Adding this check which should always be true to avoid MSVC warning about unreferenced local variable
    assert(numOutputs == numOutputs_blah);

    std::vector<const char*> outformats(numOutputs, NULL);
    for (int i = 0; i < numOutputs; i++)
    {
        outformats[i] = va_arg(args,const char*);        
    }

    for(int i = 0; i < numOutputs; i++)
    {
        allocateOutputTensor<float>(-1, -1, -1, -1, -1, NULL, outformats[i], i);
        // bufIndex points to memory buffer used by corresponding output port after buffer reuse transform
        int bufIndex =  va_arg(args, int); 
        getOutputTensor(i)->setopBufIndex(bufIndex);
    }

    MWLayerImplFactory* factory = ntwk_impl->getLayerImplFactory();
    m_impl = factory->createSplittingLayerImpl(this, ntwk_impl, numOutputs, channelWidths);
}

void MWSplittingLayer::propagateSize()
{
    assert(getInputTensor()->getSequenceLength() == 1);

    for(int i = 0; i < getNumOutputs(); i++)
    {
        int numOutputFeatures = channelSizes[i]; 
        resizeOutputTensor(getInputTensor(0)->getHeight(),
                           getInputTensor(0)->getWidth(),
                           numOutputFeatures,
                           getInputTensor(0)->getBatchSize(),
                           getInputTensor(0)->getSequenceLength(),
                           i);
    }

    m_impl->propagateSize();
}