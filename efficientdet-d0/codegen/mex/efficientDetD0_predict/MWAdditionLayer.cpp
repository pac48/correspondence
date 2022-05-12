/* Copyright 2017-2021 The MathWorks, Inc. */

#include "MWAdditionLayer.hpp"
#include "MWCNNLayerImplBase.hpp"
#include "MWTensorBase.hpp"
#include "MWCNNLayer.hpp"
#include "MWTargetNetworkImplBase.hpp"
#include "MWLayerImplFactory.hpp"

#include <cstdarg>
#include <cassert>
#include <cmath>

MWAdditionLayer::MWAdditionLayer() {
}

MWAdditionLayer::~MWAdditionLayer() {
}

// Template type T1 is the input data type and will always be signed char or float
// Template type T2 is the output data type and this can be either signed char or float

template void MWAdditionLayer::createAdditionLayer<signed char, signed char>(MWTargetNetworkImplBase*,
                                                                             int,
                                                                             ...);

template void MWAdditionLayer::createAdditionLayer<float, float>(MWTargetNetworkImplBase*, int, ...);

template <typename T1, typename T2>
void MWAdditionLayer::createAdditionLayer(MWTargetNetworkImplBase* ntwk_impl, int numInputs, ...) {
    va_list args;
    va_start(args, numInputs);

    for (int i = 0; i < numInputs; i++) {
        MWTensorBase* inputTensor = va_arg(args, MWTensorBase*);
        setInputTensor(inputTensor, i);
    }

    setScalingExponent(va_arg(args, int));
    setAccelMode(va_arg(args, const char*));
    const char* format = va_arg(args, const char*);
    int outbufIdx = va_arg(args, int);

    allocateOutputTensor<T2>(-1, -1, -1, -1, -1, NULL, format);

    getOutputTensor(0)->setopBufIndex(outbufIdx);

    MWLayerImplFactory* factory = ntwk_impl->getLayerImplFactory();
    m_impl = factory->createAdditionLayerImpl(this, ntwk_impl);
}

void MWAdditionLayer::propagateSize() {
    // check that all input tensors match in size
    for (int k = 1; k < getNumInputs(); k++) {
        assert(getInputTensor(0)->getHeight() == getInputTensor(k)->getHeight());
        assert(getInputTensor(0)->getWidth() == getInputTensor(k)->getWidth());
        assert(getInputTensor(0)->getChannels() == getInputTensor(k)->getChannels());
        assert(getInputTensor(0)->getBatchSize() == getInputTensor(k)->getBatchSize());
        assert(getInputTensor(0)->getSequenceLength() == getInputTensor(k)->getSequenceLength());
    }

    bool isINT8x4 =
        getOutputTensor()->isInt8() && std::string{"INT8x4"}.compare(getAccelMode()) == 0;

    int mult4_featureMap =
        isINT8x4 ? static_cast<int>(std::ceil((float)getInputTensor()->getChannels() / 4) * 4)
                 : getInputTensor()->getChannels();

    resizeOutputTensor(getInputTensor()->getHeight(), getInputTensor()->getWidth(),
                       mult4_featureMap, getInputTensor()->getBatchSize(),
                       getInputTensor()->getSequenceLength());

    m_impl->propagateSize();
}
