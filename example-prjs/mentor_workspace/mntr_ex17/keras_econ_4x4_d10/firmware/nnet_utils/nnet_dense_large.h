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

#ifndef NNET_LARGE_LAYER_H_
#define NNET_LARGE_LAYER_H_

#include "nnet_common.h"
#include "nnet_dense.h"
#include <math.h>
#include <assert.h>

namespace nnet {

template<class data_T, class res_T, typename CONFIG_T>
void dense_large_rf_leq_nin(
    data_T data[CONFIG_T::n_in],
    res_T  res[CONFIG_T::n_out],
#ifndef __WEIGHTS_FROM_FILE__
    const
#endif
    typename CONFIG_T::weight_t weights[CONFIG_T::n_in*CONFIG_T::n_out],
#ifndef __WEIGHTS_FROM_FILE__
    const
#endif
    typename CONFIG_T::bias_t   biases[CONFIG_T::n_out]) {

    const int rufactor = CONFIG_T::reuse_factor;
    const int multfactor = MIN(CONFIG_T::n_in,CONFIG_T::reuse_factor);
    const int multiplier_limit = DIV_ROUNDUP(CONFIG_T::n_in*CONFIG_T::n_out, multfactor);
    const int block_factor = DIV_ROUNDUP(CONFIG_T::n_in*CONFIG_T::n_out, CONFIG_T::reuse_factor);
    const int multscale = multiplier_limit/CONFIG_T::n_out;
    const int nin = CONFIG_T::n_in;
    const int nout = CONFIG_T::n_out;

    assert((multiplier_limit % nout == 0 || rufactor >= nin) && "The current Reuse Factor is not allowed");
    assert((multiplier_limit == block_factor) && "This function is correct only for RF <= N_IN");
    typename CONFIG_T::accum_t acc[CONFIG_T::n_out];
    InitAccum:
    for (int iacc = 0; iacc < nout; iacc++) {
        acc[iacc] = typename CONFIG_T::accum_t(biases[iacc]);
    }

    ReuseLoop:
    for (int ir = 0; ir < rufactor; ir++) {
        ap_int<32> w_index = ir;
        ap_int<32> in_index = ir;
        ap_int<32> out_index = 0;
        ap_int<32> acc_step = 0;

        MultLoop:
        for (int im = 0; im < block_factor; im++) {
//#ifdef SLEC_CPC
//            #pragma assume yes
//            assert(out_index < CONFIG_T::n_out);
//            #pragma assume yes
//            assert(in_index < CONFIG_T::n_in);
//            #pragma assume yes
//            assert(w_index < CONFIG_T::n_in*CONFIG_T::n_out);
//#endif
            acc[out_index] += product<data_T, typename CONFIG_T::weight_t, typename CONFIG_T::accum_t>(data[in_index], weights[w_index]);

            // Increment w_index
            w_index += rufactor;
            // Increment in_index
            in_index += rufactor;
            if (in_index >= nin) {
                in_index = ir;
            }
            // Increment out_index
            //if (acc_step + 1 >= multscale) {
            //    acc_step = 0;
            //    out_index++;
            //} else {
            //    acc_step++;
            //}
            out_index = (acc_step + 1 >= multscale) ? ap_int<32>(out_index + 1) : ap_int<32>(out_index);
            acc_step = (acc_step + 1 >= multscale) ? ap_int<32>(0) : ap_int<32>(acc_step + 1);
        }
    }

    // Cast to "res_t" type
    Result:
    for (int ires = 0; ires < CONFIG_T::n_out; ires++) {
        res[ires] = cast<data_T, res_T, CONFIG_T>(acc[ires]);
    }
}

template<class data_T, class res_T, typename CONFIG_T>
void dense_large_rf_gt_nin_rem0(
    data_T data[CONFIG_T::n_in],
    res_T  res[CONFIG_T::n_out],
#ifndef __WEIGHTS_FROM_FILE__
    const
#endif
    typename CONFIG_T::weight_t weights[CONFIG_T::n_in*CONFIG_T::n_out],
#ifndef __WEIGHTS_FROM_FILE__
    const
#endif
    typename CONFIG_T::bias_t   biases[CONFIG_T::n_out]) {

    const int rufactor = MIN(CONFIG_T::reuse_factor, CONFIG_T::n_in * CONFIG_T::n_out);
    const int multfactor = MIN(CONFIG_T::n_in,CONFIG_T::reuse_factor);
    const int multiplier_limit = DIV_ROUNDUP(CONFIG_T::n_in*CONFIG_T::n_out, multfactor);
    const int block_factor = DIV_ROUNDUP(CONFIG_T::n_in*CONFIG_T::n_out, CONFIG_T::reuse_factor);
    const int multscale = multiplier_limit/CONFIG_T::n_out;
    const int nin = CONFIG_T::n_in;
    const int nout = CONFIG_T::n_out;

    assert((multiplier_limit % nout == 0 || rufactor >= nin) && "The current Reuse Factor is not allowed");
    assert((rufactor > nin && rufactor % nin == 0) && "This function is correct only for RF > N_IN && RF % N_IN == 0");
    typename CONFIG_T::accum_t acc[CONFIG_T::n_out];

    InitAccumLoop:
    for (int iacc = 0; iacc < nout; iacc++) {
        acc[iacc] = (typename CONFIG_T::accum_t) biases[iacc];
    }

    ap_int<32> w_index;
    ap_int<32> in_index = 0;
    ap_int<32> out_index;
    ap_int<32> outstep = 0;
    const int outscale = rufactor / nin;

    int outidx[rufactor];

    IndexLoop:
    for (int ir = 0; ir < rufactor; ir++) {
        outidx[ir] = outstep;
        //if ((ir + 1) % nin == 0) {
        //    outstep++;
        //}
        outstep = ((ir + 1) % nin == 0) ? ap_int<32>(outstep + 1) : ap_int<32>(outstep);
    }

    ReuseLoop:
    for (int ir = 0; ir < rufactor; ir++) {
        w_index = ir;
        out_index = outidx[ir]/*outstep*/;

        MultLoop:
        for (int im = 0; im < block_factor; im++) {
            acc[out_index] += product<data_T, typename CONFIG_T::weight_t, typename CONFIG_T::accum_t>(data[in_index], weights[w_index]);

            w_index += rufactor;
            if (w_index >= CONFIG_T::n_in * CONFIG_T::n_out) break; // check out of bounds
            out_index += outscale;
        }

        in_index++;
        if (in_index >= nin) {
            in_index = 0;
            //outstep++; // This causes a huge increase in scheduling and RTL generation times, hence the above workaround.
        }
    }

    // Cast to "res_t" type
    ResultLoop:
    for (int ires = 0; ires < CONFIG_T::n_out; ires++) {
        res[ires] = cast<data_T, res_T, CONFIG_T>(acc[ires]);
    }
}

template<class data_T, class res_T, typename CONFIG_T>
void dense_large_rf_gt_nin(
    data_T data[CONFIG_T::n_in],
    res_T  res[CONFIG_T::n_out],
#ifndef __WEIGHTS_FROM_FILE__
    const
#endif
    typename CONFIG_T::weight_t weights[CONFIG_T::n_in*CONFIG_T::n_out],
#ifndef __WEIGHTS_FROM_FILE__
    const
#endif
    typename CONFIG_T::bias_t   biases[CONFIG_T::n_out]) {

    const int rufactor = CONFIG_T::reuse_factor;
    const int multfactor = MIN(CONFIG_T::n_in,CONFIG_T::reuse_factor);
    const int multiplier_limit = DIV_ROUNDUP(CONFIG_T::n_in*CONFIG_T::n_out, multfactor);
    const int block_factor = DIV_ROUNDUP(CONFIG_T::n_in*CONFIG_T::n_out, CONFIG_T::reuse_factor);
    const int multscale = multiplier_limit/CONFIG_T::n_out;
    const int nin = CONFIG_T::n_in;
    const int nout = CONFIG_T::n_out;

    assert((multiplier_limit % nout == 0 || rufactor >= nin) && "The current Reuse Factor is not allowed");
    assert((rufactor > nin) && "This function is correct only for RF > N_IN");

    typename CONFIG_T::accum_t acc[CONFIG_T::n_out];
    InitAccum:
    for (int iacc = 0; iacc < nout; iacc++) {
        acc[iacc] = (typename CONFIG_T::accum_t) biases[iacc];
    }

    ReuseLoop:
    for (int ir = 0; ir < rufactor; ir++) {
        typename CONFIG_T::accum_t tmpmult[block_factor];
        MultLoop:
        for (int im = 0; im < block_factor; im++) {
            int w_index = ir + rufactor * im;
            int in_index = w_index % nin;
            if (w_index >= CONFIG_T::n_in*CONFIG_T::n_out) continue; // check out of bounds
            tmpmult[im] = product<data_T, typename CONFIG_T::weight_t, typename CONFIG_T::accum_t>(data[in_index], weights[w_index]);
        }

        typename CONFIG_T::accum_t mult[multiplier_limit];
        ResetMult:
        for (int imult = 0; imult < multiplier_limit; imult++) {
            mult[imult] = typename CONFIG_T::accum_t(0);
            //mult[imult] = 0;
        }

        AccumLoop1:
        for (int im = 0; im < block_factor; im++) {
            int w_index = ir + rufactor * im;
            int out_index = w_index / multfactor;
            if (out_index >= multiplier_limit) continue; // check out of bounds
            mult[out_index] += tmpmult[im];
        }

        AccumLoop2:
        for (int im = 0; im < multiplier_limit; im++) {
            //int out_index = im/multscale; // This is the general case
            //acc[out_index] += mult[im];
            acc[im] += mult[im]; // If RF > N_IN then multiplier_limit == n_out
        }
    }

    // Cast to "res_t" type
    Result:
    for (int ires = 0; ires < CONFIG_T::n_out; ires++) {
        res[ires] = cast<data_T, res_T, CONFIG_T>(acc[ires]);
    }
}

template<class data_T, class res_T, typename CONFIG_T>
void dense_large(
    data_T data[CONFIG_T::n_in],
    res_T  res[CONFIG_T::n_out],
#ifndef __WEIGHTS_FROM_FILE__
    const
#endif
    typename CONFIG_T::weight_t weights[CONFIG_T::n_in*CONFIG_T::n_out],
#ifndef __WEIGHTS_FROM_FILE__
    const
#endif
    typename CONFIG_T::bias_t   biases[CONFIG_T::n_out]) {
    if (CONFIG_T::reuse_factor <= CONFIG_T::n_in) {
        dense_large_rf_leq_nin<data_T, res_T, CONFIG_T>(data, res, weights, biases);
    } else if (CONFIG_T::reuse_factor % CONFIG_T::n_in == 0) {
        dense_large_rf_gt_nin_rem0<data_T, res_T, CONFIG_T>(data, res, weights, biases);
    } else {
        dense_large_rf_gt_nin<data_T, res_T, CONFIG_T>(data, res, weights, biases);
    }
}

}

#endif
