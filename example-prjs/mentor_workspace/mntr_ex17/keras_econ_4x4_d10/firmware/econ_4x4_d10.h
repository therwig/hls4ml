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

#ifndef ECONV_4X4_D10_H_
#define ECONV_4X4_D10_H_

/* #include <complex> */
/* #include "ap_int.h" */
/* #include "ap_fixed.h" */

#include "parameters.h"

#include "ac_channel.h"

#include <iostream>

struct Layer2ChanStruct {
    layer2_t layer2_out[OUT_HEIGHT_2*OUT_WIDTH_2*N_FILT_2];
};

struct Layer3ChanStruct {
    layer3_t layer3_out[OUT_HEIGHT_2*OUT_WIDTH_2*N_FILT_2];
};

struct Layer4ChanStruct {
    layer4_t layer4_out[N_LAYER_4];
};

class econ_4x4_d10 {
    ac_channel<Layer2ChanStruct> layer2_chan;
    ac_channel<Layer3ChanStruct> layer3_chan;
    ac_channel<Layer4ChanStruct> layer4_chan;

#pragma hls_design
    void conv2d_1(
            input_t input_1[N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1],
            model_default_t w2[216],
            model_default_t b2[8],
            ac_channel<Layer2ChanStruct> &dout) {

        Layer2ChanStruct layer2_out;

        nnet::conv_2d<input_t, layer2_t, config2>(input_1, layer2_out.layer2_out, w2, b2, 2234);

        dout.write(layer2_out);
    }

#pragma hls_design
    void relu_1(
            ac_channel<Layer2ChanStruct> &din,
            ac_channel<Layer3ChanStruct> &dout
            ) {
        Layer2ChanStruct layer2_out;
        Layer3ChanStruct layer3_out;

        layer2_out = din.read();

        nnet::relu<layer2_t, layer3_t, relu_config3>(layer2_out.layer2_out, layer3_out.layer3_out);

        dout.write(layer3_out);
    }

#pragma hls_design
    void dense_1(
            ac_channel<Layer3ChanStruct> &din,
            model_default_t w4[1280],
            model_default_t b4[10],
            ac_channel<Layer4ChanStruct> &dout
            ) {
        Layer3ChanStruct layer3_out;
        Layer4ChanStruct layer4_out;

        layer3_out = din.read();

        nnet::dense_large<layer3_t, layer4_t, config4>(layer3_out.layer3_out, layer4_out.layer4_out, w4, b4);

        dout.write(layer4_out);
    }


#pragma hls_design
    void relu_2(
            ac_channel<Layer4ChanStruct> &din,
            result_t layer5_out[N_LAYER_4]
            ) {
        Layer4ChanStruct layer4_out;

        layer4_out = din.read();

        nnet::relu<layer4_t, result_t, relu_config5>(layer4_out.layer4_out, layer5_out);
    }


    public:

    econ_4x4_d10() {}

#pragma hls_design interface
    void run(input_t input_1[N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1],
    result_t layer5_out[N_LAYER_4],
    model_default_t w2[216],
    model_default_t b2[8],
    model_default_t w4[1280],
    model_default_t b4[10]) {

        conv2d_1(input_1, w2, b2, layer2_chan);
        relu_1(layer2_chan, layer3_chan);
        dense_1(layer3_chan, w4, b4, layer4_chan);
        relu_2(layer4_chan, layer5_out);
    }
};

#endif
