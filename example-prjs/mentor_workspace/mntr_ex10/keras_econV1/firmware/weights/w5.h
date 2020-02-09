//Numpy array shape [3, 3, 16, 8]
//Min -0.551234245300
//Max 0.582570910454
//Number of zeros 0

#ifndef W5_H_
#define W5_H_

#ifdef __WEIGHTS_FROM_FILE__
static model_default_t w5[1152];
#else
static const model_default_t w5[1152] = {
#include "w5.txt"
};
#endif

#endif
