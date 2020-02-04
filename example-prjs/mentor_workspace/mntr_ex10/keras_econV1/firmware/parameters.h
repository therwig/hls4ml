#ifndef PARAMETERS_H_
#define PARAMETERS_H_

/* #include <complex> */
/* #include "ap_int.h" */
/* #include "ap_fixed.h" */
/* #include "nnet_utils/nnet_dense.h" */
/* #include "nnet_utils/nnet_dense_large.h" */
/* #include "nnet_utils/nnet_dense_compressed.h" */
/* #include "nnet_utils/nnet_conv.h" */
#include "nnet_utils/nnet_conv2d.h"
#include "nnet_utils/nnet_activation.h"
/* #include "nnet_utils/nnet_common.h" */
/* #include "nnet_utils/nnet_batchnorm.h" */
#include "nnet_utils/nnet_pooling.h"
/* #include "nnet_utils/nnet_merge.h" */
/* #include "nnet_utils/nnet_helpers.h" */

//hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 12
#define N_INPUT_2_1 4
#define N_INPUT_3_1 1
#define OUT_HEIGHT_2 12
#define OUT_WIDTH_2 4
#define N_FILT_2 16
#define OUT_HEIGHT_4 6
#define OUT_WIDTH_4 2
#define N_FILT_4 16
#define OUT_HEIGHT_5 6
#define OUT_WIDTH_5 2
#define N_FILT_5 8
#define OUT_HEIGHT_7 3
#define OUT_WIDTH_7 1
#define N_FILT_7 8
#define OUT_HEIGHT_8 3
#define OUT_WIDTH_8 1
#define N_FILT_8 4
#define OUT_HEIGHT_10 2
#define OUT_WIDTH_10 1
#define N_FILT_10 4

//hls-fpga-machine-learning insert layer-precision
typedef ap_fixed<18,8> model_default_t;
typedef ap_fixed<18,8> input_t;
typedef ap_fixed<18,8> layer2_t;
typedef ap_fixed<18,8> layer3_t;
typedef ap_fixed<18,8> layer4_t;
typedef ap_fixed<18,8> layer5_t;
typedef ap_fixed<18,8> layer6_t;
typedef ap_fixed<18,8> layer7_t;
typedef ap_fixed<18,8> layer8_t;
typedef ap_fixed<18,8> layer9_t;
typedef ap_fixed<18,8> result_t;

//hls-fpga-machine-learning insert layer-config
struct config2 : nnet::conv2d_config {
    static const unsigned pad_top = 1;
    static const unsigned pad_bottom = 1;
    static const unsigned pad_left = 1;
    static const unsigned pad_right = 1;
    static const unsigned in_height = N_INPUT_1_1;
    static const unsigned in_width = N_INPUT_2_1;
    static const unsigned n_chan = N_INPUT_3_1;
    static const unsigned filt_height = 3;
    static const unsigned filt_width = 3;
    static const unsigned n_filt = N_FILT_2;
    static const unsigned stride_height = 1;
    static const unsigned stride_width = 1;
    static const unsigned out_height = OUT_HEIGHT_2;
    static const unsigned out_width = OUT_WIDTH_2;
    static const unsigned reuse_factor = 1;
    static const unsigned n_zeros = 0;
    static const bool store_weights_in_bram = false;
    typedef ap_fixed<18,8> accum_t;
    typedef model_default_t bias_t;
    typedef model_default_t weight_t;
};

struct relu_config3 : nnet::activ_config {
    static const unsigned n_in = OUT_HEIGHT_2*OUT_WIDTH_2*N_FILT_2;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_parallel;
};

struct config4 : nnet::pooling2d_config {
    static const unsigned in_height = 12;
    static const unsigned in_width = OUT_WIDTH_2;
    static const unsigned n_filt = N_FILT_4;
    static const unsigned stride_height = 2;
    static const unsigned stride_width = 2;
    static const unsigned pool_height = 2;
    static const unsigned pool_width = 2;
    static const unsigned out_height = OUT_HEIGHT_4;
    static const unsigned out_width = OUT_WIDTH_4;
    static const unsigned pad_top = 0;
    static const unsigned pad_bottom = 0;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const nnet::Pool_Op pool_op = nnet::Max;
    static const unsigned reuse = 1;
};

struct config5 : nnet::conv2d_config {
    static const unsigned pad_top = 1;
    static const unsigned pad_bottom = 1;
    static const unsigned pad_left = 1;
    static const unsigned pad_right = 1;
    static const unsigned in_height = OUT_HEIGHT_4;
    static const unsigned in_width = OUT_WIDTH_4;
    static const unsigned n_chan = N_FILT_4;
    static const unsigned filt_height = 3;
    static const unsigned filt_width = 3;
    static const unsigned n_filt = N_FILT_5;
    static const unsigned stride_height = 1;
    static const unsigned stride_width = 1;
    static const unsigned out_height = OUT_HEIGHT_5;
    static const unsigned out_width = OUT_WIDTH_5;
    static const unsigned reuse_factor = 1;
    static const unsigned n_zeros = 0;
    static const bool store_weights_in_bram = false;
    typedef ap_fixed<18,8> accum_t;
    typedef model_default_t bias_t;
    typedef model_default_t weight_t;
};

struct relu_config6 : nnet::activ_config {
    static const unsigned n_in = OUT_HEIGHT_5*OUT_WIDTH_5*N_FILT_5;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_parallel;
};

struct config7 : nnet::pooling2d_config {
    static const unsigned in_height = 6;
    static const unsigned in_width = OUT_WIDTH_5;
    static const unsigned n_filt = N_FILT_7;
    static const unsigned stride_height = 2;
    static const unsigned stride_width = 2;
    static const unsigned pool_height = 2;
    static const unsigned pool_width = 2;
    static const unsigned out_height = OUT_HEIGHT_7;
    static const unsigned out_width = OUT_WIDTH_7;
    static const unsigned pad_top = 0;
    static const unsigned pad_bottom = 0;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const nnet::Pool_Op pool_op = nnet::Max;
    static const unsigned reuse = 1;
};

struct config8 : nnet::conv2d_config {
    static const unsigned pad_top = 1;
    static const unsigned pad_bottom = 1;
    static const unsigned pad_left = 1;
    static const unsigned pad_right = 1;
    static const unsigned in_height = OUT_HEIGHT_7;
    static const unsigned in_width = OUT_WIDTH_7;
    static const unsigned n_chan = N_FILT_7;
    static const unsigned filt_height = 3;
    static const unsigned filt_width = 3;
    static const unsigned n_filt = N_FILT_8;
    static const unsigned stride_height = 1;
    static const unsigned stride_width = 1;
    static const unsigned out_height = OUT_HEIGHT_8;
    static const unsigned out_width = OUT_WIDTH_8;
    static const unsigned reuse_factor = 1;
    static const unsigned n_zeros = 0;
    static const bool store_weights_in_bram = false;
    typedef ap_fixed<18,8> accum_t;
    typedef model_default_t bias_t;
    typedef model_default_t weight_t;
};

struct relu_config9 : nnet::activ_config {
    static const unsigned n_in = OUT_HEIGHT_8*OUT_WIDTH_8*N_FILT_8;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_parallel;
};

struct config10 : nnet::pooling2d_config {
    static const unsigned in_height = 3;
    static const unsigned in_width = OUT_WIDTH_8;
    static const unsigned n_filt = N_FILT_10;
    static const unsigned stride_height = 2;
    static const unsigned stride_width = 2;
    static const unsigned pool_height = 2;
    static const unsigned pool_width = 2;
    static const unsigned out_height = OUT_HEIGHT_10;
    static const unsigned out_width = OUT_WIDTH_10;
    static const unsigned pad_top = 0;
    static const unsigned pad_bottom = 1;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 1;
    static const nnet::Pool_Op pool_op = nnet::Max;
    static const unsigned reuse = 1;
};


#endif
