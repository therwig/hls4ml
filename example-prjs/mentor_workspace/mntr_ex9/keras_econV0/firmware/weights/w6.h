//Numpy array shape [6, 3]
//Min -0.692249596119
//Max 1.112214446068
//Number of zeros 0

#ifndef W6_H_
#define W6_H_

#ifndef __SYNTHESIS__
static model_default_t w6[18];
#else
static model_default_t w6[18] = {
#include "w6.txt"
};
#endif

#endif
