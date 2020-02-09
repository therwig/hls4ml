//Numpy array shape [3, 3, 8, 4]
//Min -0.881496906281
//Max 0.650682568550
//Number of zeros 0

#ifndef W8_H_
#define W8_H_

#ifdef __WEIGHTS_FROM_FILE__
static model_default_t w8[288];
#else
static const model_default_t w8[288] = {
#include "w8.txt"
};
#endif

#endif
