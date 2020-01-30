//Numpy array shape [24, 6]
//Min -0.621767699718
//Max 0.600691378117
//Number of zeros 0

#ifndef W4_H_
#define W4_H_

#ifndef __SYNTHESIS__
static model_default_t w4[144];
#else
static model_default_t w4[144] = {
#include "w4.txt"
};
#endif

#endif
