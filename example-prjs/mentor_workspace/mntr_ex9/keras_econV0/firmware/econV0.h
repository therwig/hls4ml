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

#ifndef ECONV0_H_
#define ECONV0_H_

//#include <complex>
//#include "ap_int.h"
//#include "ap_fixed.h"

#include "parameters.h"


// Prototype of top level function for C-synthesis
void econV0(
    input_t input_48[N_INPUT_1_1],
    result_t layer7_out[N_LAYER_6],
    unsigned short &const_size_in_1,
    unsigned short &const_size_out_1
);

#endif