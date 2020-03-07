//
//    rfnoc-hls-neuralnet: Vivado HLS code for neural-net building blocks
//
//    Copyright (C) 2017 EJ Kreinar
//
//    This program is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.
//
//    This program is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with this program.  If not, see <http://www.gnu.org/licenses/>.
//

#ifndef NNET_ACTIVATION_H_
#define NNET_ACTIVATION_H_

#include <cmath>
#include "ap_fixed.h"
#include "nnet_common.h"

namespace nnet {

struct activ_config
{
    // IO size
    static const unsigned n_in = 10;

    // Internal info
    static const unsigned table_size = 1024;

    // Resource reuse info
    static const unsigned io_type = io_parallel;
    static const unsigned reuse_factor = 1;

    // Internal data type definitions
    typedef ap_fixed<18,8> table_t;
};


// *************************************************
//       RELU Activation
// *************************************************
template<class data_T, class res_T, typename CONFIG_T>
void  relu(data_T data[CONFIG_T::n_in], res_T res[CONFIG_T::n_in])
{
    data_T datareg;
    for (int ii=0; ii<CONFIG_T::n_in; ii++) {
        datareg = data[ii];
        if (datareg > 0) res[ii] = datareg;
        else res[ii] = res_T(0);
    }
}

}
#endif
