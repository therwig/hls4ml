//Numpy array shape [16]
//Min -0.160020828247
//Max 0.477185219526
//Number of zeros 0

#ifndef B2_H_
#define B2_H_

#ifdef __WEIGHTS_FROM_FILE__
static model_default_t b2[16];
#else
static const model_default_t b2[16] = {
#include "b2.txt"
};
#endif

#endif
