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
#include "converter.h"

void converter(
    data_t input[N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1],
    econ_t output[N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1]
) {
    int const_size_in = N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1;
    
    // sum input data
    uint sum = 0; 
    for (int i = 0; i < const_size_in; i++) {
        sum += input[i];
    }
    std::cout << sum <<std::endl;
    // find MSB with 1
    // de Bruijn Sequences
    // http://supertech.csail.mit.edu/papers/debruijn.pdf 
    const uint de_bruijin[32] =
    {
        0, 9, 1, 10, 13, 21, 2, 29, 11, 14, 16, 18, 22, 25, 3, 30,
        8, 12, 20, 28, 15, 17, 24, 7, 19, 27, 23, 6, 26, 5, 4, 31
    };
    sum |= sum >> 1;
    sum |= sum >> 2;
    sum |= sum >> 4;
    sum |= sum >> 8;
    sum |= sum >> 16;
    int msb = de_bruijin[(sum * 0x07C4ACDDU) >> 27];
    int lsb = 0;
    if(msb > 21)
        lsb = 14;
    else if(msb < 7)
        lsb = 0;
    else
        lsb = msb - 7; 
    std::cout << msb << std::endl;
    std::cout << lsb << std::endl;

    // reduce data to 8 bits
    for(int i = 0; i < const_size_in; i++) {
        output[i].bit_fill((int[1]) {input[i].slc<8>(lsb)});
    }
}
