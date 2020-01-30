//Numpy array shape [3]
//Min -0.109620817006
//Max 0.434898346663
//Number of zeros 0

#ifndef B6_H_
#define B6_H_

#ifndef __SYNTHESIS__
static model_default_t b6[3];
#else
static model_default_t b6[3] = {
#include "b6.txt"
};
#endif

#endif
