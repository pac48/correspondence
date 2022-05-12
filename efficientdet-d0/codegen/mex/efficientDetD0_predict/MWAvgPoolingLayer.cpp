/* Copyright 2020-2021 The MathWorks, Inc. */

#include "MWTensorBase.hpp"
#include "MWCNNLayer.hpp"
#include "MWAvgPoolingLayer.hpp"
#include "MWCNNLayerImplBase.hpp"
#include "MWTargetNetworkImplBase.hpp"
#include "MWLayerImplFactory.hpp"

#include <cmath>

// Template type T1 is the input data type and will always be signed char or float
// Template type T2 is the output data type and this can be either signed char or float

template void MWAvgPoolingLayer::createAvgPoolingLayer<signed char, signed char>(
    MWTargetNetworkImplBase*,
    MWTensorBase*,
    int,
    int,
    int,
    int,
    int,
    int,
    int,
    int,
    int,
    const char*,
    int,
    const char*,
    int);

template void MWAvgPoolingLayer::createAvgPoolingLayer<float, float>(MWTargetNetworkImplBase*,
                                                                     MWTensorBase*,
                                                                     int,
                                                                     int,
                                                                     int,
                                                                     int,
                                                                     int,
                                                                     int,
                                                                     int,
                                                                     int,
                                                                     int,
                                                                     const char*,
                                                                     int,
                                                                     const char*,
                                                                     int);

// Create AvgPooling2DLayer with PoolSize = [ PoolH PoolW ]
//                                Stride = [ StrideH StrideW ]
//                               Padding = [ PaddingH_T PaddingH_T_B PaddingW_L PaddingW_R ]
template <typename T1, typename T2>
void MWAvgPoolingLayer::createAvgPoolingLayer(MWTargetNetworkImplBase* ntwk_impl,
                                              MWTensorBase* m_in,
                                              int m_PoolH,
                                              int m_PoolW,
                                              int m_StrideH,
                                              int m_StrideW,
                                              int m_PaddingH_T,
                                              int m_PaddingH_B,
                                              int m_PaddingW_L,
                                              int m_PaddingW_R,
                                              int m_scalingFactorAlpha1,
                                              const char* m_accelerationMode,
                                              int /*m_numOutputs*/,
                                              const char* m_outFormat,
                                              int outbufIdx) {
    setInputTensor(m_in);
    allocateOutputTensor<T2>(-1, -1, -1, -1, -1, NULL, m_outFormat);

    getOutputTensor(0)->setopBufIndex(outbufIdx);

    strideH = m_StrideH;
    strideW = m_StrideW;

    poolH = m_PoolH;
    poolW = m_PoolW;

    isGlobalAveragePooling = (poolH == -1) && (poolW == -1);

    paddingH_T = m_PaddingH_T;
    paddingH_B = m_PaddingH_B;
    paddingW_L = m_PaddingW_L;
    paddingW_R = m_PaddingW_R;
    setAccelMode(m_accelerationMode);
    setScalingExponent(m_scalingFactorAlpha1);

    MWLayerImplFactory* factory = ntwk_impl->getLayerImplFactory();
    m_impl = factory->createAvgPoolingLayerImpl(this, ntwk_impl, m_PoolH, m_PoolW, m_StrideH, m_StrideW,
                                            m_PaddingH_T, m_PaddingH_B, m_PaddingW_L, m_PaddingW_R);
}

void MWAvgPoolingLayer::propagateSize() {
    // Global Average Pooling case
    if (isGlobalAveragePooling) {
        poolH = getInputTensor()->getHeight();
        poolW = getInputTensor()->getWidth();
    }

    int outputH = ((getInputTensor()->getHeight() - poolH + paddingH_T + paddingH_B) / strideH) + 1;
    int outputW = ((getInputTensor()->getWidth() - poolW + paddingW_L + paddingW_R) / strideW) + 1;

    assert(getInputTensor()->getSequenceLength() == 1);

    bool isINT8x4 =
        getOutputTensor()->isInt8() && std::string{"INT8x4"}.compare(getAccelMode()) == 0;

    int mult4_featureMap =
        isINT8x4 ? static_cast<int>(std::ceil((float)getInputTensor()->getChannels() / 4) * 4)
                 : getInputTensor()->getChannels();

    resizeOutputTensor(outputH, outputW, mult4_featureMap, getInputTensor()->getBatchSize(),
                       getInputTensor()->getSequenceLength());

    m_impl->propagateSize();
}
