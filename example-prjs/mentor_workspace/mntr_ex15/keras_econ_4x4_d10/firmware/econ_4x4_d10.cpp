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
    unsigned short &const_size_out_1
) {
//hls-fpga-machine-learning insert weights
#include "weights/w2.h"
#include "weights/b2.h"
#include "weights/w4.h"
#include "weights/b4.h"

#ifndef MNTR_CATAPULT_HLS
    //hls-fpga-machine-learning insert IO
    #pragma HLS ARRAY_RESHAPE variable=input_1 complete dim=0 
    #pragma HLS ARRAY_RESHAPE variable=layer5_out complete dim=0 
    #pragma HLS INTERFACE ap_vld port=input_1,layer5_out 
    #pragma HLS DATAFLOW 
#endif
  
    const_size_in_1 = N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1;
    const_size_out_1 = N_LAYER_4;

//    for (int i = 0; i < const_size_in_1; i++) {
//        std::cout << input_1[i] << std::endl;
//    } 

#ifdef __WEIGHTS_FROM_FILE__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        //hls-fpga-machine-learning insert load weights
        nnet::load_weights_from_txt<model_default_t, 216>(w2, "w2.txt");
        nnet::load_weights_from_txt<model_default_t, 8>(b2, "b2.txt");
        nnet::load_weights_from_txt<model_default_t, 1280>(w4, "w4.txt");
        nnet::load_weights_from_txt<model_default_t, 10>(b4, "b4.txt");
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

    layer4_t layer4_out[N_LAYER_4];
    #ifndef MNTR_CATAPULT_HLS
    #pragma HLS ARRAY_PARTITION variable=layer4_out complete dim=0
    #endif
    nnet::dense_large<layer3_t, layer4_t, config4>(layer3_out, layer4_out, w4, b4);

    nnet::relu<layer4_t, result_t, relu_config5>(layer4_out, layer5_out);


}
