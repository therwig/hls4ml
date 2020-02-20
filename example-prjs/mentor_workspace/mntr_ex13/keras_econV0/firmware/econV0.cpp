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

#include "econV0.h"

void econV0(
    input_t input_48[N_INPUT_1_1],
    result_t layer7_out[N_LAYER_6],
    unsigned short &const_size_in_1,
    unsigned short &const_size_out_1,
    model_default_t w2[1152],
    model_default_t b2[24],
    model_default_t w4[144],
    model_default_t b4[6],
    model_default_t w6[18],
    model_default_t b6[3]
) {
//hls-fpga-machine-learning insert weights

#ifndef MNTR_CATAPULT_HLS
    //hls-fpga-machine-learning insert IO
    #pragma HLS ARRAY_RESHAPE variable=input_48 complete dim=0 
    #pragma HLS ARRAY_RESHAPE variable=layer7_out complete dim=0
    #pragma HLS INTERFACE ap_vld port=input_48,layer7_out

	#pragma HLS ARRAY_RESHAPE variable=w2 complete dim=0
	#pragma HLS ARRAY_RESHAPE variable=w4 complete dim=0
	#pragma HLS ARRAY_RESHAPE variable=w6 complete dim=0

	#pragma HLS INTERFACE ap_vld port=w2,w4,w6

    #pragma HLS DATAFLOW 
#endif
    const_size_in_1 = N_INPUT_1_1;
    const_size_out_1 = N_LAYER_6;

    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    //hls-fpga-machine-learning insert layers

    layer2_t layer2_out[N_LAYER_2];
#ifndef MNTR_CATAPULT_HLS
    #pragma HLS ARRAY_PARTITION variable=layer2_out complete dim=0
#endif
    nnet::dense_large<input_t, layer2_t, config2>(input_48, layer2_out, w2, b2);

    layer3_t layer3_out[N_LAYER_2];
#ifndef MNTR_CATAPULT_HLS
    #pragma HLS ARRAY_PARTITION variable=layer3_out complete dim=0
#endif
    nnet::relu<layer2_t, layer3_t, relu_config3>(layer2_out, layer3_out);

    layer4_t layer4_out[N_LAYER_4];
#ifndef MNTR_CATAPULT_HLS
    #pragma HLS ARRAY_PARTITION variable=layer4_out complete dim=0
#endif
    nnet::dense_large<layer3_t, layer4_t, config4>(layer3_out, layer4_out, w4, b4);

    layer5_t layer5_out[N_LAYER_4];
#ifndef MNTR_CATAPULT_HLS
    #pragma HLS ARRAY_PARTITION variable=layer5_out complete dim=0
#endif
    nnet::relu<layer4_t, layer5_t, relu_config5>(layer4_out, layer5_out);

    layer6_t layer6_out[N_LAYER_6];
#ifndef MNTR_CATAPULT_HLS
    #pragma HLS ARRAY_PARTITION variable=layer6_out complete dim=0
#endif
    nnet::dense_large<layer5_t, layer6_t, config6>(layer5_out, layer6_out, w6, b6);

    nnet::relu<layer6_t, result_t, relu_config7>(layer6_out, layer7_out);

    
}
