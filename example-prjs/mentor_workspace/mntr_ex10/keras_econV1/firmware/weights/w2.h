//Numpy array shape [3, 3, 1, 16]
//Min -0.434854298830
//Max 0.918595552444
//Number of zeros 0

#ifndef W2_H_
#define W2_H_

#ifdef __WEIGHTS_FROM_FILE__
static model_default_t w2[144];
#else
static const model_default_t w2[144] = {
#include "w2.txt"
};
#endif

#endif
