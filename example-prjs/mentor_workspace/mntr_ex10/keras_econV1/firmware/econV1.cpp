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

#include "econV1.h"

#define __SYNTHESIS__

//hls-fpga-machine-learning insert weights
#include "weights/w2.h"
#include "weights/b2.h"
#include "weights/w5.h"
#include "weights/b5.h"
#include "weights/w8.h"
#include "weights/b8.h"

void econV1(
    input_t input_1[N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1],
    result_t layer10_out[OUT_HEIGHT_10*OUT_WIDTH_10*N_FILT_10],
    unsigned short &const_size_in_1,
    unsigned short &const_size_out_1
) {

#ifndef MNTR_CATAPULT_HLS
    //hls-fpga-machine-learning insert IO
    #pragma HLS ARRAY_RESHAPE variable=input_1 complete dim=0 
    #pragma HLS ARRAY_RESHAPE variable=layer10_out complete dim=0 
    #pragma HLS INTERFACE ap_vld port=input_1,layer10_out 
    #pragma HLS DATAFLOW 
#endif
  
    const_size_in_1 = N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1;
    const_size_out_1 = OUT_HEIGHT_10*OUT_WIDTH_10*N_FILT_10;

#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        //hls-fpga-machine-learning insert load weights
        nnet::load_weights_from_txt<model_default_t, 144>(w2, "w2.txt");
        nnet::load_weights_from_txt<model_default_t, 16>(b2, "b2.txt");
        nnet::load_weights_from_txt<model_default_t, 1152>(w5, "w5.txt");
        nnet::load_weights_from_txt<model_default_t, 8>(b5, "b5.txt");
        nnet::load_weights_from_txt<model_default_t, 288>(w8, "w8.txt");
        nnet::load_weights_from_txt<model_default_t, 4>(b8, "b8.txt");
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
    nnet::conv_2d<input_t, layer2_t, config2>(input_1, layer2_out, w2, b2);

    layer3_t layer3_out[OUT_HEIGHT_2*OUT_WIDTH_2*N_FILT_2];
#ifndef MNTR_CATAPULT_HLS
    #pragma HLS ARRAY_PARTITION variable=layer3_out complete dim=0
#endif
    nnet::relu<layer2_t, layer3_t, relu_config3>(layer2_out, layer3_out);

    layer4_t layer4_out[OUT_HEIGHT_4*OUT_WIDTH_4*N_FILT_4];
#ifndef MNTR_CATAPULT_HLS
    #pragma HLS ARRAY_PARTITION variable=layer4_out complete dim=0
#endif
    nnet::pooling2d<layer3_t, config4>(layer3_out, layer4_out);

    layer5_t layer5_out[OUT_HEIGHT_5*OUT_WIDTH_5*N_FILT_5];
#ifndef MNTR_CATAPULT_HLS
    #pragma HLS ARRAY_PARTITION variable=layer5_out complete dim=0
#endif
    nnet::conv_2d<layer4_t, layer5_t, config5>(layer4_out, layer5_out, w5, b5);

    layer6_t layer6_out[OUT_HEIGHT_5*OUT_WIDTH_5*N_FILT_5];
#ifndef MNTR_CATAPULT_HLS
    #pragma HLS ARRAY_PARTITION variable=layer6_out complete dim=0
#endif
    nnet::relu<layer5_t, layer6_t, relu_config6>(layer5_out, layer6_out);

    layer7_t layer7_out[OUT_HEIGHT_7*OUT_WIDTH_7*N_FILT_7];
#ifndef MNTR_CATAPULT_HLS
    #pragma HLS ARRAY_PARTITION variable=layer7_out complete dim=0
#endif
    nnet::pooling2d<layer6_t, config7>(layer6_out, layer7_out);

    layer8_t layer8_out[OUT_HEIGHT_8*OUT_WIDTH_8*N_FILT_8];
#ifndef MNTR_CATAPULT_HLS
    #pragma HLS ARRAY_PARTITION variable=layer8_out complete dim=0
#endif
    nnet::conv_2d<layer7_t, layer8_t, config8>(layer7_out, layer8_out, w8, b8);

    layer9_t layer9_out[OUT_HEIGHT_8*OUT_WIDTH_8*N_FILT_8];
#ifndef MNTR_CATAPULT_HLS
    #pragma HLS ARRAY_PARTITION variable=layer9_out complete dim=0
#endif
    nnet::relu<layer8_t, layer9_t, relu_config9>(layer8_out, layer9_out);

    nnet::pooling2d<layer9_t, config10>(layer9_out, layer10_out);

}
