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

#include "econ_4x4_v4.h"

void econ_4x4_v4(
    input_t input_3[N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1],
    result_t layer9_out[N_LAYER_8],
    unsigned short &const_size_in_1,
    unsigned short &const_size_out_1
) {
//hls-fpga-machine-learning insert weights
#include "weights/w2.h"
#include "weights/b2.h"
#include "weights/w4.h"
#include "weights/b4.h"
#include "weights/w6.h"
#include "weights/b6.h"
#include "weights/w8.h"
#include "weights/b8.h"

#ifndef MNTR_CATAPULT_HLS
    //hls-fpga-machine-learning insert IO
    #pragma HLS ARRAY_RESHAPE variable=input_3 complete dim=0 
    #pragma HLS ARRAY_RESHAPE variable=layer9_out complete dim=0 
    #pragma HLS INTERFACE ap_vld port=input_3,layer9_out 
    #pragma HLS DATAFLOW 
#endif
  
    const_size_in_1 = N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1;
    const_size_out_1 = N_LAYER_8;

//    for (int i = 0; i < const_size_in_1; i++) {
//        std::cout << input_1[i] << std::endl;
//    } 

#ifdef __WEIGHTS_FROM_FILE__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        //hls-fpga-machine-learning insert load weights
        nnet::load_weights_from_txt<model_default_t, 108>(w2, "w2.txt");
        nnet::load_weights_from_txt<model_default_t, 4>(b2, "b2.txt");
        nnet::load_weights_from_txt<model_default_t, 144>(w4, "w4.txt");
        nnet::load_weights_from_txt<model_default_t, 4>(b4, "b4.txt");
        nnet::load_weights_from_txt<model_default_t, 144>(w6, "w6.txt");
        nnet::load_weights_from_txt<model_default_t, 4>(b6, "b6.txt");
        nnet::load_weights_from_txt<model_default_t, 768>(w8, "w8.txt");
        nnet::load_weights_from_txt<model_default_t, 12>(b8, "b8.txt");
        loaded_weights = true;
    }
#endif

    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    //hls-fpga-machine-learning insert layers
    
    layer2_t layer2_out[OUT_HEIGHT_2*OUT_WIDTH_2*N_FILT_2];
#ifndef MNTR_CATAPULT_HLS
#pragma HLS ARRAY_PARTITION variable=layer2_out complete dim=0
#endif
    nnet::conv_2d<input_t, layer2_t, config2>(input_3, layer2_out, w2, b2, 1120);

    layer3_t layer3_out[OUT_HEIGHT_2*OUT_WIDTH_2*N_FILT_2];
#ifndef MNTR_CATAPULT_HLS
#pragma HLS ARRAY_PARTITION variable=layer3_out complete dim=0
#endif
    nnet::relu<layer2_t, layer3_t, relu_config3>(layer2_out, layer3_out);

    layer4_t layer4_out[OUT_HEIGHT_4*OUT_WIDTH_4*N_FILT_4];
#ifndef MNTR_CATAPULT_HLS
#pragma HLS ARRAY_PARTITION variable=layer4_out complete dim=0
#endif
    nnet::conv_2d<layer3_t, layer4_t, config4>(layer3_out, layer4_out, w4, b4, 1111);

    layer5_t layer5_out[OUT_HEIGHT_4*OUT_WIDTH_4*N_FILT_4];
#ifndef MNTR_CATAPULT_HLS
#pragma HLS ARRAY_PARTITION variable=layer5_out complete dim=0
#endif
    nnet::relu<layer4_t, layer5_t, relu_config5>(layer4_out, layer5_out);

    layer6_t layer6_out[OUT_HEIGHT_6*OUT_WIDTH_6*N_FILT_6];
#ifndef MNTR_CATAPULT_HLS
#pragma HLS ARRAY_PARTITION variable=layer6_out complete dim=0
#endif
    nnet::conv_2d<layer5_t, layer6_t, config6>(layer5_out, layer6_out, w6, b6, 1120);

    layer7_t layer7_out[OUT_HEIGHT_6*OUT_WIDTH_6*N_FILT_6];
#ifndef MNTR_CATAPULT_HLS
#pragma HLS ARRAY_PARTITION variable=layer7_out complete dim=0
#endif
    nnet::relu<layer6_t, layer7_t, relu_config7>(layer6_out, layer7_out);

    layer8_t layer8_out[N_LAYER_8];
#ifndef MNTR_CATAPULT_HLS
#pragma HLS ARRAY_PARTITION variable=layer8_out complete dim=0
#endif
    nnet::dense_large<layer7_t, layer8_t, config8>(layer7_out, layer8_out, w8, b8);

    nnet::relu<layer8_t, result_t, relu_config9>(layer8_out, layer9_out);

}
