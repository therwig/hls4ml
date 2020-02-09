//Numpy array shape [8]
//Min 0.073090679944
//Max 0.450619071722
//Number of zeros 0

#ifndef B5_H_
#define B5_H_

#ifdef __WEIGHTS_FROM_FILE__
static model_default_t b5[8];
#else
static const model_default_t b5[8] = {
#include "b5.txt"
};
#endif

#endif
