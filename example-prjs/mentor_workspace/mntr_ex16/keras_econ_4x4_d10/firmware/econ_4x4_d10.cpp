//
//    rfnoc-hls-neuralnet: Vivado HLS code for neural-net building blocks
//
//    Copyright (C) 2017 EJ Kreinar
//
//    This program is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.
//
//    This program is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
#include <iostream>

#include "econ_4x4_d10.h"

void econ_4x4_d10(
    input_t input_1[N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1],
    result_t layer5_out[N_LAYER_4],
    unsigned short &const_size_in_1,
    unsigned short &const_size_out_1,
    model_default_t w2[216],
    model_default_t b2[8],
    model_default_t w4[1280],
    model_default_t b4[10]
) {
//hls-fpga-machine-learning insert weights

#ifndef MNTR_CATAPULT_HLS
    //hls-fpga-machine-learning insert IO
    #pragma HLS ARRAY_RESHAPE variable=input_1 complete dim=0
    #pragma HLS ARRAY_RESHAPE variable=layer5_out complete dim=0
    #pragma HLS INTERFACE ap_vld port=input_1,layer5_out
    #pragma HLS DATAFLOW
#endif

    const_size_in_1 = N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1;
    const_size_out_1 = N_LAYER_4;

#if 0
    float input_t_min = FLT_MAX;
    float input_t_max = FLT_MIN;
    for (int i = 0; i < const_size_in_1; i++) {
        if (input_1[i].to_double() < input_t_min) input_t_min = input_1[i].to_double();
        if (input_1[i].to_double() > input_t_max) input_t_max = input_1[i].to_double();
    }
    std::cout << "DEBUG: min(input_t): " << input_t_min << std::endl;
    std::cout << "DEBUG: max(input_t): " << input_t_max << std::endl;
#endif

    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    //hls-fpga-machine-learning insert layers

    layer2_t layer2_out[OUT_HEIGHT_2*OUT_WIDTH_2*N_FILT_2];
    #ifndef MNTR_CATAPULT_HLS
    #pragma HLS ARRAY_PARTITION variable=layer2_out complete dim=0
    #endif
    nnet::conv_2d<input_t, layer2_t, config2>(input_1, layer2_out, w2, b2, 2234);

#if 0
    float layer2_t_min = FLT_MAX;
    float layer2_t_max = FLT_MIN;
    for (int i = 0; i < OUT_HEIGHT_2*OUT_WIDTH_2*N_FILT_2; i++) {
        if (layer2_out[i].to_double() < layer2_t_min) layer2_t_min = layer2_out[i].to_double();
        if (layer2_out[i].to_double() > layer2_t_max) layer2_t_max = layer2_out[i].to_double();
    }
    std::cout << "DEBUG: min(layer2_t): " << layer2_t_min << std::endl;
    std::cout << "DEBUG: max(layer2_t): " << layer2_t_max << std::endl;
#endif

    layer3_t layer3_out[OUT_HEIGHT_2*OUT_WIDTH_2*N_FILT_2];
    #ifndef MNTR_CATAPULT_HLS
    #pragma HLS ARRAY_PARTITION variable=layer3_out complete dim=0
    #endif
    nnet::relu<layer2_t, layer3_t, relu_config3>(layer2_out, layer3_out);

#if 0
    float layer3_t_min = FLT_MAX;
    float layer3_t_max = FLT_MIN;
    for (int i = 0; i < OUT_HEIGHT_2*OUT_WIDTH_2*N_FILT_2; i++) {
        if (layer3_out[i].to_double() < layer3_t_min) layer3_t_min = layer3_out[i].to_double();
        if (layer3_out[i].to_double() > layer3_t_max) layer3_t_max = layer3_out[i].to_double();
    }
    std::cout << "DEBUG: min(layer3_t): " << layer3_t_min << std::endl;
    std::cout << "DEBUG: max(layer3_t): " << layer3_t_max << std::endl;
#endif

    layer4_t layer4_out[N_LAYER_4];
    #ifndef MNTR_CATAPULT_HLS
    #pragma HLS ARRAY_PARTITION variable=layer4_out complete dim=0
    #endif
    nnet::dense_large<layer3_t, layer4_t, config4>(layer3_out, layer4_out, w4, b4);

#if 0
    float layer4_t_min = FLT_MAX;
    float layer4_t_max = FLT_MIN;
    for (int i = 0; i < N_LAYER_4; i++) {
        if (layer4_out[i].to_double() < layer4_t_min) layer4_t_min = layer4_out[i].to_double();
        if (layer4_out[i].to_double() > layer4_t_max) layer4_t_max = layer4_out[i].to_double();
    }
    std::cout << "DEBUG: min(layer4_t): " << layer4_t_min << std::endl;
    std::cout << "DEBUG: max(layer4_t): " << layer4_t_max << std::endl;
#endif

    nnet::relu<layer4_t, result_t, relu_config5>(layer4_out, layer5_out);

#if 0
    float result_t_min = FLT_MAX;
    float result_t_max = FLT_MIN;
    for (int i = 0; i < N_LAYER_4; i++) {
        if (layer5_out[i].to_double() < result_t_min) result_t_min = layer5_out[i].to_double();
        if (layer5_out[i].to_double() > result_t_max) result_t_max = layer5_out[i].to_double();
    }
    std::cout << "DEBUG: min(result_t): " << result_t_min << std::endl;
    std::cout << "DEBUG: max(result_t): " << result_t_max << std::endl;
#endif
}
