//Numpy array shape [24]
//Min -0.221121937037
//Max 0.712054491043
//Number of zeros 0

#ifndef B2_H_
#define B2_H_

#ifndef __SYNTHESIS__
static model_default_t b2[24];
#else
static model_default_t b2[24] = {
#include "b2.txt"
};
#endif

#endif
