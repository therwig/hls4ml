//Numpy array shape [4]
//Min 0.023852348328
//Max 0.350660264492
//Number of zeros 0

#ifndef B8_H_
#define B8_H_

#ifdef __WEIGHTS_FROM_FILE__
static model_default_t b8[4];
#else
static const model_default_t b8[4] = {
#include "b8.txt"
};
#endif

#endif
