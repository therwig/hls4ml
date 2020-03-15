#ifndef PREP_H_
#define PREP_H_

#include "ap_fixed.h"

typedef ap_uint<22> data_t;
typedef ap_ufixed<8,1> econ_t;

//hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 4
#define N_INPUT_2_1 4
#define N_INPUT_3_1 3

void converter(data_t input[N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1], econ_t output[N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1]);

#endif
