//Numpy array shape [6]
//Min -0.160342678428
//Max 0.527373313904
//Number of zeros 0

#ifndef B4_H_
#define B4_H_

#ifdef __WEIGHTS_FROM_FILE__
static model_default_t b4[6];
#else
static const model_default_t b4[6] = {
#include "b4.txt"
};
#endif

#endif
