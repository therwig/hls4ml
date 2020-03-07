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

#ifndef NNET_DENSE_H_
#define NNET_DENSE_H_

#include "nnet_common.h"
#include "nnet_helpers.h"
#include <math.h>

namespace nnet {

struct dense_config
{
    // Internal data type definitions

    // Layer Sizes
    static const unsigned n_in = 10;
    static const unsigned n_out = 10;

    // Resource reuse info
    static const unsigned io_type = io_parallel;
    static const unsigned reuse_factor = 1;
    static const bool store_weights_in_bram = false;
    static const unsigned n_zeros = 0;
    // partitioning arrays cyclically to go with roll factors?
};


/* ---
 * 4 different methods to perform the product of input and weight, depending on the
 * types of each. Use std::enable_if<>::type for the return type since partial
 * template specification is not allowed by c++
 * --- */

template<class data_T, class weight_T, class ret_T>
inline typename std::enable_if<std::is_same<data_T, ap_uint<1>>::value
        and std::is_same<weight_T, ap_uint<1>>::value, ap_uint<1>>::type
product(ap_uint<1> a, ap_uint<1> w){
    return a == w;
}

template<class data_T, class weight_T, class ret_T>
inline typename std::enable_if<(not std::is_same<data_T, ap_uint<1>>::value)
        and std::is_same<weight_T, ap_uint<1>>::value, ret_T>::type
product(data_T a, ap_uint<1> w){
    // Specialisation for 1-bit weights, arbitrary data
    return w == 0 ? (data_T) -a : a;
}

template<class data_T, class weight_T, class ret_T>
inline typename std::enable_if<(not std::is_same<data_T, ap_uint<2>>::value)
        and std::is_same<weight_T, ap_int<2>>::value, ret_T>::type
product(data_T a, ap_int<2> w){
    // Specialisation for 2-bit weights, arbitrary data
    if (w == 0) return (data_T) 0;
    else if(w == -1) return (data_T) -a;
    else return (data_T) a; // if(w == 1)
}

template<class data_T, class weight_T, class ret_T>
inline typename std::enable_if<(not std::is_same<data_T, ap_uint<1>>::value)
        and (not std::is_same<weight_T, ap_uint<1>>::value), ret_T>::type
product(data_T a, weight_T w){
    // 'Normal' product
    return a * w;
}

template<class data_T, class res_T, typename CONFIG_T>
inline typename std::enable_if<std::is_same<data_T, ap_uint<1>>::value
        and std::is_same<typename CONFIG_T::weight_t, ap_uint<1>>::value, ap_int<nnet::ceillog2(CONFIG_T::n_in) + 2>>::type
cast(typename CONFIG_T::accum_t x){
  return (ap_int<nnet::ceillog2(CONFIG_T::n_in) + 2>) (x - CONFIG_T::n_in / 2) * 2;
}

template<class data_T, class res_T, typename CONFIG_T>
inline typename std::enable_if<(not std::is_same<data_T, ap_uint<1>>::value), res_T>::type
cast(typename CONFIG_T::accum_t x){
  return (res_T) x;
}

}

#endif
