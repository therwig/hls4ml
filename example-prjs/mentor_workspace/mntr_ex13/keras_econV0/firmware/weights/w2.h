//Numpy array shape [48, 24]
//Min -0.343391448259
//Max 0.420874476433
//Number of zeros 0

#ifndef W2_H_
#define W2_H_

#ifdef __WEIGHTS_FROM_FILE__
static model_default_t w2[1152];
#else
static const model_default_t w2[1152] = {
#include "w2.txt"
};
#endif

#endif
