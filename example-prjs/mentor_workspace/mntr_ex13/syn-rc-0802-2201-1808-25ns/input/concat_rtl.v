
//------> /opt/cad/catapult/pkgs/siflibs/ccs_in_wait_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module ccs_in_wait_v1 (idat, rdy, ivld, dat, irdy, vld);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] idat;
  output             rdy;
  output             ivld;
  input  [width-1:0] dat;
  input              irdy;
  input              vld;

  wire   [width-1:0] idat;
  wire               rdy;
  wire               ivld;

  assign idat = dat;
  assign rdy = irdy;
  assign ivld = vld;

endmodule


//------> /opt/cad/catapult/pkgs/siflibs/ccs_out_wait_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module ccs_out_wait_v1 (dat, irdy, vld, idat, rdy, ivld);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] dat;
  output             irdy;
  output             vld;
  input  [width-1:0] idat;
  input              rdy;
  input              ivld;

  wire   [width-1:0] dat;
  wire               irdy;
  wire               vld;

  assign dat = idat;
  assign irdy = rdy;
  assign vld = ivld;

endmodule



//------> /opt/cad/catapult/pkgs/siflibs/ccs_out_vld_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module ccs_out_vld_v1 (dat, vld, idat, ivld);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] dat;
  output             vld;
  input  [width-1:0] idat;
  input              ivld;

  wire   [width-1:0] dat;
  wire               vld;

  assign dat = idat;
  assign vld = ivld;

endmodule


//------> /opt/cad/catapult/pkgs/siflibs/mgc_io_sync_v2.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module mgc_io_sync_v2 (ld, lz);
    parameter valid = 0;

    input  ld;
    output lz;

    wire   lz;

    assign lz = ld;

endmodule


//------> /opt/cad/catapult/pkgs/siflibs/ccs_in_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module ccs_in_v1 (idat, dat);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] idat;
  input  [width-1:0] dat;

  wire   [width-1:0] idat;

  assign idat = dat;

endmodule


//------> /opt/cad/catapult/pkgs/siflibs/mgc_out_dreg_v2.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module mgc_out_dreg_v2 (d, z);

  parameter integer rscid = 1;
  parameter integer width = 8;

  input    [width-1:0] d;
  output   [width-1:0] z;

  wire     [width-1:0] z;

  assign z = d;

endmodule

//------> ../td_ccore_solutions/nnet__relu_layer6_t_result_t_relu_config7__2ad7de4a814a089becf633139a3e7ec975ef_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4c/853139 Production Release
//  HLS Date:       Thu Jan 16 19:19:57 PST 2020
// 
//  Generated by:   giuseppe@fastml02
//  Generated date: Sun Feb 23 21:07:48 2020
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    nnet_relu_layer6_t_result_t_relu_config7_core
// ------------------------------------------------------------------


module nnet_relu_layer6_t_result_t_relu_config7_core (
  data_rsc_dat, res_rsc_z, ccs_ccore_clk, ccs_ccore_srst, ccs_ccore_en
);
  input [53:0] data_rsc_dat;
  output [53:0] res_rsc_z;
  input ccs_ccore_clk;
  input ccs_ccore_srst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [53:0] data_rsci_idat;
  reg [16:0] res_rsci_d_52_36;
  reg [16:0] res_rsci_d_34_18;
  reg [16:0] res_rsci_d_16_0;

  wire[18:0] for_1_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_1_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_3_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_3_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_2_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_2_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [53:0] nl_res_rsci_d;
  assign nl_res_rsci_d = {1'b0 , res_rsci_d_52_36 , 1'b0 , res_rsci_d_34_18 , 1'b0
      , res_rsci_d_16_0};
  ccs_in_v1 #(.rscid(32'sd20),
  .width(32'sd54)) data_rsci (
      .dat(data_rsc_dat),
      .idat(data_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd21),
  .width(32'sd54)) res_rsci (
      .d(nl_res_rsci_d[53:0]),
      .z(res_rsc_z)
    );
  always @(posedge ccs_ccore_clk) begin
    if ( ccs_ccore_srst ) begin
      res_rsci_d_16_0 <= 17'b00000000000000000;
      res_rsci_d_52_36 <= 17'b00000000000000000;
      res_rsci_d_34_18 <= 17'b00000000000000000;
    end
    else if ( ccs_ccore_en ) begin
      res_rsci_d_16_0 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[16:0]),
          (readslicef_19_1_18((for_1_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_52_36 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[52:36]),
          (readslicef_19_1_18((for_3_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_34_18 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[34:18]),
          (readslicef_19_1_18((for_2_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
    end
  end
  assign nl_for_1_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[17:0]);
  assign for_1_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_1_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_3_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[53:36]);
  assign for_3_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_3_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_2_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[35:18]);
  assign for_2_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_2_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];

  function automatic [16:0] MUX_v_17_2_2;
    input [16:0] input_0;
    input [16:0] input_1;
    input [0:0] sel;
    reg [16:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_17_2_2 = result;
  end
  endfunction


  function automatic [0:0] readslicef_19_1_18;
    input [18:0] vector;
    reg [18:0] tmp;
  begin
    tmp = vector >> 18;
    readslicef_19_1_18 = tmp[0:0];
  end
  endfunction


  function automatic [18:0] conv_s2s_18_19 ;
    input [17:0]  vector ;
  begin
    conv_s2s_18_19 = {vector[17], vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    nnet_relu_layer6_t_result_t_relu_config7
// ------------------------------------------------------------------


module nnet_relu_layer6_t_result_t_relu_config7 (
  data_rsc_dat, res_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_srst,
      ccs_ccore_en
);
  input [53:0] data_rsc_dat;
  output [53:0] res_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_srst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  nnet_relu_layer6_t_result_t_relu_config7_core nnet_relu_layer6_t_result_t_relu_config7_core_inst
      (
      .data_rsc_dat(data_rsc_dat),
      .res_rsc_z(res_rsc_z),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_srst(ccs_ccore_srst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/nnet__dense_large_layer5_t_layer6_t_config6__27baef3d67cec076a310ac1b7b4dc41194b5_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4c/853139 Production Release
//  HLS Date:       Thu Jan 16 19:19:57 PST 2020
// 
//  Generated by:   giuseppe@fastml02
//  Generated date: Tue Feb 25 11:04:10 2020
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    nnet_dense_large_layer5_t_layer6_t_config6_core
// ------------------------------------------------------------------


module nnet_dense_large_layer5_t_layer6_t_config6_core (
  data_rsc_dat, res_rsc_z, weights_rsc_dat, biases_rsc_dat, ccs_ccore_clk, ccs_ccore_srst,
      ccs_ccore_en
);
  input [107:0] data_rsc_dat;
  output [53:0] res_rsc_z;
  input [143:0] weights_rsc_dat;
  input [23:0] biases_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_srst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [107:0] data_rsci_idat;
  wire [143:0] weights_rsci_idat;
  wire [23:0] biases_rsci_idat;
  reg [17:0] res_rsci_d_53_36;
  wire [18:0] nl_res_rsci_d_53_36;
  reg [17:0] res_rsci_d_35_18;
  wire [18:0] nl_res_rsci_d_35_18;
  reg [17:0] res_rsci_d_17_0;
  wire [18:0] nl_res_rsci_d_17_0;

  wire[17:0] MultLoop_acc_7_nl;
  wire[18:0] nl_MultLoop_acc_7_nl;
  wire[17:0] MultLoop_acc_5_nl;
  wire[18:0] nl_MultLoop_acc_5_nl;
  wire[23:0] MultLoop_14_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_14_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_15_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_15_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_4_nl;
  wire[18:0] nl_MultLoop_acc_4_nl;
  wire[23:0] MultLoop_16_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_16_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_17_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_17_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_6_nl;
  wire[18:0] nl_MultLoop_acc_6_nl;
  wire[17:0] MultLoop_acc_3_nl;
  wire[18:0] nl_MultLoop_acc_3_nl;
  wire[23:0] MultLoop_18_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_18_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_13_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_13_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_17_nl;
  wire[18:0] nl_MultLoop_acc_17_nl;
  wire[17:0] MultLoop_acc_15_nl;
  wire[18:0] nl_MultLoop_acc_15_nl;
  wire[23:0] MultLoop_2_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_2_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_3_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_3_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_14_nl;
  wire[18:0] nl_MultLoop_acc_14_nl;
  wire[23:0] MultLoop_4_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_4_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_5_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_5_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_16_nl;
  wire[18:0] nl_MultLoop_acc_16_nl;
  wire[17:0] MultLoop_acc_13_nl;
  wire[18:0] nl_MultLoop_acc_13_nl;
  wire[23:0] MultLoop_6_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_6_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_1_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_1_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_12_nl;
  wire[18:0] nl_MultLoop_acc_12_nl;
  wire[17:0] MultLoop_acc_10_nl;
  wire[18:0] nl_MultLoop_acc_10_nl;
  wire[23:0] MultLoop_8_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_8_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_9_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_9_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_9_nl;
  wire[18:0] nl_MultLoop_acc_9_nl;
  wire[23:0] MultLoop_10_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_10_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_11_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_11_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_11_nl;
  wire[18:0] nl_MultLoop_acc_11_nl;
  wire[17:0] MultLoop_acc_8_nl;
  wire[18:0] nl_MultLoop_acc_8_nl;
  wire[23:0] MultLoop_12_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_12_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_7_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_7_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [53:0] nl_res_rsci_d;
  assign nl_res_rsci_d = {res_rsci_d_53_36 , res_rsci_d_35_18 , res_rsci_d_17_0};
  ccs_in_v1 #(.rscid(32'sd15),
  .width(32'sd108)) data_rsci (
      .dat(data_rsc_dat),
      .idat(data_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd16),
  .width(32'sd54)) res_rsci (
      .d(nl_res_rsci_d[53:0]),
      .z(res_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd17),
  .width(32'sd144)) weights_rsci (
      .dat(weights_rsc_dat),
      .idat(weights_rsci_idat)
    );
  ccs_in_v1 #(.rscid(32'sd18),
  .width(32'sd24)) biases_rsci (
      .dat(biases_rsc_dat),
      .idat(biases_rsci_idat)
    );
  always @(posedge ccs_ccore_clk) begin
    if ( ccs_ccore_srst ) begin
      res_rsci_d_53_36 <= 18'b000000000000000000;
      res_rsci_d_17_0 <= 18'b000000000000000000;
      res_rsci_d_35_18 <= 18'b000000000000000000;
    end
    else if ( ccs_ccore_en ) begin
      res_rsci_d_53_36 <= nl_res_rsci_d_53_36[17:0];
      res_rsci_d_17_0 <= nl_res_rsci_d_17_0[17:0];
      res_rsci_d_35_18 <= nl_res_rsci_d_35_18[17:0];
    end
  end
  assign nl_MultLoop_14_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[35:18])) * $signed((weights_rsci_idat[111:104]));
  assign MultLoop_14_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_14_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_15_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[53:36])) * $signed((weights_rsci_idat[119:112]));
  assign MultLoop_15_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_15_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_5_nl = (readslicef_24_18_6((MultLoop_14_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_15_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_5_nl = nl_MultLoop_acc_5_nl[17:0];
  assign nl_MultLoop_16_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[71:54])) * $signed((weights_rsci_idat[127:120]));
  assign MultLoop_16_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_16_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_17_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[89:72])) * $signed((weights_rsci_idat[135:128]));
  assign MultLoop_17_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_17_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_4_nl = (readslicef_24_18_6((MultLoop_16_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_17_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_4_nl = nl_MultLoop_acc_4_nl[17:0];
  assign nl_MultLoop_acc_7_nl = (MultLoop_acc_5_nl) + (MultLoop_acc_4_nl);
  assign MultLoop_acc_7_nl = nl_MultLoop_acc_7_nl[17:0];
  assign nl_MultLoop_18_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[107:90])) * $signed((weights_rsci_idat[143:136]));
  assign MultLoop_18_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_18_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_3_nl = (readslicef_24_18_6((MultLoop_18_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + conv_s2s_12_18({(biases_rsci_idat[23:16]) , 4'b0000});
  assign MultLoop_acc_3_nl = nl_MultLoop_acc_3_nl[17:0];
  assign nl_MultLoop_13_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[17:0])) * $signed((weights_rsci_idat[103:96]));
  assign MultLoop_13_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_13_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_6_nl = (MultLoop_acc_3_nl) + (readslicef_24_18_6((MultLoop_13_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_6_nl = nl_MultLoop_acc_6_nl[17:0];
  assign nl_res_rsci_d_53_36  = (MultLoop_acc_7_nl) + (MultLoop_acc_6_nl);
  assign nl_MultLoop_2_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[35:18])) * $signed((weights_rsci_idat[15:8]));
  assign MultLoop_2_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_2_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_3_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[53:36])) * $signed((weights_rsci_idat[23:16]));
  assign MultLoop_3_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_3_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_15_nl = (readslicef_24_18_6((MultLoop_2_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_3_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_15_nl = nl_MultLoop_acc_15_nl[17:0];
  assign nl_MultLoop_4_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[71:54])) * $signed((weights_rsci_idat[31:24]));
  assign MultLoop_4_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_4_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_5_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[89:72])) * $signed((weights_rsci_idat[39:32]));
  assign MultLoop_5_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_5_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_14_nl = (readslicef_24_18_6((MultLoop_4_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_5_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_14_nl = nl_MultLoop_acc_14_nl[17:0];
  assign nl_MultLoop_acc_17_nl = (MultLoop_acc_15_nl) + (MultLoop_acc_14_nl);
  assign MultLoop_acc_17_nl = nl_MultLoop_acc_17_nl[17:0];
  assign nl_MultLoop_6_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[107:90])) * $signed((weights_rsci_idat[47:40]));
  assign MultLoop_6_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_6_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_13_nl = (readslicef_24_18_6((MultLoop_6_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + conv_s2s_12_18({(biases_rsci_idat[7:0]) , 4'b0000});
  assign MultLoop_acc_13_nl = nl_MultLoop_acc_13_nl[17:0];
  assign nl_MultLoop_1_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[17:0])) * $signed((weights_rsci_idat[7:0]));
  assign MultLoop_1_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_1_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_16_nl = (MultLoop_acc_13_nl) + (readslicef_24_18_6((MultLoop_1_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_16_nl = nl_MultLoop_acc_16_nl[17:0];
  assign nl_res_rsci_d_17_0  = (MultLoop_acc_17_nl) + (MultLoop_acc_16_nl);
  assign nl_MultLoop_8_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[35:18])) * $signed((weights_rsci_idat[63:56]));
  assign MultLoop_8_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_8_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_9_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[53:36])) * $signed((weights_rsci_idat[71:64]));
  assign MultLoop_9_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_9_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_10_nl = (readslicef_24_18_6((MultLoop_8_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_9_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_10_nl = nl_MultLoop_acc_10_nl[17:0];
  assign nl_MultLoop_10_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[71:54])) * $signed((weights_rsci_idat[79:72]));
  assign MultLoop_10_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_10_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_11_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[89:72])) * $signed((weights_rsci_idat[87:80]));
  assign MultLoop_11_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_11_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_9_nl = (readslicef_24_18_6((MultLoop_10_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_11_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_9_nl = nl_MultLoop_acc_9_nl[17:0];
  assign nl_MultLoop_acc_12_nl = (MultLoop_acc_10_nl) + (MultLoop_acc_9_nl);
  assign MultLoop_acc_12_nl = nl_MultLoop_acc_12_nl[17:0];
  assign nl_MultLoop_12_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[107:90])) * $signed((weights_rsci_idat[95:88]));
  assign MultLoop_12_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_12_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_8_nl = (readslicef_24_18_6((MultLoop_12_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + conv_s2s_12_18({(biases_rsci_idat[15:8]) , 4'b0000});
  assign MultLoop_acc_8_nl = nl_MultLoop_acc_8_nl[17:0];
  assign nl_MultLoop_7_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[17:0])) * $signed((weights_rsci_idat[55:48]));
  assign MultLoop_7_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_7_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_11_nl = (MultLoop_acc_8_nl) + (readslicef_24_18_6((MultLoop_7_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_11_nl = nl_MultLoop_acc_11_nl[17:0];
  assign nl_res_rsci_d_35_18  = (MultLoop_acc_12_nl) + (MultLoop_acc_11_nl);

  function automatic [17:0] readslicef_24_18_6;
    input [23:0] vector;
    reg [23:0] tmp;
  begin
    tmp = vector >> 6;
    readslicef_24_18_6 = tmp[17:0];
  end
  endfunction


  function automatic [17:0] conv_s2s_12_18 ;
    input [11:0]  vector ;
  begin
    conv_s2s_12_18 = {{6{vector[11]}}, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    nnet_dense_large_layer5_t_layer6_t_config6
// ------------------------------------------------------------------


module nnet_dense_large_layer5_t_layer6_t_config6 (
  data_rsc_dat, res_rsc_z, weights_rsc_dat, biases_rsc_dat, ccs_ccore_start_rsc_dat,
      ccs_ccore_clk, ccs_ccore_srst, ccs_ccore_en
);
  input [107:0] data_rsc_dat;
  output [53:0] res_rsc_z;
  input [143:0] weights_rsc_dat;
  input [23:0] biases_rsc_dat;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_srst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  nnet_dense_large_layer5_t_layer6_t_config6_core nnet_dense_large_layer5_t_layer6_t_config6_core_inst
      (
      .data_rsc_dat(data_rsc_dat),
      .res_rsc_z(res_rsc_z),
      .weights_rsc_dat(weights_rsc_dat),
      .biases_rsc_dat(biases_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_srst(ccs_ccore_srst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/nnet__relu_layer4_t_layer5_t_relu_config5__9ce8b1180adac085c5d066ac8295b58a9071_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4c/853139 Production Release
//  HLS Date:       Thu Jan 16 19:19:57 PST 2020
// 
//  Generated by:   giuseppe@fastml02
//  Generated date: Sun Feb 23 21:08:02 2020
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    nnet_relu_layer4_t_layer5_t_relu_config5_core
// ------------------------------------------------------------------


module nnet_relu_layer4_t_layer5_t_relu_config5_core (
  data_rsc_dat, res_rsc_z, ccs_ccore_clk, ccs_ccore_srst, ccs_ccore_en
);
  input [107:0] data_rsc_dat;
  output [107:0] res_rsc_z;
  input ccs_ccore_clk;
  input ccs_ccore_srst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [107:0] data_rsci_idat;
  reg [16:0] res_rsci_d_106_90;
  reg [16:0] res_rsci_d_88_72;
  reg [16:0] res_rsci_d_70_54;
  reg [16:0] res_rsci_d_52_36;
  reg [16:0] res_rsci_d_34_18;
  reg [16:0] res_rsci_d_16_0;

  wire[18:0] for_1_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_1_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_6_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_6_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_2_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_2_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_5_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_5_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_3_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_3_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_4_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_4_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [107:0] nl_res_rsci_d;
  assign nl_res_rsci_d = {1'b0 , res_rsci_d_106_90 , 1'b0 , res_rsci_d_88_72 , 1'b0
      , res_rsci_d_70_54 , 1'b0 , res_rsci_d_52_36 , 1'b0 , res_rsci_d_34_18 , 1'b0
      , res_rsci_d_16_0};
  ccs_in_v1 #(.rscid(32'sd13),
  .width(32'sd108)) data_rsci (
      .dat(data_rsc_dat),
      .idat(data_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd14),
  .width(32'sd108)) res_rsci (
      .d(nl_res_rsci_d[107:0]),
      .z(res_rsc_z)
    );
  always @(posedge ccs_ccore_clk) begin
    if ( ccs_ccore_srst ) begin
      res_rsci_d_16_0 <= 17'b00000000000000000;
      res_rsci_d_106_90 <= 17'b00000000000000000;
      res_rsci_d_34_18 <= 17'b00000000000000000;
      res_rsci_d_88_72 <= 17'b00000000000000000;
      res_rsci_d_52_36 <= 17'b00000000000000000;
      res_rsci_d_70_54 <= 17'b00000000000000000;
    end
    else if ( ccs_ccore_en ) begin
      res_rsci_d_16_0 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[16:0]),
          (readslicef_19_1_18((for_1_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_106_90 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[106:90]),
          (readslicef_19_1_18((for_6_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_34_18 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[34:18]),
          (readslicef_19_1_18((for_2_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_88_72 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[88:72]),
          (readslicef_19_1_18((for_5_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_52_36 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[52:36]),
          (readslicef_19_1_18((for_3_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_70_54 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[70:54]),
          (readslicef_19_1_18((for_4_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
    end
  end
  assign nl_for_1_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[17:0]);
  assign for_1_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_1_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_6_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[107:90]);
  assign for_6_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_6_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_2_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[35:18]);
  assign for_2_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_2_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_5_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[89:72]);
  assign for_5_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_5_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_3_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[53:36]);
  assign for_3_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_3_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_4_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[71:54]);
  assign for_4_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_4_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];

  function automatic [16:0] MUX_v_17_2_2;
    input [16:0] input_0;
    input [16:0] input_1;
    input [0:0] sel;
    reg [16:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_17_2_2 = result;
  end
  endfunction


  function automatic [0:0] readslicef_19_1_18;
    input [18:0] vector;
    reg [18:0] tmp;
  begin
    tmp = vector >> 18;
    readslicef_19_1_18 = tmp[0:0];
  end
  endfunction


  function automatic [18:0] conv_s2s_18_19 ;
    input [17:0]  vector ;
  begin
    conv_s2s_18_19 = {vector[17], vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    nnet_relu_layer4_t_layer5_t_relu_config5
// ------------------------------------------------------------------


module nnet_relu_layer4_t_layer5_t_relu_config5 (
  data_rsc_dat, res_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_srst,
      ccs_ccore_en
);
  input [107:0] data_rsc_dat;
  output [107:0] res_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_srst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  nnet_relu_layer4_t_layer5_t_relu_config5_core nnet_relu_layer4_t_layer5_t_relu_config5_core_inst
      (
      .data_rsc_dat(data_rsc_dat),
      .res_rsc_z(res_rsc_z),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_srst(ccs_ccore_srst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/nnet__dense_large_layer3_t_layer4_t_config4__0ff77663709c5256e581f1985a44b830158bf_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4c/853139 Production Release
//  HLS Date:       Thu Jan 16 19:19:57 PST 2020
// 
//  Generated by:   giuseppe@fastml02
//  Generated date: Tue Feb 25 11:04:24 2020
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    nnet_dense_large_layer3_t_layer4_t_config4_core
// ------------------------------------------------------------------


module nnet_dense_large_layer3_t_layer4_t_config4_core (
  data_rsc_dat, res_rsc_z, weights_rsc_dat, biases_rsc_dat, ccs_ccore_clk, ccs_ccore_srst,
      ccs_ccore_en
);
  input [431:0] data_rsc_dat;
  output [107:0] res_rsc_z;
  input [1151:0] weights_rsc_dat;
  input [47:0] biases_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_srst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [431:0] data_rsci_idat;
  wire [1151:0] weights_rsci_idat;
  wire [47:0] biases_rsci_idat;
  reg [17:0] res_rsci_d_107_90;
  wire [18:0] nl_res_rsci_d_107_90;
  reg [17:0] res_rsci_d_89_72;
  wire [18:0] nl_res_rsci_d_89_72;
  reg [17:0] res_rsci_d_71_54;
  wire [18:0] nl_res_rsci_d_71_54;
  reg [17:0] res_rsci_d_53_36;
  wire [18:0] nl_res_rsci_d_53_36;
  reg [17:0] res_rsci_d_35_18;
  wire [18:0] nl_res_rsci_d_35_18;
  reg [17:0] res_rsci_d_17_0;
  wire [18:0] nl_res_rsci_d_17_0;

  wire[17:0] MultLoop_acc_47_nl;
  wire[20:0] nl_MultLoop_acc_47_nl;
  wire[17:0] MultLoop_acc_29_nl;
  wire[18:0] nl_MultLoop_acc_29_nl;
  wire[23:0] MultLoop_136_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_136_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_137_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_137_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_28_nl;
  wire[18:0] nl_MultLoop_acc_28_nl;
  wire[23:0] MultLoop_138_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_138_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_139_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_139_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_33_nl;
  wire[18:0] nl_MultLoop_acc_33_nl;
  wire[23:0] MultLoop_128_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_128_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_129_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_129_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_32_nl;
  wire[18:0] nl_MultLoop_acc_32_nl;
  wire[23:0] MultLoop_130_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_130_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_131_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_131_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_31_nl;
  wire[18:0] nl_MultLoop_acc_31_nl;
  wire[23:0] MultLoop_132_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_132_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_133_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_133_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_30_nl;
  wire[18:0] nl_MultLoop_acc_30_nl;
  wire[23:0] MultLoop_134_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_134_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_135_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_135_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_27_nl;
  wire[18:0] nl_MultLoop_acc_27_nl;
  wire[23:0] MultLoop_140_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_140_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_141_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_141_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_26_nl;
  wire[18:0] nl_MultLoop_acc_26_nl;
  wire[23:0] MultLoop_142_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_142_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_143_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_143_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_46_nl;
  wire[18:0] nl_MultLoop_acc_46_nl;
  wire[17:0] MultLoop_acc_43_nl;
  wire[18:0] nl_MultLoop_acc_43_nl;
  wire[17:0] MultLoop_acc_37_nl;
  wire[18:0] nl_MultLoop_acc_37_nl;
  wire[17:0] MultLoop_acc_25_nl;
  wire[18:0] nl_MultLoop_acc_25_nl;
  wire[23:0] MultLoop_144_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_144_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_121_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_121_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_36_nl;
  wire[18:0] nl_MultLoop_acc_36_nl;
  wire[23:0] MultLoop_122_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_122_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_123_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_123_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_42_nl;
  wire[18:0] nl_MultLoop_acc_42_nl;
  wire[17:0] MultLoop_acc_35_nl;
  wire[18:0] nl_MultLoop_acc_35_nl;
  wire[23:0] MultLoop_124_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_124_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_125_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_125_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_34_nl;
  wire[18:0] nl_MultLoop_acc_34_nl;
  wire[23:0] MultLoop_126_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_126_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_127_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_127_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_162_nl;
  wire[20:0] nl_MultLoop_acc_162_nl;
  wire[17:0] MultLoop_acc_144_nl;
  wire[18:0] nl_MultLoop_acc_144_nl;
  wire[23:0] MultLoop_16_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_16_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_17_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_17_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_143_nl;
  wire[18:0] nl_MultLoop_acc_143_nl;
  wire[23:0] MultLoop_18_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_18_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_19_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_19_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_148_nl;
  wire[18:0] nl_MultLoop_acc_148_nl;
  wire[23:0] MultLoop_8_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_8_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_9_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_9_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_147_nl;
  wire[18:0] nl_MultLoop_acc_147_nl;
  wire[23:0] MultLoop_10_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_10_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_11_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_11_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_146_nl;
  wire[18:0] nl_MultLoop_acc_146_nl;
  wire[23:0] MultLoop_12_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_12_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_13_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_13_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_145_nl;
  wire[18:0] nl_MultLoop_acc_145_nl;
  wire[23:0] MultLoop_14_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_14_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_15_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_15_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_142_nl;
  wire[18:0] nl_MultLoop_acc_142_nl;
  wire[23:0] MultLoop_20_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_20_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_21_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_21_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_141_nl;
  wire[18:0] nl_MultLoop_acc_141_nl;
  wire[23:0] MultLoop_22_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_22_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_23_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_23_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_161_nl;
  wire[18:0] nl_MultLoop_acc_161_nl;
  wire[17:0] MultLoop_acc_158_nl;
  wire[18:0] nl_MultLoop_acc_158_nl;
  wire[17:0] MultLoop_acc_152_nl;
  wire[18:0] nl_MultLoop_acc_152_nl;
  wire[17:0] MultLoop_acc_140_nl;
  wire[18:0] nl_MultLoop_acc_140_nl;
  wire[23:0] MultLoop_24_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_24_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_1_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_1_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_151_nl;
  wire[18:0] nl_MultLoop_acc_151_nl;
  wire[23:0] MultLoop_2_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_2_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_3_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_3_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_157_nl;
  wire[18:0] nl_MultLoop_acc_157_nl;
  wire[17:0] MultLoop_acc_150_nl;
  wire[18:0] nl_MultLoop_acc_150_nl;
  wire[23:0] MultLoop_4_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_4_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_5_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_5_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_149_nl;
  wire[18:0] nl_MultLoop_acc_149_nl;
  wire[23:0] MultLoop_6_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_6_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_7_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_7_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_70_nl;
  wire[20:0] nl_MultLoop_acc_70_nl;
  wire[17:0] MultLoop_acc_52_nl;
  wire[18:0] nl_MultLoop_acc_52_nl;
  wire[23:0] MultLoop_112_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_112_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_113_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_113_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_51_nl;
  wire[18:0] nl_MultLoop_acc_51_nl;
  wire[23:0] MultLoop_114_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_114_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_115_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_115_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_56_nl;
  wire[18:0] nl_MultLoop_acc_56_nl;
  wire[23:0] MultLoop_104_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_104_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_105_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_105_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_55_nl;
  wire[18:0] nl_MultLoop_acc_55_nl;
  wire[23:0] MultLoop_106_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_106_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_107_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_107_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_54_nl;
  wire[18:0] nl_MultLoop_acc_54_nl;
  wire[23:0] MultLoop_108_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_108_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_109_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_109_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_53_nl;
  wire[18:0] nl_MultLoop_acc_53_nl;
  wire[23:0] MultLoop_110_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_110_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_111_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_111_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_50_nl;
  wire[18:0] nl_MultLoop_acc_50_nl;
  wire[23:0] MultLoop_116_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_116_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_117_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_117_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_49_nl;
  wire[18:0] nl_MultLoop_acc_49_nl;
  wire[23:0] MultLoop_118_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_118_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_119_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_119_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_69_nl;
  wire[18:0] nl_MultLoop_acc_69_nl;
  wire[17:0] MultLoop_acc_66_nl;
  wire[18:0] nl_MultLoop_acc_66_nl;
  wire[17:0] MultLoop_acc_60_nl;
  wire[18:0] nl_MultLoop_acc_60_nl;
  wire[17:0] MultLoop_acc_48_nl;
  wire[18:0] nl_MultLoop_acc_48_nl;
  wire[23:0] MultLoop_120_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_120_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_97_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_97_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_59_nl;
  wire[18:0] nl_MultLoop_acc_59_nl;
  wire[23:0] MultLoop_98_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_98_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_99_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_99_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_65_nl;
  wire[18:0] nl_MultLoop_acc_65_nl;
  wire[17:0] MultLoop_acc_58_nl;
  wire[18:0] nl_MultLoop_acc_58_nl;
  wire[23:0] MultLoop_100_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_100_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_101_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_101_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_57_nl;
  wire[18:0] nl_MultLoop_acc_57_nl;
  wire[23:0] MultLoop_102_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_102_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_103_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_103_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_139_nl;
  wire[20:0] nl_MultLoop_acc_139_nl;
  wire[17:0] MultLoop_acc_121_nl;
  wire[18:0] nl_MultLoop_acc_121_nl;
  wire[23:0] MultLoop_40_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_40_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_41_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_41_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_120_nl;
  wire[18:0] nl_MultLoop_acc_120_nl;
  wire[23:0] MultLoop_42_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_42_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_43_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_43_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_125_nl;
  wire[18:0] nl_MultLoop_acc_125_nl;
  wire[23:0] MultLoop_32_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_32_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_33_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_33_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_124_nl;
  wire[18:0] nl_MultLoop_acc_124_nl;
  wire[23:0] MultLoop_34_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_34_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_35_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_35_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_123_nl;
  wire[18:0] nl_MultLoop_acc_123_nl;
  wire[23:0] MultLoop_36_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_36_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_37_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_37_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_122_nl;
  wire[18:0] nl_MultLoop_acc_122_nl;
  wire[23:0] MultLoop_38_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_38_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_39_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_39_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_119_nl;
  wire[18:0] nl_MultLoop_acc_119_nl;
  wire[23:0] MultLoop_44_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_44_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_45_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_45_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_118_nl;
  wire[18:0] nl_MultLoop_acc_118_nl;
  wire[23:0] MultLoop_46_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_46_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_47_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_47_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_138_nl;
  wire[18:0] nl_MultLoop_acc_138_nl;
  wire[17:0] MultLoop_acc_135_nl;
  wire[18:0] nl_MultLoop_acc_135_nl;
  wire[17:0] MultLoop_acc_129_nl;
  wire[18:0] nl_MultLoop_acc_129_nl;
  wire[17:0] MultLoop_acc_117_nl;
  wire[18:0] nl_MultLoop_acc_117_nl;
  wire[23:0] MultLoop_48_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_48_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_25_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_25_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_128_nl;
  wire[18:0] nl_MultLoop_acc_128_nl;
  wire[23:0] MultLoop_26_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_26_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_27_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_27_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_134_nl;
  wire[18:0] nl_MultLoop_acc_134_nl;
  wire[17:0] MultLoop_acc_127_nl;
  wire[18:0] nl_MultLoop_acc_127_nl;
  wire[23:0] MultLoop_28_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_28_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_29_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_29_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_126_nl;
  wire[18:0] nl_MultLoop_acc_126_nl;
  wire[23:0] MultLoop_30_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_30_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_31_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_31_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_93_nl;
  wire[20:0] nl_MultLoop_acc_93_nl;
  wire[17:0] MultLoop_acc_75_nl;
  wire[18:0] nl_MultLoop_acc_75_nl;
  wire[23:0] MultLoop_88_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_88_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_89_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_89_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_74_nl;
  wire[18:0] nl_MultLoop_acc_74_nl;
  wire[23:0] MultLoop_90_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_90_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_91_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_91_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_79_nl;
  wire[18:0] nl_MultLoop_acc_79_nl;
  wire[23:0] MultLoop_80_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_80_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_81_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_81_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_78_nl;
  wire[18:0] nl_MultLoop_acc_78_nl;
  wire[23:0] MultLoop_82_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_82_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_83_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_83_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_77_nl;
  wire[18:0] nl_MultLoop_acc_77_nl;
  wire[23:0] MultLoop_84_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_84_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_85_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_85_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_76_nl;
  wire[18:0] nl_MultLoop_acc_76_nl;
  wire[23:0] MultLoop_86_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_86_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_87_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_87_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_73_nl;
  wire[18:0] nl_MultLoop_acc_73_nl;
  wire[23:0] MultLoop_92_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_92_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_93_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_93_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_72_nl;
  wire[18:0] nl_MultLoop_acc_72_nl;
  wire[23:0] MultLoop_94_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_94_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_95_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_95_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_92_nl;
  wire[18:0] nl_MultLoop_acc_92_nl;
  wire[17:0] MultLoop_acc_89_nl;
  wire[18:0] nl_MultLoop_acc_89_nl;
  wire[17:0] MultLoop_acc_83_nl;
  wire[18:0] nl_MultLoop_acc_83_nl;
  wire[17:0] MultLoop_acc_71_nl;
  wire[18:0] nl_MultLoop_acc_71_nl;
  wire[23:0] MultLoop_96_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_96_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_73_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_73_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_82_nl;
  wire[18:0] nl_MultLoop_acc_82_nl;
  wire[23:0] MultLoop_74_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_74_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_75_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_75_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_88_nl;
  wire[18:0] nl_MultLoop_acc_88_nl;
  wire[17:0] MultLoop_acc_81_nl;
  wire[18:0] nl_MultLoop_acc_81_nl;
  wire[23:0] MultLoop_76_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_76_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_77_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_77_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_80_nl;
  wire[18:0] nl_MultLoop_acc_80_nl;
  wire[23:0] MultLoop_78_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_78_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_79_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_79_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_116_nl;
  wire[20:0] nl_MultLoop_acc_116_nl;
  wire[17:0] MultLoop_acc_98_nl;
  wire[18:0] nl_MultLoop_acc_98_nl;
  wire[23:0] MultLoop_64_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_64_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_65_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_65_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_97_nl;
  wire[18:0] nl_MultLoop_acc_97_nl;
  wire[23:0] MultLoop_66_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_66_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_67_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_67_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_102_nl;
  wire[18:0] nl_MultLoop_acc_102_nl;
  wire[23:0] MultLoop_56_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_56_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_57_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_57_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_101_nl;
  wire[18:0] nl_MultLoop_acc_101_nl;
  wire[23:0] MultLoop_58_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_58_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_59_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_59_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_100_nl;
  wire[18:0] nl_MultLoop_acc_100_nl;
  wire[23:0] MultLoop_60_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_60_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_61_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_61_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_99_nl;
  wire[18:0] nl_MultLoop_acc_99_nl;
  wire[23:0] MultLoop_62_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_62_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_63_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_63_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_96_nl;
  wire[18:0] nl_MultLoop_acc_96_nl;
  wire[23:0] MultLoop_68_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_68_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_69_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_69_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_95_nl;
  wire[18:0] nl_MultLoop_acc_95_nl;
  wire[23:0] MultLoop_70_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_70_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_71_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_71_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_115_nl;
  wire[18:0] nl_MultLoop_acc_115_nl;
  wire[17:0] MultLoop_acc_112_nl;
  wire[18:0] nl_MultLoop_acc_112_nl;
  wire[17:0] MultLoop_acc_106_nl;
  wire[18:0] nl_MultLoop_acc_106_nl;
  wire[17:0] MultLoop_acc_94_nl;
  wire[18:0] nl_MultLoop_acc_94_nl;
  wire[23:0] MultLoop_72_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_72_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_49_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_49_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_105_nl;
  wire[18:0] nl_MultLoop_acc_105_nl;
  wire[23:0] MultLoop_50_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_50_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_51_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_51_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_111_nl;
  wire[18:0] nl_MultLoop_acc_111_nl;
  wire[17:0] MultLoop_acc_104_nl;
  wire[18:0] nl_MultLoop_acc_104_nl;
  wire[23:0] MultLoop_52_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_52_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_53_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_53_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[17:0] MultLoop_acc_103_nl;
  wire[18:0] nl_MultLoop_acc_103_nl;
  wire[23:0] MultLoop_54_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_54_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire[23:0] MultLoop_55_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;
  wire signed [25:0] nl_MultLoop_55_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [107:0] nl_res_rsci_d;
  assign nl_res_rsci_d = {res_rsci_d_107_90 , res_rsci_d_89_72 , res_rsci_d_71_54
      , res_rsci_d_53_36 , res_rsci_d_35_18 , res_rsci_d_17_0};
  ccs_in_v1 #(.rscid(32'sd8),
  .width(32'sd432)) data_rsci (
      .dat(data_rsc_dat),
      .idat(data_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd9),
  .width(32'sd108)) res_rsci (
      .d(nl_res_rsci_d[107:0]),
      .z(res_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd10),
  .width(32'sd1152)) weights_rsci (
      .dat(weights_rsc_dat),
      .idat(weights_rsci_idat)
    );
  ccs_in_v1 #(.rscid(32'sd11),
  .width(32'sd48)) biases_rsci (
      .dat(biases_rsc_dat),
      .idat(biases_rsci_idat)
    );
  always @(posedge ccs_ccore_clk) begin
    if ( ccs_ccore_srst ) begin
      res_rsci_d_107_90 <= 18'b000000000000000000;
      res_rsci_d_17_0 <= 18'b000000000000000000;
      res_rsci_d_89_72 <= 18'b000000000000000000;
      res_rsci_d_35_18 <= 18'b000000000000000000;
      res_rsci_d_71_54 <= 18'b000000000000000000;
      res_rsci_d_53_36 <= 18'b000000000000000000;
    end
    else if ( ccs_ccore_en ) begin
      res_rsci_d_107_90 <= nl_res_rsci_d_107_90[17:0];
      res_rsci_d_17_0 <= nl_res_rsci_d_17_0[17:0];
      res_rsci_d_89_72 <= nl_res_rsci_d_89_72[17:0];
      res_rsci_d_35_18 <= nl_res_rsci_d_35_18[17:0];
      res_rsci_d_71_54 <= nl_res_rsci_d_71_54[17:0];
      res_rsci_d_53_36 <= nl_res_rsci_d_53_36[17:0];
    end
  end
  assign nl_MultLoop_136_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[287:270])) * $signed((weights_rsci_idat[1087:1080]));
  assign MultLoop_136_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_136_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_137_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[305:288])) * $signed((weights_rsci_idat[1095:1088]));
  assign MultLoop_137_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_137_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_29_nl = (readslicef_24_18_6((MultLoop_136_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_137_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_29_nl = nl_MultLoop_acc_29_nl[17:0];
  assign nl_MultLoop_138_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[323:306])) * $signed((weights_rsci_idat[1103:1096]));
  assign MultLoop_138_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_138_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_139_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[341:324])) * $signed((weights_rsci_idat[1111:1104]));
  assign MultLoop_139_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_139_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_28_nl = (readslicef_24_18_6((MultLoop_138_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_139_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_28_nl = nl_MultLoop_acc_28_nl[17:0];
  assign nl_MultLoop_128_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[143:126])) * $signed((weights_rsci_idat[1023:1016]));
  assign MultLoop_128_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_128_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_129_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[161:144])) * $signed((weights_rsci_idat[1031:1024]));
  assign MultLoop_129_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_129_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_33_nl = (readslicef_24_18_6((MultLoop_128_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_129_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_33_nl = nl_MultLoop_acc_33_nl[17:0];
  assign nl_MultLoop_130_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[179:162])) * $signed((weights_rsci_idat[1039:1032]));
  assign MultLoop_130_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_130_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_131_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[197:180])) * $signed((weights_rsci_idat[1047:1040]));
  assign MultLoop_131_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_131_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_32_nl = (readslicef_24_18_6((MultLoop_130_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_131_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_32_nl = nl_MultLoop_acc_32_nl[17:0];
  assign nl_MultLoop_132_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[215:198])) * $signed((weights_rsci_idat[1055:1048]));
  assign MultLoop_132_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_132_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_133_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[233:216])) * $signed((weights_rsci_idat[1063:1056]));
  assign MultLoop_133_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_133_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_31_nl = (readslicef_24_18_6((MultLoop_132_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_133_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_31_nl = nl_MultLoop_acc_31_nl[17:0];
  assign nl_MultLoop_134_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[251:234])) * $signed((weights_rsci_idat[1071:1064]));
  assign MultLoop_134_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_134_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_135_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[269:252])) * $signed((weights_rsci_idat[1079:1072]));
  assign MultLoop_135_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_135_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_30_nl = (readslicef_24_18_6((MultLoop_134_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_135_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_30_nl = nl_MultLoop_acc_30_nl[17:0];
  assign nl_MultLoop_140_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[359:342])) * $signed((weights_rsci_idat[1119:1112]));
  assign MultLoop_140_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_140_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_141_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[377:360])) * $signed((weights_rsci_idat[1127:1120]));
  assign MultLoop_141_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_141_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_27_nl = (readslicef_24_18_6((MultLoop_140_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_141_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_27_nl = nl_MultLoop_acc_27_nl[17:0];
  assign nl_MultLoop_142_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[395:378])) * $signed((weights_rsci_idat[1135:1128]));
  assign MultLoop_142_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_142_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_143_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[413:396])) * $signed((weights_rsci_idat[1143:1136]));
  assign MultLoop_143_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_143_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_26_nl = (readslicef_24_18_6((MultLoop_142_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_143_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_26_nl = nl_MultLoop_acc_26_nl[17:0];
  assign nl_MultLoop_acc_47_nl = (MultLoop_acc_29_nl) + (MultLoop_acc_28_nl) + (MultLoop_acc_33_nl)
      + (MultLoop_acc_32_nl) + (MultLoop_acc_31_nl) + (MultLoop_acc_30_nl) + (MultLoop_acc_27_nl)
      + (MultLoop_acc_26_nl);
  assign MultLoop_acc_47_nl = nl_MultLoop_acc_47_nl[17:0];
  assign nl_MultLoop_144_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[431:414])) * $signed((weights_rsci_idat[1151:1144]));
  assign MultLoop_144_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_144_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_25_nl = (readslicef_24_18_6((MultLoop_144_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + conv_s2s_12_18({(biases_rsci_idat[47:40]) , 4'b0000});
  assign MultLoop_acc_25_nl = nl_MultLoop_acc_25_nl[17:0];
  assign nl_MultLoop_121_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[17:0])) * $signed((weights_rsci_idat[967:960]));
  assign MultLoop_121_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_121_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_37_nl = (MultLoop_acc_25_nl) + (readslicef_24_18_6((MultLoop_121_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_37_nl = nl_MultLoop_acc_37_nl[17:0];
  assign nl_MultLoop_122_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[35:18])) * $signed((weights_rsci_idat[975:968]));
  assign MultLoop_122_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_122_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_123_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[53:36])) * $signed((weights_rsci_idat[983:976]));
  assign MultLoop_123_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_123_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_36_nl = (readslicef_24_18_6((MultLoop_122_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_123_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_36_nl = nl_MultLoop_acc_36_nl[17:0];
  assign nl_MultLoop_acc_43_nl = (MultLoop_acc_37_nl) + (MultLoop_acc_36_nl);
  assign MultLoop_acc_43_nl = nl_MultLoop_acc_43_nl[17:0];
  assign nl_MultLoop_124_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[71:54])) * $signed((weights_rsci_idat[991:984]));
  assign MultLoop_124_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_124_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_125_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[89:72])) * $signed((weights_rsci_idat[999:992]));
  assign MultLoop_125_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_125_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_35_nl = (readslicef_24_18_6((MultLoop_124_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_125_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_35_nl = nl_MultLoop_acc_35_nl[17:0];
  assign nl_MultLoop_126_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[107:90])) * $signed((weights_rsci_idat[1007:1000]));
  assign MultLoop_126_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_126_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_127_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[125:108])) * $signed((weights_rsci_idat[1015:1008]));
  assign MultLoop_127_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_127_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_34_nl = (readslicef_24_18_6((MultLoop_126_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_127_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_34_nl = nl_MultLoop_acc_34_nl[17:0];
  assign nl_MultLoop_acc_42_nl = (MultLoop_acc_35_nl) + (MultLoop_acc_34_nl);
  assign MultLoop_acc_42_nl = nl_MultLoop_acc_42_nl[17:0];
  assign nl_MultLoop_acc_46_nl = (MultLoop_acc_43_nl) + (MultLoop_acc_42_nl);
  assign MultLoop_acc_46_nl = nl_MultLoop_acc_46_nl[17:0];
  assign nl_res_rsci_d_107_90  = (MultLoop_acc_47_nl) + (MultLoop_acc_46_nl);
  assign nl_MultLoop_16_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[287:270])) * $signed((weights_rsci_idat[127:120]));
  assign MultLoop_16_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_16_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_17_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[305:288])) * $signed((weights_rsci_idat[135:128]));
  assign MultLoop_17_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_17_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_144_nl = (readslicef_24_18_6((MultLoop_16_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_17_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_144_nl = nl_MultLoop_acc_144_nl[17:0];
  assign nl_MultLoop_18_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[323:306])) * $signed((weights_rsci_idat[143:136]));
  assign MultLoop_18_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_18_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_19_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[341:324])) * $signed((weights_rsci_idat[151:144]));
  assign MultLoop_19_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_19_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_143_nl = (readslicef_24_18_6((MultLoop_18_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_19_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_143_nl = nl_MultLoop_acc_143_nl[17:0];
  assign nl_MultLoop_8_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[143:126])) * $signed((weights_rsci_idat[63:56]));
  assign MultLoop_8_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_8_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_9_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[161:144])) * $signed((weights_rsci_idat[71:64]));
  assign MultLoop_9_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_9_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_148_nl = (readslicef_24_18_6((MultLoop_8_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_9_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_148_nl = nl_MultLoop_acc_148_nl[17:0];
  assign nl_MultLoop_10_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[179:162])) * $signed((weights_rsci_idat[79:72]));
  assign MultLoop_10_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_10_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_11_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[197:180])) * $signed((weights_rsci_idat[87:80]));
  assign MultLoop_11_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_11_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_147_nl = (readslicef_24_18_6((MultLoop_10_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_11_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_147_nl = nl_MultLoop_acc_147_nl[17:0];
  assign nl_MultLoop_12_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[215:198])) * $signed((weights_rsci_idat[95:88]));
  assign MultLoop_12_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_12_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_13_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[233:216])) * $signed((weights_rsci_idat[103:96]));
  assign MultLoop_13_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_13_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_146_nl = (readslicef_24_18_6((MultLoop_12_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_13_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_146_nl = nl_MultLoop_acc_146_nl[17:0];
  assign nl_MultLoop_14_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[251:234])) * $signed((weights_rsci_idat[111:104]));
  assign MultLoop_14_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_14_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_15_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[269:252])) * $signed((weights_rsci_idat[119:112]));
  assign MultLoop_15_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_15_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_145_nl = (readslicef_24_18_6((MultLoop_14_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_15_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_145_nl = nl_MultLoop_acc_145_nl[17:0];
  assign nl_MultLoop_20_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[359:342])) * $signed((weights_rsci_idat[159:152]));
  assign MultLoop_20_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_20_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_21_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[377:360])) * $signed((weights_rsci_idat[167:160]));
  assign MultLoop_21_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_21_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_142_nl = (readslicef_24_18_6((MultLoop_20_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_21_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_142_nl = nl_MultLoop_acc_142_nl[17:0];
  assign nl_MultLoop_22_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[395:378])) * $signed((weights_rsci_idat[175:168]));
  assign MultLoop_22_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_22_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_23_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[413:396])) * $signed((weights_rsci_idat[183:176]));
  assign MultLoop_23_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_23_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_141_nl = (readslicef_24_18_6((MultLoop_22_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_23_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_141_nl = nl_MultLoop_acc_141_nl[17:0];
  assign nl_MultLoop_acc_162_nl = (MultLoop_acc_144_nl) + (MultLoop_acc_143_nl) +
      (MultLoop_acc_148_nl) + (MultLoop_acc_147_nl) + (MultLoop_acc_146_nl) + (MultLoop_acc_145_nl)
      + (MultLoop_acc_142_nl) + (MultLoop_acc_141_nl);
  assign MultLoop_acc_162_nl = nl_MultLoop_acc_162_nl[17:0];
  assign nl_MultLoop_24_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[431:414])) * $signed((weights_rsci_idat[191:184]));
  assign MultLoop_24_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_24_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_140_nl = (readslicef_24_18_6((MultLoop_24_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + conv_s2s_12_18({(biases_rsci_idat[7:0]) , 4'b0000});
  assign MultLoop_acc_140_nl = nl_MultLoop_acc_140_nl[17:0];
  assign nl_MultLoop_1_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[17:0])) * $signed((weights_rsci_idat[7:0]));
  assign MultLoop_1_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_1_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_152_nl = (MultLoop_acc_140_nl) + (readslicef_24_18_6((MultLoop_1_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_152_nl = nl_MultLoop_acc_152_nl[17:0];
  assign nl_MultLoop_2_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[35:18])) * $signed((weights_rsci_idat[15:8]));
  assign MultLoop_2_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_2_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_3_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[53:36])) * $signed((weights_rsci_idat[23:16]));
  assign MultLoop_3_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_3_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_151_nl = (readslicef_24_18_6((MultLoop_2_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_3_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_151_nl = nl_MultLoop_acc_151_nl[17:0];
  assign nl_MultLoop_acc_158_nl = (MultLoop_acc_152_nl) + (MultLoop_acc_151_nl);
  assign MultLoop_acc_158_nl = nl_MultLoop_acc_158_nl[17:0];
  assign nl_MultLoop_4_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[71:54])) * $signed((weights_rsci_idat[31:24]));
  assign MultLoop_4_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_4_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_5_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[89:72])) * $signed((weights_rsci_idat[39:32]));
  assign MultLoop_5_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_5_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_150_nl = (readslicef_24_18_6((MultLoop_4_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_5_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_150_nl = nl_MultLoop_acc_150_nl[17:0];
  assign nl_MultLoop_6_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[107:90])) * $signed((weights_rsci_idat[47:40]));
  assign MultLoop_6_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_6_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_7_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[125:108])) * $signed((weights_rsci_idat[55:48]));
  assign MultLoop_7_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_7_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_149_nl = (readslicef_24_18_6((MultLoop_6_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_7_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_149_nl = nl_MultLoop_acc_149_nl[17:0];
  assign nl_MultLoop_acc_157_nl = (MultLoop_acc_150_nl) + (MultLoop_acc_149_nl);
  assign MultLoop_acc_157_nl = nl_MultLoop_acc_157_nl[17:0];
  assign nl_MultLoop_acc_161_nl = (MultLoop_acc_158_nl) + (MultLoop_acc_157_nl);
  assign MultLoop_acc_161_nl = nl_MultLoop_acc_161_nl[17:0];
  assign nl_res_rsci_d_17_0  = (MultLoop_acc_162_nl) + (MultLoop_acc_161_nl);
  assign nl_MultLoop_112_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[287:270])) * $signed((weights_rsci_idat[895:888]));
  assign MultLoop_112_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_112_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_113_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[305:288])) * $signed((weights_rsci_idat[903:896]));
  assign MultLoop_113_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_113_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_52_nl = (readslicef_24_18_6((MultLoop_112_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_113_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_52_nl = nl_MultLoop_acc_52_nl[17:0];
  assign nl_MultLoop_114_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[323:306])) * $signed((weights_rsci_idat[911:904]));
  assign MultLoop_114_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_114_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_115_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[341:324])) * $signed((weights_rsci_idat[919:912]));
  assign MultLoop_115_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_115_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_51_nl = (readslicef_24_18_6((MultLoop_114_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_115_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_51_nl = nl_MultLoop_acc_51_nl[17:0];
  assign nl_MultLoop_104_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[143:126])) * $signed((weights_rsci_idat[831:824]));
  assign MultLoop_104_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_104_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_105_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[161:144])) * $signed((weights_rsci_idat[839:832]));
  assign MultLoop_105_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_105_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_56_nl = (readslicef_24_18_6((MultLoop_104_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_105_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_56_nl = nl_MultLoop_acc_56_nl[17:0];
  assign nl_MultLoop_106_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[179:162])) * $signed((weights_rsci_idat[847:840]));
  assign MultLoop_106_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_106_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_107_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[197:180])) * $signed((weights_rsci_idat[855:848]));
  assign MultLoop_107_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_107_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_55_nl = (readslicef_24_18_6((MultLoop_106_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_107_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_55_nl = nl_MultLoop_acc_55_nl[17:0];
  assign nl_MultLoop_108_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[215:198])) * $signed((weights_rsci_idat[863:856]));
  assign MultLoop_108_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_108_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_109_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[233:216])) * $signed((weights_rsci_idat[871:864]));
  assign MultLoop_109_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_109_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_54_nl = (readslicef_24_18_6((MultLoop_108_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_109_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_54_nl = nl_MultLoop_acc_54_nl[17:0];
  assign nl_MultLoop_110_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[251:234])) * $signed((weights_rsci_idat[879:872]));
  assign MultLoop_110_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_110_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_111_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[269:252])) * $signed((weights_rsci_idat[887:880]));
  assign MultLoop_111_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_111_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_53_nl = (readslicef_24_18_6((MultLoop_110_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_111_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_53_nl = nl_MultLoop_acc_53_nl[17:0];
  assign nl_MultLoop_116_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[359:342])) * $signed((weights_rsci_idat[927:920]));
  assign MultLoop_116_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_116_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_117_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[377:360])) * $signed((weights_rsci_idat[935:928]));
  assign MultLoop_117_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_117_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_50_nl = (readslicef_24_18_6((MultLoop_116_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_117_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_50_nl = nl_MultLoop_acc_50_nl[17:0];
  assign nl_MultLoop_118_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[395:378])) * $signed((weights_rsci_idat[943:936]));
  assign MultLoop_118_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_118_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_119_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[413:396])) * $signed((weights_rsci_idat[951:944]));
  assign MultLoop_119_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_119_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_49_nl = (readslicef_24_18_6((MultLoop_118_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_119_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_49_nl = nl_MultLoop_acc_49_nl[17:0];
  assign nl_MultLoop_acc_70_nl = (MultLoop_acc_52_nl) + (MultLoop_acc_51_nl) + (MultLoop_acc_56_nl)
      + (MultLoop_acc_55_nl) + (MultLoop_acc_54_nl) + (MultLoop_acc_53_nl) + (MultLoop_acc_50_nl)
      + (MultLoop_acc_49_nl);
  assign MultLoop_acc_70_nl = nl_MultLoop_acc_70_nl[17:0];
  assign nl_MultLoop_120_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[431:414])) * $signed((weights_rsci_idat[959:952]));
  assign MultLoop_120_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_120_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_48_nl = (readslicef_24_18_6((MultLoop_120_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + conv_s2s_12_18({(biases_rsci_idat[39:32]) , 4'b0000});
  assign MultLoop_acc_48_nl = nl_MultLoop_acc_48_nl[17:0];
  assign nl_MultLoop_97_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[17:0])) * $signed((weights_rsci_idat[775:768]));
  assign MultLoop_97_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_97_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_60_nl = (MultLoop_acc_48_nl) + (readslicef_24_18_6((MultLoop_97_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_60_nl = nl_MultLoop_acc_60_nl[17:0];
  assign nl_MultLoop_98_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[35:18])) * $signed((weights_rsci_idat[783:776]));
  assign MultLoop_98_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_98_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_99_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[53:36])) * $signed((weights_rsci_idat[791:784]));
  assign MultLoop_99_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_99_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_59_nl = (readslicef_24_18_6((MultLoop_98_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_99_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_59_nl = nl_MultLoop_acc_59_nl[17:0];
  assign nl_MultLoop_acc_66_nl = (MultLoop_acc_60_nl) + (MultLoop_acc_59_nl);
  assign MultLoop_acc_66_nl = nl_MultLoop_acc_66_nl[17:0];
  assign nl_MultLoop_100_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[71:54])) * $signed((weights_rsci_idat[799:792]));
  assign MultLoop_100_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_100_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_101_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[89:72])) * $signed((weights_rsci_idat[807:800]));
  assign MultLoop_101_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_101_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_58_nl = (readslicef_24_18_6((MultLoop_100_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_101_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_58_nl = nl_MultLoop_acc_58_nl[17:0];
  assign nl_MultLoop_102_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[107:90])) * $signed((weights_rsci_idat[815:808]));
  assign MultLoop_102_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_102_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_103_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[125:108])) * $signed((weights_rsci_idat[823:816]));
  assign MultLoop_103_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_103_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_57_nl = (readslicef_24_18_6((MultLoop_102_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_103_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_57_nl = nl_MultLoop_acc_57_nl[17:0];
  assign nl_MultLoop_acc_65_nl = (MultLoop_acc_58_nl) + (MultLoop_acc_57_nl);
  assign MultLoop_acc_65_nl = nl_MultLoop_acc_65_nl[17:0];
  assign nl_MultLoop_acc_69_nl = (MultLoop_acc_66_nl) + (MultLoop_acc_65_nl);
  assign MultLoop_acc_69_nl = nl_MultLoop_acc_69_nl[17:0];
  assign nl_res_rsci_d_89_72  = (MultLoop_acc_70_nl) + (MultLoop_acc_69_nl);
  assign nl_MultLoop_40_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[287:270])) * $signed((weights_rsci_idat[319:312]));
  assign MultLoop_40_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_40_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_41_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[305:288])) * $signed((weights_rsci_idat[327:320]));
  assign MultLoop_41_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_41_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_121_nl = (readslicef_24_18_6((MultLoop_40_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_41_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_121_nl = nl_MultLoop_acc_121_nl[17:0];
  assign nl_MultLoop_42_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[323:306])) * $signed((weights_rsci_idat[335:328]));
  assign MultLoop_42_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_42_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_43_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[341:324])) * $signed((weights_rsci_idat[343:336]));
  assign MultLoop_43_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_43_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_120_nl = (readslicef_24_18_6((MultLoop_42_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_43_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_120_nl = nl_MultLoop_acc_120_nl[17:0];
  assign nl_MultLoop_32_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[143:126])) * $signed((weights_rsci_idat[255:248]));
  assign MultLoop_32_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_32_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_33_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[161:144])) * $signed((weights_rsci_idat[263:256]));
  assign MultLoop_33_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_33_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_125_nl = (readslicef_24_18_6((MultLoop_32_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_33_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_125_nl = nl_MultLoop_acc_125_nl[17:0];
  assign nl_MultLoop_34_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[179:162])) * $signed((weights_rsci_idat[271:264]));
  assign MultLoop_34_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_34_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_35_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[197:180])) * $signed((weights_rsci_idat[279:272]));
  assign MultLoop_35_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_35_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_124_nl = (readslicef_24_18_6((MultLoop_34_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_35_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_124_nl = nl_MultLoop_acc_124_nl[17:0];
  assign nl_MultLoop_36_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[215:198])) * $signed((weights_rsci_idat[287:280]));
  assign MultLoop_36_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_36_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_37_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[233:216])) * $signed((weights_rsci_idat[295:288]));
  assign MultLoop_37_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_37_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_123_nl = (readslicef_24_18_6((MultLoop_36_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_37_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_123_nl = nl_MultLoop_acc_123_nl[17:0];
  assign nl_MultLoop_38_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[251:234])) * $signed((weights_rsci_idat[303:296]));
  assign MultLoop_38_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_38_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_39_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[269:252])) * $signed((weights_rsci_idat[311:304]));
  assign MultLoop_39_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_39_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_122_nl = (readslicef_24_18_6((MultLoop_38_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_39_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_122_nl = nl_MultLoop_acc_122_nl[17:0];
  assign nl_MultLoop_44_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[359:342])) * $signed((weights_rsci_idat[351:344]));
  assign MultLoop_44_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_44_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_45_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[377:360])) * $signed((weights_rsci_idat[359:352]));
  assign MultLoop_45_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_45_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_119_nl = (readslicef_24_18_6((MultLoop_44_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_45_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_119_nl = nl_MultLoop_acc_119_nl[17:0];
  assign nl_MultLoop_46_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[395:378])) * $signed((weights_rsci_idat[367:360]));
  assign MultLoop_46_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_46_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_47_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[413:396])) * $signed((weights_rsci_idat[375:368]));
  assign MultLoop_47_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_47_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_118_nl = (readslicef_24_18_6((MultLoop_46_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_47_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_118_nl = nl_MultLoop_acc_118_nl[17:0];
  assign nl_MultLoop_acc_139_nl = (MultLoop_acc_121_nl) + (MultLoop_acc_120_nl) +
      (MultLoop_acc_125_nl) + (MultLoop_acc_124_nl) + (MultLoop_acc_123_nl) + (MultLoop_acc_122_nl)
      + (MultLoop_acc_119_nl) + (MultLoop_acc_118_nl);
  assign MultLoop_acc_139_nl = nl_MultLoop_acc_139_nl[17:0];
  assign nl_MultLoop_48_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[431:414])) * $signed((weights_rsci_idat[383:376]));
  assign MultLoop_48_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_48_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_117_nl = (readslicef_24_18_6((MultLoop_48_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + conv_s2s_12_18({(biases_rsci_idat[15:8]) , 4'b0000});
  assign MultLoop_acc_117_nl = nl_MultLoop_acc_117_nl[17:0];
  assign nl_MultLoop_25_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[17:0])) * $signed((weights_rsci_idat[199:192]));
  assign MultLoop_25_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_25_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_129_nl = (MultLoop_acc_117_nl) + (readslicef_24_18_6((MultLoop_25_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_129_nl = nl_MultLoop_acc_129_nl[17:0];
  assign nl_MultLoop_26_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[35:18])) * $signed((weights_rsci_idat[207:200]));
  assign MultLoop_26_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_26_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_27_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[53:36])) * $signed((weights_rsci_idat[215:208]));
  assign MultLoop_27_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_27_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_128_nl = (readslicef_24_18_6((MultLoop_26_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_27_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_128_nl = nl_MultLoop_acc_128_nl[17:0];
  assign nl_MultLoop_acc_135_nl = (MultLoop_acc_129_nl) + (MultLoop_acc_128_nl);
  assign MultLoop_acc_135_nl = nl_MultLoop_acc_135_nl[17:0];
  assign nl_MultLoop_28_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[71:54])) * $signed((weights_rsci_idat[223:216]));
  assign MultLoop_28_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_28_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_29_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[89:72])) * $signed((weights_rsci_idat[231:224]));
  assign MultLoop_29_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_29_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_127_nl = (readslicef_24_18_6((MultLoop_28_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_29_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_127_nl = nl_MultLoop_acc_127_nl[17:0];
  assign nl_MultLoop_30_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[107:90])) * $signed((weights_rsci_idat[239:232]));
  assign MultLoop_30_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_30_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_31_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[125:108])) * $signed((weights_rsci_idat[247:240]));
  assign MultLoop_31_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_31_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_126_nl = (readslicef_24_18_6((MultLoop_30_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_31_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_126_nl = nl_MultLoop_acc_126_nl[17:0];
  assign nl_MultLoop_acc_134_nl = (MultLoop_acc_127_nl) + (MultLoop_acc_126_nl);
  assign MultLoop_acc_134_nl = nl_MultLoop_acc_134_nl[17:0];
  assign nl_MultLoop_acc_138_nl = (MultLoop_acc_135_nl) + (MultLoop_acc_134_nl);
  assign MultLoop_acc_138_nl = nl_MultLoop_acc_138_nl[17:0];
  assign nl_res_rsci_d_35_18  = (MultLoop_acc_139_nl) + (MultLoop_acc_138_nl);
  assign nl_MultLoop_88_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[287:270])) * $signed((weights_rsci_idat[703:696]));
  assign MultLoop_88_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_88_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_89_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[305:288])) * $signed((weights_rsci_idat[711:704]));
  assign MultLoop_89_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_89_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_75_nl = (readslicef_24_18_6((MultLoop_88_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_89_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_75_nl = nl_MultLoop_acc_75_nl[17:0];
  assign nl_MultLoop_90_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[323:306])) * $signed((weights_rsci_idat[719:712]));
  assign MultLoop_90_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_90_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_91_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[341:324])) * $signed((weights_rsci_idat[727:720]));
  assign MultLoop_91_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_91_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_74_nl = (readslicef_24_18_6((MultLoop_90_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_91_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_74_nl = nl_MultLoop_acc_74_nl[17:0];
  assign nl_MultLoop_80_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[143:126])) * $signed((weights_rsci_idat[639:632]));
  assign MultLoop_80_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_80_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_81_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[161:144])) * $signed((weights_rsci_idat[647:640]));
  assign MultLoop_81_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_81_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_79_nl = (readslicef_24_18_6((MultLoop_80_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_81_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_79_nl = nl_MultLoop_acc_79_nl[17:0];
  assign nl_MultLoop_82_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[179:162])) * $signed((weights_rsci_idat[655:648]));
  assign MultLoop_82_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_82_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_83_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[197:180])) * $signed((weights_rsci_idat[663:656]));
  assign MultLoop_83_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_83_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_78_nl = (readslicef_24_18_6((MultLoop_82_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_83_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_78_nl = nl_MultLoop_acc_78_nl[17:0];
  assign nl_MultLoop_84_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[215:198])) * $signed((weights_rsci_idat[671:664]));
  assign MultLoop_84_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_84_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_85_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[233:216])) * $signed((weights_rsci_idat[679:672]));
  assign MultLoop_85_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_85_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_77_nl = (readslicef_24_18_6((MultLoop_84_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_85_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_77_nl = nl_MultLoop_acc_77_nl[17:0];
  assign nl_MultLoop_86_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[251:234])) * $signed((weights_rsci_idat[687:680]));
  assign MultLoop_86_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_86_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_87_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[269:252])) * $signed((weights_rsci_idat[695:688]));
  assign MultLoop_87_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_87_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_76_nl = (readslicef_24_18_6((MultLoop_86_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_87_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_76_nl = nl_MultLoop_acc_76_nl[17:0];
  assign nl_MultLoop_92_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[359:342])) * $signed((weights_rsci_idat[735:728]));
  assign MultLoop_92_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_92_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_93_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[377:360])) * $signed((weights_rsci_idat[743:736]));
  assign MultLoop_93_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_93_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_73_nl = (readslicef_24_18_6((MultLoop_92_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_93_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_73_nl = nl_MultLoop_acc_73_nl[17:0];
  assign nl_MultLoop_94_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[395:378])) * $signed((weights_rsci_idat[751:744]));
  assign MultLoop_94_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_94_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_95_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[413:396])) * $signed((weights_rsci_idat[759:752]));
  assign MultLoop_95_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_95_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_72_nl = (readslicef_24_18_6((MultLoop_94_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_95_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_72_nl = nl_MultLoop_acc_72_nl[17:0];
  assign nl_MultLoop_acc_93_nl = (MultLoop_acc_75_nl) + (MultLoop_acc_74_nl) + (MultLoop_acc_79_nl)
      + (MultLoop_acc_78_nl) + (MultLoop_acc_77_nl) + (MultLoop_acc_76_nl) + (MultLoop_acc_73_nl)
      + (MultLoop_acc_72_nl);
  assign MultLoop_acc_93_nl = nl_MultLoop_acc_93_nl[17:0];
  assign nl_MultLoop_96_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[431:414])) * $signed((weights_rsci_idat[767:760]));
  assign MultLoop_96_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_96_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_71_nl = (readslicef_24_18_6((MultLoop_96_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + conv_s2s_12_18({(biases_rsci_idat[31:24]) , 4'b0000});
  assign MultLoop_acc_71_nl = nl_MultLoop_acc_71_nl[17:0];
  assign nl_MultLoop_73_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[17:0])) * $signed((weights_rsci_idat[583:576]));
  assign MultLoop_73_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_73_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_83_nl = (MultLoop_acc_71_nl) + (readslicef_24_18_6((MultLoop_73_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_83_nl = nl_MultLoop_acc_83_nl[17:0];
  assign nl_MultLoop_74_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[35:18])) * $signed((weights_rsci_idat[591:584]));
  assign MultLoop_74_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_74_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_75_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[53:36])) * $signed((weights_rsci_idat[599:592]));
  assign MultLoop_75_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_75_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_82_nl = (readslicef_24_18_6((MultLoop_74_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_75_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_82_nl = nl_MultLoop_acc_82_nl[17:0];
  assign nl_MultLoop_acc_89_nl = (MultLoop_acc_83_nl) + (MultLoop_acc_82_nl);
  assign MultLoop_acc_89_nl = nl_MultLoop_acc_89_nl[17:0];
  assign nl_MultLoop_76_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[71:54])) * $signed((weights_rsci_idat[607:600]));
  assign MultLoop_76_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_76_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_77_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[89:72])) * $signed((weights_rsci_idat[615:608]));
  assign MultLoop_77_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_77_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_81_nl = (readslicef_24_18_6((MultLoop_76_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_77_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_81_nl = nl_MultLoop_acc_81_nl[17:0];
  assign nl_MultLoop_78_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[107:90])) * $signed((weights_rsci_idat[623:616]));
  assign MultLoop_78_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_78_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_79_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[125:108])) * $signed((weights_rsci_idat[631:624]));
  assign MultLoop_79_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_79_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_80_nl = (readslicef_24_18_6((MultLoop_78_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_79_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_80_nl = nl_MultLoop_acc_80_nl[17:0];
  assign nl_MultLoop_acc_88_nl = (MultLoop_acc_81_nl) + (MultLoop_acc_80_nl);
  assign MultLoop_acc_88_nl = nl_MultLoop_acc_88_nl[17:0];
  assign nl_MultLoop_acc_92_nl = (MultLoop_acc_89_nl) + (MultLoop_acc_88_nl);
  assign MultLoop_acc_92_nl = nl_MultLoop_acc_92_nl[17:0];
  assign nl_res_rsci_d_71_54  = (MultLoop_acc_93_nl) + (MultLoop_acc_92_nl);
  assign nl_MultLoop_64_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[287:270])) * $signed((weights_rsci_idat[511:504]));
  assign MultLoop_64_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_64_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_65_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[305:288])) * $signed((weights_rsci_idat[519:512]));
  assign MultLoop_65_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_65_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_98_nl = (readslicef_24_18_6((MultLoop_64_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_65_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_98_nl = nl_MultLoop_acc_98_nl[17:0];
  assign nl_MultLoop_66_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[323:306])) * $signed((weights_rsci_idat[527:520]));
  assign MultLoop_66_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_66_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_67_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[341:324])) * $signed((weights_rsci_idat[535:528]));
  assign MultLoop_67_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_67_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_97_nl = (readslicef_24_18_6((MultLoop_66_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_67_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_97_nl = nl_MultLoop_acc_97_nl[17:0];
  assign nl_MultLoop_56_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[143:126])) * $signed((weights_rsci_idat[447:440]));
  assign MultLoop_56_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_56_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_57_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[161:144])) * $signed((weights_rsci_idat[455:448]));
  assign MultLoop_57_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_57_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_102_nl = (readslicef_24_18_6((MultLoop_56_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_57_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_102_nl = nl_MultLoop_acc_102_nl[17:0];
  assign nl_MultLoop_58_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[179:162])) * $signed((weights_rsci_idat[463:456]));
  assign MultLoop_58_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_58_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_59_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[197:180])) * $signed((weights_rsci_idat[471:464]));
  assign MultLoop_59_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_59_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_101_nl = (readslicef_24_18_6((MultLoop_58_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_59_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_101_nl = nl_MultLoop_acc_101_nl[17:0];
  assign nl_MultLoop_60_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[215:198])) * $signed((weights_rsci_idat[479:472]));
  assign MultLoop_60_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_60_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_61_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[233:216])) * $signed((weights_rsci_idat[487:480]));
  assign MultLoop_61_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_61_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_100_nl = (readslicef_24_18_6((MultLoop_60_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_61_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_100_nl = nl_MultLoop_acc_100_nl[17:0];
  assign nl_MultLoop_62_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[251:234])) * $signed((weights_rsci_idat[495:488]));
  assign MultLoop_62_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_62_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_63_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[269:252])) * $signed((weights_rsci_idat[503:496]));
  assign MultLoop_63_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_63_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_99_nl = (readslicef_24_18_6((MultLoop_62_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_63_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_99_nl = nl_MultLoop_acc_99_nl[17:0];
  assign nl_MultLoop_68_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[359:342])) * $signed((weights_rsci_idat[543:536]));
  assign MultLoop_68_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_68_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_69_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[377:360])) * $signed((weights_rsci_idat[551:544]));
  assign MultLoop_69_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_69_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_96_nl = (readslicef_24_18_6((MultLoop_68_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_69_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_96_nl = nl_MultLoop_acc_96_nl[17:0];
  assign nl_MultLoop_70_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[395:378])) * $signed((weights_rsci_idat[559:552]));
  assign MultLoop_70_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_70_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_71_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[413:396])) * $signed((weights_rsci_idat[567:560]));
  assign MultLoop_71_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_71_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_95_nl = (readslicef_24_18_6((MultLoop_70_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_71_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_95_nl = nl_MultLoop_acc_95_nl[17:0];
  assign nl_MultLoop_acc_116_nl = (MultLoop_acc_98_nl) + (MultLoop_acc_97_nl) + (MultLoop_acc_102_nl)
      + (MultLoop_acc_101_nl) + (MultLoop_acc_100_nl) + (MultLoop_acc_99_nl) + (MultLoop_acc_96_nl)
      + (MultLoop_acc_95_nl);
  assign MultLoop_acc_116_nl = nl_MultLoop_acc_116_nl[17:0];
  assign nl_MultLoop_72_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[431:414])) * $signed((weights_rsci_idat[575:568]));
  assign MultLoop_72_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_72_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_94_nl = (readslicef_24_18_6((MultLoop_72_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + conv_s2s_12_18({(biases_rsci_idat[23:16]) , 4'b0000});
  assign MultLoop_acc_94_nl = nl_MultLoop_acc_94_nl[17:0];
  assign nl_MultLoop_49_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[17:0])) * $signed((weights_rsci_idat[391:384]));
  assign MultLoop_49_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_49_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_106_nl = (MultLoop_acc_94_nl) + (readslicef_24_18_6((MultLoop_49_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_106_nl = nl_MultLoop_acc_106_nl[17:0];
  assign nl_MultLoop_50_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[35:18])) * $signed((weights_rsci_idat[399:392]));
  assign MultLoop_50_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_50_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_51_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[53:36])) * $signed((weights_rsci_idat[407:400]));
  assign MultLoop_51_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_51_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_105_nl = (readslicef_24_18_6((MultLoop_50_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_51_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_105_nl = nl_MultLoop_acc_105_nl[17:0];
  assign nl_MultLoop_acc_112_nl = (MultLoop_acc_106_nl) + (MultLoop_acc_105_nl);
  assign MultLoop_acc_112_nl = nl_MultLoop_acc_112_nl[17:0];
  assign nl_MultLoop_52_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[71:54])) * $signed((weights_rsci_idat[415:408]));
  assign MultLoop_52_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_52_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_53_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[89:72])) * $signed((weights_rsci_idat[423:416]));
  assign MultLoop_53_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_53_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_104_nl = (readslicef_24_18_6((MultLoop_52_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_53_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_104_nl = nl_MultLoop_acc_104_nl[17:0];
  assign nl_MultLoop_54_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[107:90])) * $signed((weights_rsci_idat[431:424]));
  assign MultLoop_54_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_54_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_55_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = $signed((data_rsci_idat[125:108])) * $signed((weights_rsci_idat[439:432]));
  assign MultLoop_55_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl
      = nl_MultLoop_55_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl[23:0];
  assign nl_MultLoop_acc_103_nl = (readslicef_24_18_6((MultLoop_54_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)))
      + (readslicef_24_18_6((MultLoop_55_nnet_product_layer3_t_config4_weight_t_config4_accum_t_mul_nl)));
  assign MultLoop_acc_103_nl = nl_MultLoop_acc_103_nl[17:0];
  assign nl_MultLoop_acc_111_nl = (MultLoop_acc_104_nl) + (MultLoop_acc_103_nl);
  assign MultLoop_acc_111_nl = nl_MultLoop_acc_111_nl[17:0];
  assign nl_MultLoop_acc_115_nl = (MultLoop_acc_112_nl) + (MultLoop_acc_111_nl);
  assign MultLoop_acc_115_nl = nl_MultLoop_acc_115_nl[17:0];
  assign nl_res_rsci_d_53_36  = (MultLoop_acc_116_nl) + (MultLoop_acc_115_nl);

  function automatic [17:0] readslicef_24_18_6;
    input [23:0] vector;
    reg [23:0] tmp;
  begin
    tmp = vector >> 6;
    readslicef_24_18_6 = tmp[17:0];
  end
  endfunction


  function automatic [17:0] conv_s2s_12_18 ;
    input [11:0]  vector ;
  begin
    conv_s2s_12_18 = {{6{vector[11]}}, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    nnet_dense_large_layer3_t_layer4_t_config4
// ------------------------------------------------------------------


module nnet_dense_large_layer3_t_layer4_t_config4 (
  data_rsc_dat, res_rsc_z, weights_rsc_dat, biases_rsc_dat, ccs_ccore_start_rsc_dat,
      ccs_ccore_clk, ccs_ccore_srst, ccs_ccore_en
);
  input [431:0] data_rsc_dat;
  output [107:0] res_rsc_z;
  input [1151:0] weights_rsc_dat;
  input [47:0] biases_rsc_dat;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_srst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  nnet_dense_large_layer3_t_layer4_t_config4_core nnet_dense_large_layer3_t_layer4_t_config4_core_inst
      (
      .data_rsc_dat(data_rsc_dat),
      .res_rsc_z(res_rsc_z),
      .weights_rsc_dat(weights_rsc_dat),
      .biases_rsc_dat(biases_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_srst(ccs_ccore_srst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/nnet__relu_layer2_t_layer3_t_relu_config3__f965bc8c53f54aae1e9689bf95c0a23c1350c_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4c/853139 Production Release
//  HLS Date:       Thu Jan 16 19:19:57 PST 2020
// 
//  Generated by:   giuseppe@fastml02
//  Generated date: Sun Feb 23 21:08:24 2020
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    nnet_relu_layer2_t_layer3_t_relu_config3_core
// ------------------------------------------------------------------


module nnet_relu_layer2_t_layer3_t_relu_config3_core (
  data_rsc_dat, res_rsc_z, ccs_ccore_clk, ccs_ccore_srst, ccs_ccore_en
);
  input [431:0] data_rsc_dat;
  output [431:0] res_rsc_z;
  input ccs_ccore_clk;
  input ccs_ccore_srst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [431:0] data_rsci_idat;
  reg [16:0] res_rsci_d_412_396;
  reg [16:0] res_rsci_d_394_378;
  reg [16:0] res_rsci_d_376_360;
  reg [16:0] res_rsci_d_358_342;
  reg [16:0] res_rsci_d_340_324;
  reg [16:0] res_rsci_d_322_306;
  reg [16:0] res_rsci_d_304_288;
  reg [16:0] res_rsci_d_286_270;
  reg [16:0] res_rsci_d_268_252;
  reg [16:0] res_rsci_d_250_234;
  reg [16:0] res_rsci_d_232_216;
  reg [16:0] res_rsci_d_214_198;
  reg [16:0] res_rsci_d_196_180;
  reg [16:0] res_rsci_d_178_162;
  reg [16:0] res_rsci_d_160_144;
  reg [16:0] res_rsci_d_142_126;
  reg [16:0] res_rsci_d_124_108;
  reg [16:0] res_rsci_d_106_90;
  reg [16:0] res_rsci_d_88_72;
  reg [16:0] res_rsci_d_70_54;
  reg [16:0] res_rsci_d_52_36;
  reg [16:0] res_rsci_d_34_18;
  reg [16:0] res_rsci_d_16_0;
  reg [16:0] res_rsci_d_430_414;

  wire[18:0] for_24_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_24_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_1_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_1_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_23_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_23_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_2_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_2_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_22_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_22_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_3_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_3_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_21_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_21_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_4_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_4_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_20_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_20_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_5_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_5_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_19_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_19_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_6_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_6_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_18_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_18_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_7_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_7_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_17_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_17_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_8_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_8_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_16_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_16_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_9_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_9_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_15_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_15_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_10_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_10_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_14_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_14_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_11_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_11_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_13_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_13_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[18:0] for_12_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;
  wire[19:0] nl_for_12_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [431:0] nl_res_rsci_d;
  assign nl_res_rsci_d = {1'b0 , res_rsci_d_430_414 , 1'b0 , res_rsci_d_412_396 ,
      1'b0 , res_rsci_d_394_378 , 1'b0 , res_rsci_d_376_360 , 1'b0 , res_rsci_d_358_342
      , 1'b0 , res_rsci_d_340_324 , 1'b0 , res_rsci_d_322_306 , 1'b0 , res_rsci_d_304_288
      , 1'b0 , res_rsci_d_286_270 , 1'b0 , res_rsci_d_268_252 , 1'b0 , res_rsci_d_250_234
      , 1'b0 , res_rsci_d_232_216 , 1'b0 , res_rsci_d_214_198 , 1'b0 , res_rsci_d_196_180
      , 1'b0 , res_rsci_d_178_162 , 1'b0 , res_rsci_d_160_144 , 1'b0 , res_rsci_d_142_126
      , 1'b0 , res_rsci_d_124_108 , 1'b0 , res_rsci_d_106_90 , 1'b0 , res_rsci_d_88_72
      , 1'b0 , res_rsci_d_70_54 , 1'b0 , res_rsci_d_52_36 , 1'b0 , res_rsci_d_34_18
      , 1'b0 , res_rsci_d_16_0};
  ccs_in_v1 #(.rscid(32'sd6),
  .width(32'sd432)) data_rsci (
      .dat(data_rsc_dat),
      .idat(data_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd7),
  .width(32'sd432)) res_rsci (
      .d(nl_res_rsci_d[431:0]),
      .z(res_rsc_z)
    );
  always @(posedge ccs_ccore_clk) begin
    if ( ccs_ccore_srst ) begin
      res_rsci_d_430_414 <= 17'b00000000000000000;
      res_rsci_d_16_0 <= 17'b00000000000000000;
      res_rsci_d_412_396 <= 17'b00000000000000000;
      res_rsci_d_34_18 <= 17'b00000000000000000;
      res_rsci_d_394_378 <= 17'b00000000000000000;
      res_rsci_d_52_36 <= 17'b00000000000000000;
      res_rsci_d_376_360 <= 17'b00000000000000000;
      res_rsci_d_70_54 <= 17'b00000000000000000;
      res_rsci_d_358_342 <= 17'b00000000000000000;
      res_rsci_d_88_72 <= 17'b00000000000000000;
      res_rsci_d_340_324 <= 17'b00000000000000000;
      res_rsci_d_106_90 <= 17'b00000000000000000;
      res_rsci_d_322_306 <= 17'b00000000000000000;
      res_rsci_d_124_108 <= 17'b00000000000000000;
      res_rsci_d_304_288 <= 17'b00000000000000000;
      res_rsci_d_142_126 <= 17'b00000000000000000;
      res_rsci_d_286_270 <= 17'b00000000000000000;
      res_rsci_d_160_144 <= 17'b00000000000000000;
      res_rsci_d_268_252 <= 17'b00000000000000000;
      res_rsci_d_178_162 <= 17'b00000000000000000;
      res_rsci_d_250_234 <= 17'b00000000000000000;
      res_rsci_d_196_180 <= 17'b00000000000000000;
      res_rsci_d_232_216 <= 17'b00000000000000000;
      res_rsci_d_214_198 <= 17'b00000000000000000;
    end
    else if ( ccs_ccore_en ) begin
      res_rsci_d_430_414 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[430:414]),
          (readslicef_19_1_18((for_24_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_16_0 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[16:0]),
          (readslicef_19_1_18((for_1_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_412_396 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[412:396]),
          (readslicef_19_1_18((for_23_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_34_18 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[34:18]),
          (readslicef_19_1_18((for_2_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_394_378 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[394:378]),
          (readslicef_19_1_18((for_22_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_52_36 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[52:36]),
          (readslicef_19_1_18((for_3_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_376_360 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[376:360]),
          (readslicef_19_1_18((for_21_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_70_54 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[70:54]),
          (readslicef_19_1_18((for_4_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_358_342 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[358:342]),
          (readslicef_19_1_18((for_20_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_88_72 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[88:72]),
          (readslicef_19_1_18((for_5_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_340_324 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[340:324]),
          (readslicef_19_1_18((for_19_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_106_90 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[106:90]),
          (readslicef_19_1_18((for_6_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_322_306 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[322:306]),
          (readslicef_19_1_18((for_18_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_124_108 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[124:108]),
          (readslicef_19_1_18((for_7_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_304_288 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[304:288]),
          (readslicef_19_1_18((for_17_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_142_126 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[142:126]),
          (readslicef_19_1_18((for_8_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_286_270 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[286:270]),
          (readslicef_19_1_18((for_16_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_160_144 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[160:144]),
          (readslicef_19_1_18((for_9_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_268_252 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[268:252]),
          (readslicef_19_1_18((for_15_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_178_162 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[178:162]),
          (readslicef_19_1_18((for_10_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_250_234 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[250:234]),
          (readslicef_19_1_18((for_14_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_196_180 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[196:180]),
          (readslicef_19_1_18((for_11_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_232_216 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[232:216]),
          (readslicef_19_1_18((for_13_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
      res_rsci_d_214_198 <= MUX_v_17_2_2(17'b00000000000000000, (data_rsci_idat[214:198]),
          (readslicef_19_1_18((for_12_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl))));
    end
  end
  assign nl_for_24_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[431:414]);
  assign for_24_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_24_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_1_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[17:0]);
  assign for_1_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_1_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_23_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[413:396]);
  assign for_23_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_23_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_2_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[35:18]);
  assign for_2_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_2_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_22_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[395:378]);
  assign for_22_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_22_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_3_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[53:36]);
  assign for_3_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_3_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_21_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[377:360]);
  assign for_21_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_21_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_4_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[71:54]);
  assign for_4_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_4_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_20_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[359:342]);
  assign for_20_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_20_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_5_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[89:72]);
  assign for_5_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_5_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_19_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[341:324]);
  assign for_19_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_19_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_6_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[107:90]);
  assign for_6_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_6_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_18_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[323:306]);
  assign for_18_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_18_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_7_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[125:108]);
  assign for_7_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_7_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_17_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[305:288]);
  assign for_17_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_17_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_8_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[143:126]);
  assign for_8_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_8_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_16_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[287:270]);
  assign for_16_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_16_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_9_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[161:144]);
  assign for_9_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_9_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_15_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[269:252]);
  assign for_15_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_15_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_10_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[179:162]);
  assign for_10_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_10_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_14_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[251:234]);
  assign for_14_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_14_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_11_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[197:180]);
  assign for_11_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_11_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_13_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[233:216]);
  assign for_13_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_13_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];
  assign nl_for_12_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl =  -conv_s2s_18_19(data_rsci_idat[215:198]);
  assign for_12_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl = nl_for_12_operator_18_8_true_AC_TRN_AC_WRAP_acc_nl[18:0];

  function automatic [16:0] MUX_v_17_2_2;
    input [16:0] input_0;
    input [16:0] input_1;
    input [0:0] sel;
    reg [16:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_17_2_2 = result;
  end
  endfunction


  function automatic [0:0] readslicef_19_1_18;
    input [18:0] vector;
    reg [18:0] tmp;
  begin
    tmp = vector >> 18;
    readslicef_19_1_18 = tmp[0:0];
  end
  endfunction


  function automatic [18:0] conv_s2s_18_19 ;
    input [17:0]  vector ;
  begin
    conv_s2s_18_19 = {vector[17], vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    nnet_relu_layer2_t_layer3_t_relu_config3
// ------------------------------------------------------------------


module nnet_relu_layer2_t_layer3_t_relu_config3 (
  data_rsc_dat, res_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_srst,
      ccs_ccore_en
);
  input [431:0] data_rsc_dat;
  output [431:0] res_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_srst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  nnet_relu_layer2_t_layer3_t_relu_config3_core nnet_relu_layer2_t_layer3_t_relu_config3_core_inst
      (
      .data_rsc_dat(data_rsc_dat),
      .res_rsc_z(res_rsc_z),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_srst(ccs_ccore_srst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/nnet__dense_large_input_t_layer2_t_config2__8cb246a2a1b48f010e1d9592be34549d7bfec_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4c/853139 Production Release
//  HLS Date:       Thu Jan 16 19:19:57 PST 2020
// 
//  Generated by:   giuseppe@fastml02
//  Generated date: Tue Feb 25 11:06:14 2020
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    nnet_dense_large_input_t_layer2_t_config2_core
// ------------------------------------------------------------------


module nnet_dense_large_input_t_layer2_t_config2_core (
  data_rsc_dat, res_rsc_z, weights_rsc_dat, biases_rsc_dat, ccs_ccore_clk, ccs_ccore_srst,
      ccs_ccore_en
);
  input [1055:0] data_rsc_dat;
  output [431:0] res_rsc_z;
  input [9215:0] weights_rsc_dat;
  input [191:0] biases_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_srst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [1055:0] data_rsci_idat;
  wire [9215:0] weights_rsci_idat;
  wire [191:0] biases_rsci_idat;
  reg [17:0] res_rsci_d_431_414;
  wire [23:0] nl_res_rsci_d_431_414;
  reg [17:0] res_rsci_d_413_396;
  wire [23:0] nl_res_rsci_d_413_396;
  reg [17:0] res_rsci_d_395_378;
  wire [23:0] nl_res_rsci_d_395_378;
  reg [17:0] res_rsci_d_377_360;
  wire [23:0] nl_res_rsci_d_377_360;
  reg [17:0] res_rsci_d_359_342;
  wire [23:0] nl_res_rsci_d_359_342;
  reg [17:0] res_rsci_d_341_324;
  wire [23:0] nl_res_rsci_d_341_324;
  reg [17:0] res_rsci_d_323_306;
  wire [23:0] nl_res_rsci_d_323_306;
  reg [17:0] res_rsci_d_305_288;
  wire [23:0] nl_res_rsci_d_305_288;
  reg [17:0] res_rsci_d_287_270;
  wire [23:0] nl_res_rsci_d_287_270;
  reg [17:0] res_rsci_d_269_252;
  wire [23:0] nl_res_rsci_d_269_252;
  reg [17:0] res_rsci_d_251_234;
  wire [23:0] nl_res_rsci_d_251_234;
  reg [17:0] res_rsci_d_233_216;
  wire [23:0] nl_res_rsci_d_233_216;
  reg [17:0] res_rsci_d_215_198;
  wire [23:0] nl_res_rsci_d_215_198;
  reg [17:0] res_rsci_d_197_180;
  wire [23:0] nl_res_rsci_d_197_180;
  reg [17:0] res_rsci_d_179_162;
  wire [23:0] nl_res_rsci_d_179_162;
  reg [17:0] res_rsci_d_161_144;
  wire [23:0] nl_res_rsci_d_161_144;
  reg [17:0] res_rsci_d_143_126;
  wire [23:0] nl_res_rsci_d_143_126;
  reg [17:0] res_rsci_d_125_108;
  wire [23:0] nl_res_rsci_d_125_108;
  reg [17:0] res_rsci_d_107_90;
  wire [23:0] nl_res_rsci_d_107_90;
  reg [17:0] res_rsci_d_89_72;
  wire [23:0] nl_res_rsci_d_89_72;
  reg [17:0] res_rsci_d_71_54;
  wire [23:0] nl_res_rsci_d_71_54;
  reg [17:0] res_rsci_d_53_36;
  wire [23:0] nl_res_rsci_d_53_36;
  reg [17:0] res_rsci_d_35_18;
  wire [23:0] nl_res_rsci_d_35_18;
  reg [17:0] res_rsci_d_17_0;
  wire [23:0] nl_res_rsci_d_17_0;
  wire [12:0] MultLoop_1105_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17;
  wire [12:0] MultLoop_2_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17;
  wire [12:0] MultLoop_1058_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17;
  wire [12:0] MultLoop_50_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17;
  wire [12:0] MultLoop_1010_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17;
  wire [12:0] MultLoop_98_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17;
  wire [12:0] MultLoop_962_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17;
  wire [12:0] MultLoop_146_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17;
  wire [12:0] MultLoop_914_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17;
  wire [12:0] MultLoop_194_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17;
  wire [12:0] MultLoop_866_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17;
  wire [12:0] MultLoop_242_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17;
  wire [12:0] MultLoop_818_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17;
  wire [12:0] MultLoop_290_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17;
  wire [12:0] MultLoop_770_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17;
  wire [12:0] MultLoop_338_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17;
  wire [12:0] MultLoop_722_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17;
  wire [12:0] MultLoop_386_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17;
  wire [12:0] MultLoop_674_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17;
  wire [12:0] MultLoop_434_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17;
  wire [12:0] MultLoop_626_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17;
  wire [12:0] MultLoop_482_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17;
  wire [12:0] MultLoop_578_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17;
  wire [12:0] MultLoop_530_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17;

  wire[29:0] MultLoop_1120_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1121_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1118_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1119_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1140_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1141_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1144_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1145_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1142_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1143_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[8:0] MultLoop_acc_1912_nl;
  wire[9:0] nl_MultLoop_acc_1912_nl;
  wire[29:0] MultLoop_1150_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1151_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1152_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1148_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1149_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1146_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1147_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1136_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1137_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1134_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1135_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1132_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1133_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1130_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1131_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1124_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1125_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1122_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1123_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1128_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1129_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1126_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1127_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1116_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1117_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1114_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1115_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1108_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1109_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1106_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1107_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1112_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1113_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1110_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1111_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1138_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1139_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_18_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_15_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_16_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_13_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_38_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_35_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_42_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_39_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_40_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_37_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[8:0] MultLoop_acc_1911_nl;
  wire[9:0] nl_MultLoop_acc_1911_nl;
  wire[29:0] MultLoop_47_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_48_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_45_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_46_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_43_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_44_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_41_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_34_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_31_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_32_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_29_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_30_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_27_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_28_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_25_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_22_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_19_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_20_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_17_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_26_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_23_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_24_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_21_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_14_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_11_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_12_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_9_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_6_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_3_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_4_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_10_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_7_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_8_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_5_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_36_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_33_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1074_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1071_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1072_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1069_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1094_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1091_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1098_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1095_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1096_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1093_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[8:0] MultLoop_acc_1910_nl;
  wire[9:0] nl_MultLoop_acc_1910_nl;
  wire[29:0] MultLoop_1103_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1104_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1101_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1102_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1099_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1100_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1097_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1090_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1087_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1088_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1085_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1086_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1083_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1084_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1081_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1078_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1075_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1076_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1073_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1082_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1079_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1080_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1077_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1070_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1067_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1068_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1065_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1062_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1059_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1060_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1057_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1066_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1063_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1064_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1061_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1092_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1089_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_66_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_63_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_64_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_61_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_86_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_83_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_90_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_87_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_88_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_85_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[8:0] MultLoop_acc_1909_nl;
  wire[9:0] nl_MultLoop_acc_1909_nl;
  wire[29:0] MultLoop_95_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_96_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_93_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_94_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_91_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_92_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_89_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_82_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_79_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_80_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_77_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_78_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_75_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_76_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_73_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_70_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_67_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_68_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_65_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_74_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_71_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_72_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_69_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_62_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_59_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_60_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_57_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_54_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_51_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_52_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_49_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_58_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_55_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_56_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_53_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_84_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_81_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1026_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1023_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1024_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1021_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1046_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1043_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1050_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1047_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1048_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1045_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[8:0] MultLoop_acc_1908_nl;
  wire[9:0] nl_MultLoop_acc_1908_nl;
  wire[29:0] MultLoop_1055_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1056_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1053_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1054_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1051_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1052_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1049_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1042_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1039_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1040_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1037_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1038_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1035_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1036_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1033_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1030_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1027_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1028_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1025_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1034_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1031_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1032_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1029_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1022_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1019_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1020_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1017_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1014_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1011_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1012_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1009_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1018_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1015_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1016_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1013_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1044_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1041_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_114_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_111_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_112_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_109_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_134_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_131_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_138_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_135_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_136_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_133_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[8:0] MultLoop_acc_1907_nl;
  wire[9:0] nl_MultLoop_acc_1907_nl;
  wire[29:0] MultLoop_143_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_144_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_141_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_142_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_139_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_140_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_137_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_130_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_127_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_128_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_125_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_126_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_123_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_124_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_121_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_118_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_115_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_116_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_113_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_122_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_119_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_120_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_117_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_110_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_107_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_108_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_105_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_102_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_99_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_100_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_97_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_106_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_103_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_104_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_101_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_132_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_129_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_978_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_975_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_976_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_973_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_998_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_995_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1002_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_999_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1000_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_997_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[8:0] MultLoop_acc_1906_nl;
  wire[9:0] nl_MultLoop_acc_1906_nl;
  wire[29:0] MultLoop_1007_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1008_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1005_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1006_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1003_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1004_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1001_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_994_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_991_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_992_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_989_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_990_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_987_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_988_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_985_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_982_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_979_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_980_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_977_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_986_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_983_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_984_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_981_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_974_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_971_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_972_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_969_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_966_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_963_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_964_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_961_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_970_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_967_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_968_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_965_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_996_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_993_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_162_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_159_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_160_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_157_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_182_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_179_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_186_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_183_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_184_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_181_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[8:0] MultLoop_acc_1905_nl;
  wire[9:0] nl_MultLoop_acc_1905_nl;
  wire[29:0] MultLoop_191_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_192_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_189_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_190_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_187_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_188_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_185_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_178_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_175_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_176_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_173_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_174_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_171_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_172_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_169_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_166_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_163_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_164_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_161_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_170_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_167_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_168_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_165_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_158_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_155_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_156_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_153_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_150_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_147_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_148_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_145_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_154_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_151_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_152_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_149_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_180_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_177_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_930_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_927_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_928_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_925_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_950_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_947_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_954_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_951_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_952_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_949_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[8:0] MultLoop_acc_1904_nl;
  wire[9:0] nl_MultLoop_acc_1904_nl;
  wire[29:0] MultLoop_959_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_960_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_957_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_958_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_955_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_956_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_953_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_946_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_943_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_944_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_941_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_942_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_939_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_940_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_937_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_934_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_931_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_932_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_929_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_938_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_935_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_936_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_933_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_926_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_923_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_924_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_921_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_918_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_915_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_916_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_913_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_922_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_919_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_920_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_917_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_948_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_945_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_210_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_207_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_208_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_205_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_230_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_227_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_234_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_231_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_232_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_229_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[8:0] MultLoop_acc_1903_nl;
  wire[9:0] nl_MultLoop_acc_1903_nl;
  wire[29:0] MultLoop_239_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_240_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_237_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_238_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_235_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_236_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_233_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_226_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_223_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_224_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_221_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_222_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_219_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_220_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_217_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_214_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_211_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_212_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_209_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_218_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_215_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_216_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_213_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_206_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_203_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_204_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_201_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_198_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_195_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_196_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_193_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_202_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_199_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_200_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_197_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_228_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_225_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_882_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_879_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_880_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_877_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_902_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_899_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_906_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_903_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_904_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_901_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[8:0] MultLoop_acc_1902_nl;
  wire[9:0] nl_MultLoop_acc_1902_nl;
  wire[29:0] MultLoop_911_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_912_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_909_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_910_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_907_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_908_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_905_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_898_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_895_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_896_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_893_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_894_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_891_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_892_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_889_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_886_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_883_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_884_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_881_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_890_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_887_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_888_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_885_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_878_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_875_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_876_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_873_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_870_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_867_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_868_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_865_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_874_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_871_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_872_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_869_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_900_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_897_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_258_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_255_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_256_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_253_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_278_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_275_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_282_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_279_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_280_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_277_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[8:0] MultLoop_acc_1901_nl;
  wire[9:0] nl_MultLoop_acc_1901_nl;
  wire[29:0] MultLoop_287_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_288_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_285_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_286_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_283_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_284_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_281_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_274_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_271_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_272_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_269_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_270_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_267_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_268_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_265_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_262_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_259_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_260_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_257_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_266_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_263_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_264_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_261_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_254_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_251_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_252_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_249_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_246_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_243_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_244_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_241_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_250_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_247_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_248_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_245_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_276_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_273_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_834_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_831_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_832_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_829_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_854_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_851_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_858_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_855_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_856_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_853_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[8:0] MultLoop_acc_1900_nl;
  wire[9:0] nl_MultLoop_acc_1900_nl;
  wire[29:0] MultLoop_863_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_864_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_861_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_862_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_859_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_860_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_857_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_850_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_847_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_848_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_845_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_846_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_843_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_844_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_841_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_838_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_835_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_836_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_833_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_842_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_839_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_840_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_837_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_830_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_827_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_828_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_825_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_822_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_819_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_820_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_817_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_826_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_823_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_824_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_821_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_852_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_849_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_306_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_303_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_304_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_301_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_326_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_323_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_330_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_327_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_328_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_325_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[8:0] MultLoop_acc_1899_nl;
  wire[9:0] nl_MultLoop_acc_1899_nl;
  wire[29:0] MultLoop_335_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_336_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_333_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_334_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_331_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_332_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_329_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_322_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_319_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_320_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_317_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_318_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_315_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_316_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_313_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_310_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_307_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_308_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_305_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_314_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_311_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_312_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_309_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_302_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_299_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_300_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_297_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_294_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_291_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_292_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_289_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_298_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_295_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_296_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_293_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_324_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_321_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_786_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_783_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_784_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_781_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_806_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_803_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_810_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_807_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_808_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_805_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[8:0] MultLoop_acc_1898_nl;
  wire[9:0] nl_MultLoop_acc_1898_nl;
  wire[29:0] MultLoop_815_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_816_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_813_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_814_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_811_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_812_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_809_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_802_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_799_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_800_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_797_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_798_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_795_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_796_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_793_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_790_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_787_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_788_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_785_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_794_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_791_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_792_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_789_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_782_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_779_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_780_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_777_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_774_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_771_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_772_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_769_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_778_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_775_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_776_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_773_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_804_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_801_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_354_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_351_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_352_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_349_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_374_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_371_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_378_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_375_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_376_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_373_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[8:0] MultLoop_acc_1897_nl;
  wire[9:0] nl_MultLoop_acc_1897_nl;
  wire[29:0] MultLoop_383_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_384_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_381_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_382_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_379_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_380_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_377_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_370_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_367_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_368_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_365_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_366_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_363_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_364_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_361_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_358_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_355_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_356_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_353_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_362_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_359_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_360_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_357_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_350_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_347_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_348_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_345_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_342_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_339_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_340_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_337_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_346_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_343_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_344_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_341_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_372_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_369_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_738_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_735_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_736_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_733_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_758_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_755_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_762_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_759_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_760_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_757_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[8:0] MultLoop_acc_1896_nl;
  wire[9:0] nl_MultLoop_acc_1896_nl;
  wire[29:0] MultLoop_767_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_768_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_765_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_766_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_763_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_764_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_761_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_754_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_751_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_752_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_749_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_750_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_747_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_748_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_745_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_742_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_739_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_740_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_737_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_746_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_743_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_744_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_741_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_734_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_731_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_732_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_729_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_726_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_723_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_724_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_721_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_730_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_727_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_728_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_725_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_756_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_753_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_402_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_399_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_400_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_397_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_422_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_419_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_426_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_423_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_424_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_421_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[8:0] MultLoop_acc_1895_nl;
  wire[9:0] nl_MultLoop_acc_1895_nl;
  wire[29:0] MultLoop_431_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_432_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_429_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_430_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_427_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_428_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_425_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_418_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_415_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_416_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_413_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_414_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_411_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_412_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_409_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_406_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_403_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_404_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_401_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_410_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_407_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_408_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_405_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_398_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_395_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_396_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_393_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_390_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_387_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_388_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_385_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_394_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_391_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_392_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_389_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_420_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_417_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_690_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_687_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_688_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_685_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_710_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_707_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_714_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_711_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_712_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_709_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[8:0] MultLoop_acc_1894_nl;
  wire[9:0] nl_MultLoop_acc_1894_nl;
  wire[29:0] MultLoop_719_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_720_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_717_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_718_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_715_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_716_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_713_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_706_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_703_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_704_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_701_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_702_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_699_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_700_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_697_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_694_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_691_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_692_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_689_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_698_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_695_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_696_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_693_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_686_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_683_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_684_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_681_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_678_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_675_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_676_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_673_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_682_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_679_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_680_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_677_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_708_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_705_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_450_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_447_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_448_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_445_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_470_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_467_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_474_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_471_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_472_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_469_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[8:0] MultLoop_acc_1893_nl;
  wire[9:0] nl_MultLoop_acc_1893_nl;
  wire[29:0] MultLoop_479_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_480_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_477_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_478_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_475_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_476_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_473_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_466_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_463_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_464_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_461_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_462_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_459_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_460_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_457_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_454_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_451_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_452_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_449_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_458_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_455_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_456_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_453_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_446_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_443_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_444_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_441_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_438_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_435_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_436_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_433_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_442_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_439_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_440_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_437_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_468_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_465_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_642_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_639_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_640_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_637_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_662_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_659_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_666_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_663_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_664_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_661_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[8:0] MultLoop_acc_1892_nl;
  wire[9:0] nl_MultLoop_acc_1892_nl;
  wire[29:0] MultLoop_671_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_672_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_669_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_670_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_667_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_668_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_665_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_658_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_655_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_656_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_653_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_654_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_651_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_652_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_649_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_646_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_643_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_644_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_641_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_650_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_647_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_648_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_645_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_638_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_635_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_636_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_633_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_630_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_627_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_628_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_625_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_634_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_631_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_632_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_629_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_660_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_657_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_498_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_495_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_496_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_493_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_518_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_515_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_522_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_519_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_520_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_517_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[8:0] MultLoop_acc_1891_nl;
  wire[9:0] nl_MultLoop_acc_1891_nl;
  wire[29:0] MultLoop_527_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_528_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_525_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_526_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_523_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_524_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_521_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_514_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_511_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_512_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_509_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_510_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_507_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_508_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_505_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_502_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_499_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_500_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_497_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_506_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_503_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_504_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_501_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_494_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_491_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_492_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_489_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_486_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_483_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_484_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_481_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_490_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_487_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_488_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_485_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_516_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_513_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_594_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_591_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_592_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_589_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_614_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_611_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_618_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_615_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_616_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_613_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[8:0] MultLoop_acc_1890_nl;
  wire[9:0] nl_MultLoop_acc_1890_nl;
  wire[29:0] MultLoop_623_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_624_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_621_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_622_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_619_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_620_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_617_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_610_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_607_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_608_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_605_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_606_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_603_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_604_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_601_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_598_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_595_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_596_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_593_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_602_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_599_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_600_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_597_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_590_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_587_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_588_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_585_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_582_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_579_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_580_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_577_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_586_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_583_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_584_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_581_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_612_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_609_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_546_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_543_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_544_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_541_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_566_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_563_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_570_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_567_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_568_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_565_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[8:0] MultLoop_acc_1889_nl;
  wire[9:0] nl_MultLoop_acc_1889_nl;
  wire[29:0] MultLoop_575_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_576_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_573_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_574_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_571_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_572_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_569_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_562_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_559_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_560_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_557_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_558_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_555_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_556_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_553_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_550_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_547_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_548_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_545_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_554_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_551_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_552_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_549_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_542_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_539_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_540_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_537_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_534_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_531_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_532_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_529_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_538_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_535_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_536_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_533_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_564_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_561_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1105_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_2_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1058_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_50_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_1010_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_98_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_962_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_146_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_914_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_194_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_866_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_242_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_818_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_290_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_770_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_338_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_722_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_386_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_674_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_434_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_626_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_482_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_578_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;
  wire[29:0] MultLoop_530_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [431:0] nl_res_rsci_d;
  assign nl_res_rsci_d = {res_rsci_d_431_414 , res_rsci_d_413_396 , res_rsci_d_395_378
      , res_rsci_d_377_360 , res_rsci_d_359_342 , res_rsci_d_341_324 , res_rsci_d_323_306
      , res_rsci_d_305_288 , res_rsci_d_287_270 , res_rsci_d_269_252 , res_rsci_d_251_234
      , res_rsci_d_233_216 , res_rsci_d_215_198 , res_rsci_d_197_180 , res_rsci_d_179_162
      , res_rsci_d_161_144 , res_rsci_d_143_126 , res_rsci_d_125_108 , res_rsci_d_107_90
      , res_rsci_d_89_72 , res_rsci_d_71_54 , res_rsci_d_53_36 , res_rsci_d_35_18
      , res_rsci_d_17_0};
  ccs_in_v1 #(.rscid(32'sd1),
  .width(32'sd1056)) data_rsci (
      .dat(data_rsc_dat),
      .idat(data_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd2),
  .width(32'sd432)) res_rsci (
      .d(nl_res_rsci_d[431:0]),
      .z(res_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd3),
  .width(32'sd9216)) weights_rsci (
      .dat(weights_rsc_dat),
      .idat(weights_rsci_idat)
    );
  ccs_in_v1 #(.rscid(32'sd4),
  .width(32'sd192)) biases_rsci (
      .dat(biases_rsc_dat),
      .idat(biases_rsci_idat)
    );
  assign MultLoop_1105_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[21:0])) * $signed((weights_rsci_idat[8839:8832])));
  assign MultLoop_1105_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17
      = readslicef_30_13_17((MultLoop_1105_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl));
  assign MultLoop_2_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[43:22])) * $signed((weights_rsci_idat[15:8])));
  assign MultLoop_2_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17
      = readslicef_30_13_17((MultLoop_2_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl));
  assign MultLoop_1058_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[43:22])) * $signed((weights_rsci_idat[8463:8456])));
  assign MultLoop_1058_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17
      = readslicef_30_13_17((MultLoop_1058_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl));
  assign MultLoop_50_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[43:22])) * $signed((weights_rsci_idat[399:392])));
  assign MultLoop_50_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17
      = readslicef_30_13_17((MultLoop_50_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl));
  assign MultLoop_1010_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[43:22])) * $signed((weights_rsci_idat[8079:8072])));
  assign MultLoop_1010_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17
      = readslicef_30_13_17((MultLoop_1010_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl));
  assign MultLoop_98_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[43:22])) * $signed((weights_rsci_idat[783:776])));
  assign MultLoop_98_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17
      = readslicef_30_13_17((MultLoop_98_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl));
  assign MultLoop_962_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[43:22])) * $signed((weights_rsci_idat[7695:7688])));
  assign MultLoop_962_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17
      = readslicef_30_13_17((MultLoop_962_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl));
  assign MultLoop_146_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[43:22])) * $signed((weights_rsci_idat[1167:1160])));
  assign MultLoop_146_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17
      = readslicef_30_13_17((MultLoop_146_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl));
  assign MultLoop_914_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[43:22])) * $signed((weights_rsci_idat[7311:7304])));
  assign MultLoop_914_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17
      = readslicef_30_13_17((MultLoop_914_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl));
  assign MultLoop_194_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[43:22])) * $signed((weights_rsci_idat[1551:1544])));
  assign MultLoop_194_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17
      = readslicef_30_13_17((MultLoop_194_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl));
  assign MultLoop_866_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[43:22])) * $signed((weights_rsci_idat[6927:6920])));
  assign MultLoop_866_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17
      = readslicef_30_13_17((MultLoop_866_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl));
  assign MultLoop_242_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[43:22])) * $signed((weights_rsci_idat[1935:1928])));
  assign MultLoop_242_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17
      = readslicef_30_13_17((MultLoop_242_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl));
  assign MultLoop_818_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[43:22])) * $signed((weights_rsci_idat[6543:6536])));
  assign MultLoop_818_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17
      = readslicef_30_13_17((MultLoop_818_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl));
  assign MultLoop_290_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[43:22])) * $signed((weights_rsci_idat[2319:2312])));
  assign MultLoop_290_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17
      = readslicef_30_13_17((MultLoop_290_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl));
  assign MultLoop_770_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[43:22])) * $signed((weights_rsci_idat[6159:6152])));
  assign MultLoop_770_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17
      = readslicef_30_13_17((MultLoop_770_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl));
  assign MultLoop_338_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[43:22])) * $signed((weights_rsci_idat[2703:2696])));
  assign MultLoop_338_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17
      = readslicef_30_13_17((MultLoop_338_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl));
  assign MultLoop_722_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[43:22])) * $signed((weights_rsci_idat[5775:5768])));
  assign MultLoop_722_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17
      = readslicef_30_13_17((MultLoop_722_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl));
  assign MultLoop_386_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[43:22])) * $signed((weights_rsci_idat[3087:3080])));
  assign MultLoop_386_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17
      = readslicef_30_13_17((MultLoop_386_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl));
  assign MultLoop_674_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[43:22])) * $signed((weights_rsci_idat[5391:5384])));
  assign MultLoop_674_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17
      = readslicef_30_13_17((MultLoop_674_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl));
  assign MultLoop_434_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[43:22])) * $signed((weights_rsci_idat[3471:3464])));
  assign MultLoop_434_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17
      = readslicef_30_13_17((MultLoop_434_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl));
  assign MultLoop_626_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[43:22])) * $signed((weights_rsci_idat[5007:5000])));
  assign MultLoop_626_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17
      = readslicef_30_13_17((MultLoop_626_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl));
  assign MultLoop_482_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[43:22])) * $signed((weights_rsci_idat[3855:3848])));
  assign MultLoop_482_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17
      = readslicef_30_13_17((MultLoop_482_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl));
  assign MultLoop_578_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[43:22])) * $signed((weights_rsci_idat[4623:4616])));
  assign MultLoop_578_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17
      = readslicef_30_13_17((MultLoop_578_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl));
  assign MultLoop_530_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[43:22])) * $signed((weights_rsci_idat[4239:4232])));
  assign MultLoop_530_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17
      = readslicef_30_13_17((MultLoop_530_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl));
  always @(posedge ccs_ccore_clk) begin
    if ( ccs_ccore_srst ) begin
      res_rsci_d_431_414 <= 18'b000000000000000000;
      res_rsci_d_17_0 <= 18'b000000000000000000;
      res_rsci_d_413_396 <= 18'b000000000000000000;
      res_rsci_d_35_18 <= 18'b000000000000000000;
      res_rsci_d_395_378 <= 18'b000000000000000000;
      res_rsci_d_53_36 <= 18'b000000000000000000;
      res_rsci_d_377_360 <= 18'b000000000000000000;
      res_rsci_d_71_54 <= 18'b000000000000000000;
      res_rsci_d_359_342 <= 18'b000000000000000000;
      res_rsci_d_89_72 <= 18'b000000000000000000;
      res_rsci_d_341_324 <= 18'b000000000000000000;
      res_rsci_d_107_90 <= 18'b000000000000000000;
      res_rsci_d_323_306 <= 18'b000000000000000000;
      res_rsci_d_125_108 <= 18'b000000000000000000;
      res_rsci_d_305_288 <= 18'b000000000000000000;
      res_rsci_d_143_126 <= 18'b000000000000000000;
      res_rsci_d_287_270 <= 18'b000000000000000000;
      res_rsci_d_161_144 <= 18'b000000000000000000;
      res_rsci_d_269_252 <= 18'b000000000000000000;
      res_rsci_d_179_162 <= 18'b000000000000000000;
      res_rsci_d_251_234 <= 18'b000000000000000000;
      res_rsci_d_197_180 <= 18'b000000000000000000;
      res_rsci_d_233_216 <= 18'b000000000000000000;
      res_rsci_d_215_198 <= 18'b000000000000000000;
    end
    else if ( ccs_ccore_en ) begin
      res_rsci_d_431_414 <= nl_res_rsci_d_431_414[17:0];
      res_rsci_d_17_0 <= nl_res_rsci_d_17_0[17:0];
      res_rsci_d_413_396 <= nl_res_rsci_d_413_396[17:0];
      res_rsci_d_35_18 <= nl_res_rsci_d_35_18[17:0];
      res_rsci_d_395_378 <= nl_res_rsci_d_395_378[17:0];
      res_rsci_d_53_36 <= nl_res_rsci_d_53_36[17:0];
      res_rsci_d_377_360 <= nl_res_rsci_d_377_360[17:0];
      res_rsci_d_71_54 <= nl_res_rsci_d_71_54[17:0];
      res_rsci_d_359_342 <= nl_res_rsci_d_359_342[17:0];
      res_rsci_d_89_72 <= nl_res_rsci_d_89_72[17:0];
      res_rsci_d_341_324 <= nl_res_rsci_d_341_324[17:0];
      res_rsci_d_107_90 <= nl_res_rsci_d_107_90[17:0];
      res_rsci_d_323_306 <= nl_res_rsci_d_323_306[17:0];
      res_rsci_d_125_108 <= nl_res_rsci_d_125_108[17:0];
      res_rsci_d_305_288 <= nl_res_rsci_d_305_288[17:0];
      res_rsci_d_143_126 <= nl_res_rsci_d_143_126[17:0];
      res_rsci_d_287_270 <= nl_res_rsci_d_287_270[17:0];
      res_rsci_d_161_144 <= nl_res_rsci_d_161_144[17:0];
      res_rsci_d_269_252 <= nl_res_rsci_d_269_252[17:0];
      res_rsci_d_179_162 <= nl_res_rsci_d_179_162[17:0];
      res_rsci_d_251_234 <= nl_res_rsci_d_251_234[17:0];
      res_rsci_d_197_180 <= nl_res_rsci_d_197_180[17:0];
      res_rsci_d_233_216 <= nl_res_rsci_d_233_216[17:0];
      res_rsci_d_215_198 <= nl_res_rsci_d_215_198[17:0];
    end
  end
  assign MultLoop_1120_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[351:330])) * $signed((weights_rsci_idat[8959:8952])));
  assign MultLoop_1121_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[373:352])) * $signed((weights_rsci_idat[8967:8960])));
  assign MultLoop_1118_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[307:286])) * $signed((weights_rsci_idat[8943:8936])));
  assign MultLoop_1119_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[329:308])) * $signed((weights_rsci_idat[8951:8944])));
  assign MultLoop_1140_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[791:770])) * $signed((weights_rsci_idat[9119:9112])));
  assign MultLoop_1141_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[813:792])) * $signed((weights_rsci_idat[9127:9120])));
  assign MultLoop_1144_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[879:858])) * $signed((weights_rsci_idat[9151:9144])));
  assign MultLoop_1145_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[901:880])) * $signed((weights_rsci_idat[9159:9152])));
  assign MultLoop_1142_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[835:814])) * $signed((weights_rsci_idat[9135:9128])));
  assign MultLoop_1143_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[857:836])) * $signed((weights_rsci_idat[9143:9136])));
  assign nl_MultLoop_acc_1912_nl = (MultLoop_1105_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[12:4])
      + conv_s2s_8_9(biases_rsci_idat[191:184]);
  assign MultLoop_acc_1912_nl = nl_MultLoop_acc_1912_nl[8:0];
  assign MultLoop_1150_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1011:990])) * $signed((weights_rsci_idat[9199:9192])));
  assign MultLoop_1151_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1033:1012])) * $signed((weights_rsci_idat[9207:9200])));
  assign MultLoop_1152_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1055:1034])) * $signed((weights_rsci_idat[9215:9208])));
  assign MultLoop_1148_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[967:946])) * $signed((weights_rsci_idat[9183:9176])));
  assign MultLoop_1149_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[989:968])) * $signed((weights_rsci_idat[9191:9184])));
  assign MultLoop_1146_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[923:902])) * $signed((weights_rsci_idat[9167:9160])));
  assign MultLoop_1147_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[945:924])) * $signed((weights_rsci_idat[9175:9168])));
  assign MultLoop_1136_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[703:682])) * $signed((weights_rsci_idat[9087:9080])));
  assign MultLoop_1137_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[725:704])) * $signed((weights_rsci_idat[9095:9088])));
  assign MultLoop_1134_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[659:638])) * $signed((weights_rsci_idat[9071:9064])));
  assign MultLoop_1135_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[681:660])) * $signed((weights_rsci_idat[9079:9072])));
  assign MultLoop_1132_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[615:594])) * $signed((weights_rsci_idat[9055:9048])));
  assign MultLoop_1133_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[637:616])) * $signed((weights_rsci_idat[9063:9056])));
  assign MultLoop_1130_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[571:550])) * $signed((weights_rsci_idat[9039:9032])));
  assign MultLoop_1131_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[593:572])) * $signed((weights_rsci_idat[9047:9040])));
  assign MultLoop_1124_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[439:418])) * $signed((weights_rsci_idat[8991:8984])));
  assign MultLoop_1125_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[461:440])) * $signed((weights_rsci_idat[8999:8992])));
  assign MultLoop_1122_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[395:374])) * $signed((weights_rsci_idat[8975:8968])));
  assign MultLoop_1123_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[417:396])) * $signed((weights_rsci_idat[8983:8976])));
  assign MultLoop_1128_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[527:506])) * $signed((weights_rsci_idat[9023:9016])));
  assign MultLoop_1129_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[549:528])) * $signed((weights_rsci_idat[9031:9024])));
  assign MultLoop_1126_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[483:462])) * $signed((weights_rsci_idat[9007:9000])));
  assign MultLoop_1127_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[505:484])) * $signed((weights_rsci_idat[9015:9008])));
  assign MultLoop_1116_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[263:242])) * $signed((weights_rsci_idat[8927:8920])));
  assign MultLoop_1117_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[285:264])) * $signed((weights_rsci_idat[8935:8928])));
  assign MultLoop_1114_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[219:198])) * $signed((weights_rsci_idat[8911:8904])));
  assign MultLoop_1115_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[241:220])) * $signed((weights_rsci_idat[8919:8912])));
  assign MultLoop_1108_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[87:66])) * $signed((weights_rsci_idat[8863:8856])));
  assign MultLoop_1109_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[109:88])) * $signed((weights_rsci_idat[8871:8864])));
  assign MultLoop_1106_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[43:22])) * $signed((weights_rsci_idat[8847:8840])));
  assign MultLoop_1107_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[65:44])) * $signed((weights_rsci_idat[8855:8848])));
  assign MultLoop_1112_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[175:154])) * $signed((weights_rsci_idat[8895:8888])));
  assign MultLoop_1113_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[197:176])) * $signed((weights_rsci_idat[8903:8896])));
  assign MultLoop_1110_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[131:110])) * $signed((weights_rsci_idat[8879:8872])));
  assign MultLoop_1111_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[153:132])) * $signed((weights_rsci_idat[8887:8880])));
  assign MultLoop_1138_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[747:726])) * $signed((weights_rsci_idat[9103:9096])));
  assign MultLoop_1139_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[769:748])) * $signed((weights_rsci_idat[9111:9104])));
  assign nl_res_rsci_d_431_414  = conv_s2s_13_18(readslicef_30_13_17((MultLoop_1120_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1121_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1118_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1119_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1140_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1141_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1144_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1145_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1142_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1143_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18({(MultLoop_acc_1912_nl) , (MultLoop_1105_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[3:0])})
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1150_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1151_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1152_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1148_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1149_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1146_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1147_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1136_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1137_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1134_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1135_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1132_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1133_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1130_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1131_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1124_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1125_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1122_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1123_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1128_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1129_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1126_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1127_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1116_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1117_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1114_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1115_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1108_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1109_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1106_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1107_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1112_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1113_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1110_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1111_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1138_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1139_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)));
  assign MultLoop_18_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[395:374])) * $signed((weights_rsci_idat[143:136])));
  assign MultLoop_15_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[329:308])) * $signed((weights_rsci_idat[119:112])));
  assign MultLoop_16_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[351:330])) * $signed((weights_rsci_idat[127:120])));
  assign MultLoop_13_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[285:264])) * $signed((weights_rsci_idat[103:96])));
  assign MultLoop_38_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[835:814])) * $signed((weights_rsci_idat[303:296])));
  assign MultLoop_35_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[769:748])) * $signed((weights_rsci_idat[279:272])));
  assign MultLoop_42_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[923:902])) * $signed((weights_rsci_idat[335:328])));
  assign MultLoop_39_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[857:836])) * $signed((weights_rsci_idat[311:304])));
  assign MultLoop_40_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[879:858])) * $signed((weights_rsci_idat[319:312])));
  assign MultLoop_37_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[813:792])) * $signed((weights_rsci_idat[295:288])));
  assign nl_MultLoop_acc_1911_nl = (MultLoop_2_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[12:4])
      + conv_s2s_8_9(biases_rsci_idat[7:0]);
  assign MultLoop_acc_1911_nl = nl_MultLoop_acc_1911_nl[8:0];
  assign MultLoop_47_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1033:1012])) * $signed((weights_rsci_idat[375:368])));
  assign MultLoop_48_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1055:1034])) * $signed((weights_rsci_idat[383:376])));
  assign MultLoop_45_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[989:968])) * $signed((weights_rsci_idat[359:352])));
  assign MultLoop_46_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1011:990])) * $signed((weights_rsci_idat[367:360])));
  assign MultLoop_43_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[945:924])) * $signed((weights_rsci_idat[343:336])));
  assign MultLoop_44_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[967:946])) * $signed((weights_rsci_idat[351:344])));
  assign MultLoop_41_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[901:880])) * $signed((weights_rsci_idat[327:320])));
  assign MultLoop_34_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[747:726])) * $signed((weights_rsci_idat[271:264])));
  assign MultLoop_31_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[681:660])) * $signed((weights_rsci_idat[247:240])));
  assign MultLoop_32_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[703:682])) * $signed((weights_rsci_idat[255:248])));
  assign MultLoop_29_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[637:616])) * $signed((weights_rsci_idat[231:224])));
  assign MultLoop_30_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[659:638])) * $signed((weights_rsci_idat[239:232])));
  assign MultLoop_27_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[593:572])) * $signed((weights_rsci_idat[215:208])));
  assign MultLoop_28_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[615:594])) * $signed((weights_rsci_idat[223:216])));
  assign MultLoop_25_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[549:528])) * $signed((weights_rsci_idat[199:192])));
  assign MultLoop_22_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[483:462])) * $signed((weights_rsci_idat[175:168])));
  assign MultLoop_19_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[417:396])) * $signed((weights_rsci_idat[151:144])));
  assign MultLoop_20_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[439:418])) * $signed((weights_rsci_idat[159:152])));
  assign MultLoop_17_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[373:352])) * $signed((weights_rsci_idat[135:128])));
  assign MultLoop_26_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[571:550])) * $signed((weights_rsci_idat[207:200])));
  assign MultLoop_23_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[505:484])) * $signed((weights_rsci_idat[183:176])));
  assign MultLoop_24_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[527:506])) * $signed((weights_rsci_idat[191:184])));
  assign MultLoop_21_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[461:440])) * $signed((weights_rsci_idat[167:160])));
  assign MultLoop_14_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[307:286])) * $signed((weights_rsci_idat[111:104])));
  assign MultLoop_11_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[241:220])) * $signed((weights_rsci_idat[87:80])));
  assign MultLoop_12_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[263:242])) * $signed((weights_rsci_idat[95:88])));
  assign MultLoop_9_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[197:176])) * $signed((weights_rsci_idat[71:64])));
  assign MultLoop_6_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[131:110])) * $signed((weights_rsci_idat[47:40])));
  assign MultLoop_3_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[65:44])) * $signed((weights_rsci_idat[23:16])));
  assign MultLoop_4_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[87:66])) * $signed((weights_rsci_idat[31:24])));
  assign MultLoop_1_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[21:0])) * $signed((weights_rsci_idat[7:0])));
  assign MultLoop_10_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[219:198])) * $signed((weights_rsci_idat[79:72])));
  assign MultLoop_7_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[153:132])) * $signed((weights_rsci_idat[55:48])));
  assign MultLoop_8_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[175:154])) * $signed((weights_rsci_idat[63:56])));
  assign MultLoop_5_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[109:88])) * $signed((weights_rsci_idat[39:32])));
  assign MultLoop_36_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[791:770])) * $signed((weights_rsci_idat[287:280])));
  assign MultLoop_33_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[725:704])) * $signed((weights_rsci_idat[263:256])));
  assign nl_res_rsci_d_17_0  = conv_s2s_13_18(readslicef_30_13_17((MultLoop_18_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_15_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_16_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_13_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_38_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_35_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_42_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_39_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_40_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_37_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18({(MultLoop_acc_1911_nl) , (MultLoop_2_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[3:0])})
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_47_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_48_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_45_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_46_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_43_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_44_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_41_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_34_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_31_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_32_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_29_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_30_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_27_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_28_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_25_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_22_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_19_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_20_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_17_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_26_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_23_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_24_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_21_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_14_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_11_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_12_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_9_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_6_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_3_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_4_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_10_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_7_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_8_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_5_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_36_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_33_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)));
  assign MultLoop_1074_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[395:374])) * $signed((weights_rsci_idat[8591:8584])));
  assign MultLoop_1071_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[329:308])) * $signed((weights_rsci_idat[8567:8560])));
  assign MultLoop_1072_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[351:330])) * $signed((weights_rsci_idat[8575:8568])));
  assign MultLoop_1069_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[285:264])) * $signed((weights_rsci_idat[8551:8544])));
  assign MultLoop_1094_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[835:814])) * $signed((weights_rsci_idat[8751:8744])));
  assign MultLoop_1091_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[769:748])) * $signed((weights_rsci_idat[8727:8720])));
  assign MultLoop_1098_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[923:902])) * $signed((weights_rsci_idat[8783:8776])));
  assign MultLoop_1095_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[857:836])) * $signed((weights_rsci_idat[8759:8752])));
  assign MultLoop_1096_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[879:858])) * $signed((weights_rsci_idat[8767:8760])));
  assign MultLoop_1093_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[813:792])) * $signed((weights_rsci_idat[8743:8736])));
  assign nl_MultLoop_acc_1910_nl = (MultLoop_1058_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[12:4])
      + conv_s2s_8_9(biases_rsci_idat[183:176]);
  assign MultLoop_acc_1910_nl = nl_MultLoop_acc_1910_nl[8:0];
  assign MultLoop_1103_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1033:1012])) * $signed((weights_rsci_idat[8823:8816])));
  assign MultLoop_1104_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1055:1034])) * $signed((weights_rsci_idat[8831:8824])));
  assign MultLoop_1101_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[989:968])) * $signed((weights_rsci_idat[8807:8800])));
  assign MultLoop_1102_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1011:990])) * $signed((weights_rsci_idat[8815:8808])));
  assign MultLoop_1099_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[945:924])) * $signed((weights_rsci_idat[8791:8784])));
  assign MultLoop_1100_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[967:946])) * $signed((weights_rsci_idat[8799:8792])));
  assign MultLoop_1097_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[901:880])) * $signed((weights_rsci_idat[8775:8768])));
  assign MultLoop_1090_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[747:726])) * $signed((weights_rsci_idat[8719:8712])));
  assign MultLoop_1087_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[681:660])) * $signed((weights_rsci_idat[8695:8688])));
  assign MultLoop_1088_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[703:682])) * $signed((weights_rsci_idat[8703:8696])));
  assign MultLoop_1085_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[637:616])) * $signed((weights_rsci_idat[8679:8672])));
  assign MultLoop_1086_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[659:638])) * $signed((weights_rsci_idat[8687:8680])));
  assign MultLoop_1083_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[593:572])) * $signed((weights_rsci_idat[8663:8656])));
  assign MultLoop_1084_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[615:594])) * $signed((weights_rsci_idat[8671:8664])));
  assign MultLoop_1081_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[549:528])) * $signed((weights_rsci_idat[8647:8640])));
  assign MultLoop_1078_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[483:462])) * $signed((weights_rsci_idat[8623:8616])));
  assign MultLoop_1075_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[417:396])) * $signed((weights_rsci_idat[8599:8592])));
  assign MultLoop_1076_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[439:418])) * $signed((weights_rsci_idat[8607:8600])));
  assign MultLoop_1073_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[373:352])) * $signed((weights_rsci_idat[8583:8576])));
  assign MultLoop_1082_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[571:550])) * $signed((weights_rsci_idat[8655:8648])));
  assign MultLoop_1079_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[505:484])) * $signed((weights_rsci_idat[8631:8624])));
  assign MultLoop_1080_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[527:506])) * $signed((weights_rsci_idat[8639:8632])));
  assign MultLoop_1077_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[461:440])) * $signed((weights_rsci_idat[8615:8608])));
  assign MultLoop_1070_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[307:286])) * $signed((weights_rsci_idat[8559:8552])));
  assign MultLoop_1067_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[241:220])) * $signed((weights_rsci_idat[8535:8528])));
  assign MultLoop_1068_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[263:242])) * $signed((weights_rsci_idat[8543:8536])));
  assign MultLoop_1065_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[197:176])) * $signed((weights_rsci_idat[8519:8512])));
  assign MultLoop_1062_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[131:110])) * $signed((weights_rsci_idat[8495:8488])));
  assign MultLoop_1059_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[65:44])) * $signed((weights_rsci_idat[8471:8464])));
  assign MultLoop_1060_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[87:66])) * $signed((weights_rsci_idat[8479:8472])));
  assign MultLoop_1057_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[21:0])) * $signed((weights_rsci_idat[8455:8448])));
  assign MultLoop_1066_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[219:198])) * $signed((weights_rsci_idat[8527:8520])));
  assign MultLoop_1063_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[153:132])) * $signed((weights_rsci_idat[8503:8496])));
  assign MultLoop_1064_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[175:154])) * $signed((weights_rsci_idat[8511:8504])));
  assign MultLoop_1061_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[109:88])) * $signed((weights_rsci_idat[8487:8480])));
  assign MultLoop_1092_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[791:770])) * $signed((weights_rsci_idat[8735:8728])));
  assign MultLoop_1089_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[725:704])) * $signed((weights_rsci_idat[8711:8704])));
  assign nl_res_rsci_d_413_396  = conv_s2s_13_18(readslicef_30_13_17((MultLoop_1074_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1071_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1072_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1069_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1094_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1091_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1098_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1095_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1096_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1093_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18({(MultLoop_acc_1910_nl) , (MultLoop_1058_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[3:0])})
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1103_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1104_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1101_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1102_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1099_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1100_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1097_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1090_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1087_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1088_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1085_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1086_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1083_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1084_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1081_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1078_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1075_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1076_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1073_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1082_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1079_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1080_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1077_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1070_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1067_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1068_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1065_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1062_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1059_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1060_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1057_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1066_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1063_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1064_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1061_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1092_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1089_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)));
  assign MultLoop_66_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[395:374])) * $signed((weights_rsci_idat[527:520])));
  assign MultLoop_63_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[329:308])) * $signed((weights_rsci_idat[503:496])));
  assign MultLoop_64_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[351:330])) * $signed((weights_rsci_idat[511:504])));
  assign MultLoop_61_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[285:264])) * $signed((weights_rsci_idat[487:480])));
  assign MultLoop_86_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[835:814])) * $signed((weights_rsci_idat[687:680])));
  assign MultLoop_83_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[769:748])) * $signed((weights_rsci_idat[663:656])));
  assign MultLoop_90_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[923:902])) * $signed((weights_rsci_idat[719:712])));
  assign MultLoop_87_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[857:836])) * $signed((weights_rsci_idat[695:688])));
  assign MultLoop_88_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[879:858])) * $signed((weights_rsci_idat[703:696])));
  assign MultLoop_85_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[813:792])) * $signed((weights_rsci_idat[679:672])));
  assign nl_MultLoop_acc_1909_nl = (MultLoop_50_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[12:4])
      + conv_s2s_8_9(biases_rsci_idat[15:8]);
  assign MultLoop_acc_1909_nl = nl_MultLoop_acc_1909_nl[8:0];
  assign MultLoop_95_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1033:1012])) * $signed((weights_rsci_idat[759:752])));
  assign MultLoop_96_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1055:1034])) * $signed((weights_rsci_idat[767:760])));
  assign MultLoop_93_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[989:968])) * $signed((weights_rsci_idat[743:736])));
  assign MultLoop_94_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1011:990])) * $signed((weights_rsci_idat[751:744])));
  assign MultLoop_91_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[945:924])) * $signed((weights_rsci_idat[727:720])));
  assign MultLoop_92_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[967:946])) * $signed((weights_rsci_idat[735:728])));
  assign MultLoop_89_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[901:880])) * $signed((weights_rsci_idat[711:704])));
  assign MultLoop_82_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[747:726])) * $signed((weights_rsci_idat[655:648])));
  assign MultLoop_79_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[681:660])) * $signed((weights_rsci_idat[631:624])));
  assign MultLoop_80_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[703:682])) * $signed((weights_rsci_idat[639:632])));
  assign MultLoop_77_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[637:616])) * $signed((weights_rsci_idat[615:608])));
  assign MultLoop_78_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[659:638])) * $signed((weights_rsci_idat[623:616])));
  assign MultLoop_75_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[593:572])) * $signed((weights_rsci_idat[599:592])));
  assign MultLoop_76_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[615:594])) * $signed((weights_rsci_idat[607:600])));
  assign MultLoop_73_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[549:528])) * $signed((weights_rsci_idat[583:576])));
  assign MultLoop_70_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[483:462])) * $signed((weights_rsci_idat[559:552])));
  assign MultLoop_67_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[417:396])) * $signed((weights_rsci_idat[535:528])));
  assign MultLoop_68_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[439:418])) * $signed((weights_rsci_idat[543:536])));
  assign MultLoop_65_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[373:352])) * $signed((weights_rsci_idat[519:512])));
  assign MultLoop_74_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[571:550])) * $signed((weights_rsci_idat[591:584])));
  assign MultLoop_71_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[505:484])) * $signed((weights_rsci_idat[567:560])));
  assign MultLoop_72_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[527:506])) * $signed((weights_rsci_idat[575:568])));
  assign MultLoop_69_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[461:440])) * $signed((weights_rsci_idat[551:544])));
  assign MultLoop_62_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[307:286])) * $signed((weights_rsci_idat[495:488])));
  assign MultLoop_59_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[241:220])) * $signed((weights_rsci_idat[471:464])));
  assign MultLoop_60_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[263:242])) * $signed((weights_rsci_idat[479:472])));
  assign MultLoop_57_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[197:176])) * $signed((weights_rsci_idat[455:448])));
  assign MultLoop_54_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[131:110])) * $signed((weights_rsci_idat[431:424])));
  assign MultLoop_51_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[65:44])) * $signed((weights_rsci_idat[407:400])));
  assign MultLoop_52_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[87:66])) * $signed((weights_rsci_idat[415:408])));
  assign MultLoop_49_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[21:0])) * $signed((weights_rsci_idat[391:384])));
  assign MultLoop_58_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[219:198])) * $signed((weights_rsci_idat[463:456])));
  assign MultLoop_55_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[153:132])) * $signed((weights_rsci_idat[439:432])));
  assign MultLoop_56_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[175:154])) * $signed((weights_rsci_idat[447:440])));
  assign MultLoop_53_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[109:88])) * $signed((weights_rsci_idat[423:416])));
  assign MultLoop_84_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[791:770])) * $signed((weights_rsci_idat[671:664])));
  assign MultLoop_81_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[725:704])) * $signed((weights_rsci_idat[647:640])));
  assign nl_res_rsci_d_35_18  = conv_s2s_13_18(readslicef_30_13_17((MultLoop_66_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_63_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_64_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_61_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_86_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_83_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_90_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_87_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_88_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_85_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18({(MultLoop_acc_1909_nl) , (MultLoop_50_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[3:0])})
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_95_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_96_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_93_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_94_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_91_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_92_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_89_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_82_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_79_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_80_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_77_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_78_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_75_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_76_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_73_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_70_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_67_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_68_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_65_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_74_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_71_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_72_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_69_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_62_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_59_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_60_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_57_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_54_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_51_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_52_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_49_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_58_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_55_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_56_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_53_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_84_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_81_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)));
  assign MultLoop_1026_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[395:374])) * $signed((weights_rsci_idat[8207:8200])));
  assign MultLoop_1023_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[329:308])) * $signed((weights_rsci_idat[8183:8176])));
  assign MultLoop_1024_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[351:330])) * $signed((weights_rsci_idat[8191:8184])));
  assign MultLoop_1021_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[285:264])) * $signed((weights_rsci_idat[8167:8160])));
  assign MultLoop_1046_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[835:814])) * $signed((weights_rsci_idat[8367:8360])));
  assign MultLoop_1043_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[769:748])) * $signed((weights_rsci_idat[8343:8336])));
  assign MultLoop_1050_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[923:902])) * $signed((weights_rsci_idat[8399:8392])));
  assign MultLoop_1047_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[857:836])) * $signed((weights_rsci_idat[8375:8368])));
  assign MultLoop_1048_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[879:858])) * $signed((weights_rsci_idat[8383:8376])));
  assign MultLoop_1045_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[813:792])) * $signed((weights_rsci_idat[8359:8352])));
  assign nl_MultLoop_acc_1908_nl = (MultLoop_1010_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[12:4])
      + conv_s2s_8_9(biases_rsci_idat[175:168]);
  assign MultLoop_acc_1908_nl = nl_MultLoop_acc_1908_nl[8:0];
  assign MultLoop_1055_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1033:1012])) * $signed((weights_rsci_idat[8439:8432])));
  assign MultLoop_1056_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1055:1034])) * $signed((weights_rsci_idat[8447:8440])));
  assign MultLoop_1053_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[989:968])) * $signed((weights_rsci_idat[8423:8416])));
  assign MultLoop_1054_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1011:990])) * $signed((weights_rsci_idat[8431:8424])));
  assign MultLoop_1051_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[945:924])) * $signed((weights_rsci_idat[8407:8400])));
  assign MultLoop_1052_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[967:946])) * $signed((weights_rsci_idat[8415:8408])));
  assign MultLoop_1049_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[901:880])) * $signed((weights_rsci_idat[8391:8384])));
  assign MultLoop_1042_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[747:726])) * $signed((weights_rsci_idat[8335:8328])));
  assign MultLoop_1039_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[681:660])) * $signed((weights_rsci_idat[8311:8304])));
  assign MultLoop_1040_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[703:682])) * $signed((weights_rsci_idat[8319:8312])));
  assign MultLoop_1037_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[637:616])) * $signed((weights_rsci_idat[8295:8288])));
  assign MultLoop_1038_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[659:638])) * $signed((weights_rsci_idat[8303:8296])));
  assign MultLoop_1035_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[593:572])) * $signed((weights_rsci_idat[8279:8272])));
  assign MultLoop_1036_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[615:594])) * $signed((weights_rsci_idat[8287:8280])));
  assign MultLoop_1033_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[549:528])) * $signed((weights_rsci_idat[8263:8256])));
  assign MultLoop_1030_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[483:462])) * $signed((weights_rsci_idat[8239:8232])));
  assign MultLoop_1027_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[417:396])) * $signed((weights_rsci_idat[8215:8208])));
  assign MultLoop_1028_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[439:418])) * $signed((weights_rsci_idat[8223:8216])));
  assign MultLoop_1025_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[373:352])) * $signed((weights_rsci_idat[8199:8192])));
  assign MultLoop_1034_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[571:550])) * $signed((weights_rsci_idat[8271:8264])));
  assign MultLoop_1031_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[505:484])) * $signed((weights_rsci_idat[8247:8240])));
  assign MultLoop_1032_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[527:506])) * $signed((weights_rsci_idat[8255:8248])));
  assign MultLoop_1029_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[461:440])) * $signed((weights_rsci_idat[8231:8224])));
  assign MultLoop_1022_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[307:286])) * $signed((weights_rsci_idat[8175:8168])));
  assign MultLoop_1019_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[241:220])) * $signed((weights_rsci_idat[8151:8144])));
  assign MultLoop_1020_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[263:242])) * $signed((weights_rsci_idat[8159:8152])));
  assign MultLoop_1017_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[197:176])) * $signed((weights_rsci_idat[8135:8128])));
  assign MultLoop_1014_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[131:110])) * $signed((weights_rsci_idat[8111:8104])));
  assign MultLoop_1011_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[65:44])) * $signed((weights_rsci_idat[8087:8080])));
  assign MultLoop_1012_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[87:66])) * $signed((weights_rsci_idat[8095:8088])));
  assign MultLoop_1009_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[21:0])) * $signed((weights_rsci_idat[8071:8064])));
  assign MultLoop_1018_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[219:198])) * $signed((weights_rsci_idat[8143:8136])));
  assign MultLoop_1015_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[153:132])) * $signed((weights_rsci_idat[8119:8112])));
  assign MultLoop_1016_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[175:154])) * $signed((weights_rsci_idat[8127:8120])));
  assign MultLoop_1013_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[109:88])) * $signed((weights_rsci_idat[8103:8096])));
  assign MultLoop_1044_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[791:770])) * $signed((weights_rsci_idat[8351:8344])));
  assign MultLoop_1041_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[725:704])) * $signed((weights_rsci_idat[8327:8320])));
  assign nl_res_rsci_d_395_378  = conv_s2s_13_18(readslicef_30_13_17((MultLoop_1026_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1023_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1024_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1021_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1046_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1043_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1050_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1047_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1048_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1045_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18({(MultLoop_acc_1908_nl) , (MultLoop_1010_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[3:0])})
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1055_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1056_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1053_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1054_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1051_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1052_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1049_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1042_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1039_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1040_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1037_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1038_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1035_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1036_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1033_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1030_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1027_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1028_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1025_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1034_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1031_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1032_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1029_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1022_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1019_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1020_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1017_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1014_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1011_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1012_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1009_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1018_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1015_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1016_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1013_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1044_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1041_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)));
  assign MultLoop_114_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[395:374])) * $signed((weights_rsci_idat[911:904])));
  assign MultLoop_111_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[329:308])) * $signed((weights_rsci_idat[887:880])));
  assign MultLoop_112_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[351:330])) * $signed((weights_rsci_idat[895:888])));
  assign MultLoop_109_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[285:264])) * $signed((weights_rsci_idat[871:864])));
  assign MultLoop_134_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[835:814])) * $signed((weights_rsci_idat[1071:1064])));
  assign MultLoop_131_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[769:748])) * $signed((weights_rsci_idat[1047:1040])));
  assign MultLoop_138_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[923:902])) * $signed((weights_rsci_idat[1103:1096])));
  assign MultLoop_135_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[857:836])) * $signed((weights_rsci_idat[1079:1072])));
  assign MultLoop_136_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[879:858])) * $signed((weights_rsci_idat[1087:1080])));
  assign MultLoop_133_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[813:792])) * $signed((weights_rsci_idat[1063:1056])));
  assign nl_MultLoop_acc_1907_nl = (MultLoop_98_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[12:4])
      + conv_s2s_8_9(biases_rsci_idat[23:16]);
  assign MultLoop_acc_1907_nl = nl_MultLoop_acc_1907_nl[8:0];
  assign MultLoop_143_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1033:1012])) * $signed((weights_rsci_idat[1143:1136])));
  assign MultLoop_144_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1055:1034])) * $signed((weights_rsci_idat[1151:1144])));
  assign MultLoop_141_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[989:968])) * $signed((weights_rsci_idat[1127:1120])));
  assign MultLoop_142_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1011:990])) * $signed((weights_rsci_idat[1135:1128])));
  assign MultLoop_139_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[945:924])) * $signed((weights_rsci_idat[1111:1104])));
  assign MultLoop_140_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[967:946])) * $signed((weights_rsci_idat[1119:1112])));
  assign MultLoop_137_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[901:880])) * $signed((weights_rsci_idat[1095:1088])));
  assign MultLoop_130_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[747:726])) * $signed((weights_rsci_idat[1039:1032])));
  assign MultLoop_127_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[681:660])) * $signed((weights_rsci_idat[1015:1008])));
  assign MultLoop_128_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[703:682])) * $signed((weights_rsci_idat[1023:1016])));
  assign MultLoop_125_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[637:616])) * $signed((weights_rsci_idat[999:992])));
  assign MultLoop_126_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[659:638])) * $signed((weights_rsci_idat[1007:1000])));
  assign MultLoop_123_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[593:572])) * $signed((weights_rsci_idat[983:976])));
  assign MultLoop_124_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[615:594])) * $signed((weights_rsci_idat[991:984])));
  assign MultLoop_121_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[549:528])) * $signed((weights_rsci_idat[967:960])));
  assign MultLoop_118_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[483:462])) * $signed((weights_rsci_idat[943:936])));
  assign MultLoop_115_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[417:396])) * $signed((weights_rsci_idat[919:912])));
  assign MultLoop_116_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[439:418])) * $signed((weights_rsci_idat[927:920])));
  assign MultLoop_113_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[373:352])) * $signed((weights_rsci_idat[903:896])));
  assign MultLoop_122_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[571:550])) * $signed((weights_rsci_idat[975:968])));
  assign MultLoop_119_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[505:484])) * $signed((weights_rsci_idat[951:944])));
  assign MultLoop_120_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[527:506])) * $signed((weights_rsci_idat[959:952])));
  assign MultLoop_117_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[461:440])) * $signed((weights_rsci_idat[935:928])));
  assign MultLoop_110_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[307:286])) * $signed((weights_rsci_idat[879:872])));
  assign MultLoop_107_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[241:220])) * $signed((weights_rsci_idat[855:848])));
  assign MultLoop_108_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[263:242])) * $signed((weights_rsci_idat[863:856])));
  assign MultLoop_105_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[197:176])) * $signed((weights_rsci_idat[839:832])));
  assign MultLoop_102_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[131:110])) * $signed((weights_rsci_idat[815:808])));
  assign MultLoop_99_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[65:44])) * $signed((weights_rsci_idat[791:784])));
  assign MultLoop_100_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[87:66])) * $signed((weights_rsci_idat[799:792])));
  assign MultLoop_97_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[21:0])) * $signed((weights_rsci_idat[775:768])));
  assign MultLoop_106_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[219:198])) * $signed((weights_rsci_idat[847:840])));
  assign MultLoop_103_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[153:132])) * $signed((weights_rsci_idat[823:816])));
  assign MultLoop_104_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[175:154])) * $signed((weights_rsci_idat[831:824])));
  assign MultLoop_101_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[109:88])) * $signed((weights_rsci_idat[807:800])));
  assign MultLoop_132_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[791:770])) * $signed((weights_rsci_idat[1055:1048])));
  assign MultLoop_129_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[725:704])) * $signed((weights_rsci_idat[1031:1024])));
  assign nl_res_rsci_d_53_36  = conv_s2s_13_18(readslicef_30_13_17((MultLoop_114_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_111_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_112_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_109_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_134_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_131_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_138_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_135_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_136_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_133_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18({(MultLoop_acc_1907_nl) , (MultLoop_98_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[3:0])})
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_143_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_144_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_141_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_142_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_139_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_140_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_137_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_130_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_127_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_128_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_125_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_126_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_123_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_124_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_121_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_118_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_115_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_116_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_113_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_122_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_119_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_120_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_117_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_110_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_107_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_108_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_105_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_102_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_99_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_100_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_97_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_106_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_103_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_104_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_101_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_132_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_129_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)));
  assign MultLoop_978_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[395:374])) * $signed((weights_rsci_idat[7823:7816])));
  assign MultLoop_975_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[329:308])) * $signed((weights_rsci_idat[7799:7792])));
  assign MultLoop_976_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[351:330])) * $signed((weights_rsci_idat[7807:7800])));
  assign MultLoop_973_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[285:264])) * $signed((weights_rsci_idat[7783:7776])));
  assign MultLoop_998_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[835:814])) * $signed((weights_rsci_idat[7983:7976])));
  assign MultLoop_995_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[769:748])) * $signed((weights_rsci_idat[7959:7952])));
  assign MultLoop_1002_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[923:902])) * $signed((weights_rsci_idat[8015:8008])));
  assign MultLoop_999_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[857:836])) * $signed((weights_rsci_idat[7991:7984])));
  assign MultLoop_1000_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[879:858])) * $signed((weights_rsci_idat[7999:7992])));
  assign MultLoop_997_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[813:792])) * $signed((weights_rsci_idat[7975:7968])));
  assign nl_MultLoop_acc_1906_nl = (MultLoop_962_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[12:4])
      + conv_s2s_8_9(biases_rsci_idat[167:160]);
  assign MultLoop_acc_1906_nl = nl_MultLoop_acc_1906_nl[8:0];
  assign MultLoop_1007_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1033:1012])) * $signed((weights_rsci_idat[8055:8048])));
  assign MultLoop_1008_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1055:1034])) * $signed((weights_rsci_idat[8063:8056])));
  assign MultLoop_1005_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[989:968])) * $signed((weights_rsci_idat[8039:8032])));
  assign MultLoop_1006_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1011:990])) * $signed((weights_rsci_idat[8047:8040])));
  assign MultLoop_1003_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[945:924])) * $signed((weights_rsci_idat[8023:8016])));
  assign MultLoop_1004_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[967:946])) * $signed((weights_rsci_idat[8031:8024])));
  assign MultLoop_1001_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[901:880])) * $signed((weights_rsci_idat[8007:8000])));
  assign MultLoop_994_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[747:726])) * $signed((weights_rsci_idat[7951:7944])));
  assign MultLoop_991_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[681:660])) * $signed((weights_rsci_idat[7927:7920])));
  assign MultLoop_992_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[703:682])) * $signed((weights_rsci_idat[7935:7928])));
  assign MultLoop_989_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[637:616])) * $signed((weights_rsci_idat[7911:7904])));
  assign MultLoop_990_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[659:638])) * $signed((weights_rsci_idat[7919:7912])));
  assign MultLoop_987_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[593:572])) * $signed((weights_rsci_idat[7895:7888])));
  assign MultLoop_988_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[615:594])) * $signed((weights_rsci_idat[7903:7896])));
  assign MultLoop_985_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[549:528])) * $signed((weights_rsci_idat[7879:7872])));
  assign MultLoop_982_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[483:462])) * $signed((weights_rsci_idat[7855:7848])));
  assign MultLoop_979_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[417:396])) * $signed((weights_rsci_idat[7831:7824])));
  assign MultLoop_980_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[439:418])) * $signed((weights_rsci_idat[7839:7832])));
  assign MultLoop_977_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[373:352])) * $signed((weights_rsci_idat[7815:7808])));
  assign MultLoop_986_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[571:550])) * $signed((weights_rsci_idat[7887:7880])));
  assign MultLoop_983_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[505:484])) * $signed((weights_rsci_idat[7863:7856])));
  assign MultLoop_984_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[527:506])) * $signed((weights_rsci_idat[7871:7864])));
  assign MultLoop_981_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[461:440])) * $signed((weights_rsci_idat[7847:7840])));
  assign MultLoop_974_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[307:286])) * $signed((weights_rsci_idat[7791:7784])));
  assign MultLoop_971_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[241:220])) * $signed((weights_rsci_idat[7767:7760])));
  assign MultLoop_972_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[263:242])) * $signed((weights_rsci_idat[7775:7768])));
  assign MultLoop_969_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[197:176])) * $signed((weights_rsci_idat[7751:7744])));
  assign MultLoop_966_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[131:110])) * $signed((weights_rsci_idat[7727:7720])));
  assign MultLoop_963_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[65:44])) * $signed((weights_rsci_idat[7703:7696])));
  assign MultLoop_964_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[87:66])) * $signed((weights_rsci_idat[7711:7704])));
  assign MultLoop_961_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[21:0])) * $signed((weights_rsci_idat[7687:7680])));
  assign MultLoop_970_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[219:198])) * $signed((weights_rsci_idat[7759:7752])));
  assign MultLoop_967_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[153:132])) * $signed((weights_rsci_idat[7735:7728])));
  assign MultLoop_968_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[175:154])) * $signed((weights_rsci_idat[7743:7736])));
  assign MultLoop_965_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[109:88])) * $signed((weights_rsci_idat[7719:7712])));
  assign MultLoop_996_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[791:770])) * $signed((weights_rsci_idat[7967:7960])));
  assign MultLoop_993_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[725:704])) * $signed((weights_rsci_idat[7943:7936])));
  assign nl_res_rsci_d_377_360  = conv_s2s_13_18(readslicef_30_13_17((MultLoop_978_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_975_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_976_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_973_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_998_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_995_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1002_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_999_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1000_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_997_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18({(MultLoop_acc_1906_nl) , (MultLoop_962_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[3:0])})
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1007_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1008_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1005_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1006_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1003_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1004_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_1001_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_994_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_991_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_992_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_989_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_990_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_987_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_988_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_985_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_982_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_979_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_980_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_977_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_986_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_983_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_984_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_981_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_974_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_971_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_972_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_969_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_966_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_963_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_964_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_961_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_970_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_967_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_968_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_965_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_996_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_993_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)));
  assign MultLoop_162_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[395:374])) * $signed((weights_rsci_idat[1295:1288])));
  assign MultLoop_159_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[329:308])) * $signed((weights_rsci_idat[1271:1264])));
  assign MultLoop_160_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[351:330])) * $signed((weights_rsci_idat[1279:1272])));
  assign MultLoop_157_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[285:264])) * $signed((weights_rsci_idat[1255:1248])));
  assign MultLoop_182_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[835:814])) * $signed((weights_rsci_idat[1455:1448])));
  assign MultLoop_179_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[769:748])) * $signed((weights_rsci_idat[1431:1424])));
  assign MultLoop_186_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[923:902])) * $signed((weights_rsci_idat[1487:1480])));
  assign MultLoop_183_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[857:836])) * $signed((weights_rsci_idat[1463:1456])));
  assign MultLoop_184_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[879:858])) * $signed((weights_rsci_idat[1471:1464])));
  assign MultLoop_181_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[813:792])) * $signed((weights_rsci_idat[1447:1440])));
  assign nl_MultLoop_acc_1905_nl = (MultLoop_146_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[12:4])
      + conv_s2s_8_9(biases_rsci_idat[31:24]);
  assign MultLoop_acc_1905_nl = nl_MultLoop_acc_1905_nl[8:0];
  assign MultLoop_191_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1033:1012])) * $signed((weights_rsci_idat[1527:1520])));
  assign MultLoop_192_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1055:1034])) * $signed((weights_rsci_idat[1535:1528])));
  assign MultLoop_189_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[989:968])) * $signed((weights_rsci_idat[1511:1504])));
  assign MultLoop_190_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1011:990])) * $signed((weights_rsci_idat[1519:1512])));
  assign MultLoop_187_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[945:924])) * $signed((weights_rsci_idat[1495:1488])));
  assign MultLoop_188_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[967:946])) * $signed((weights_rsci_idat[1503:1496])));
  assign MultLoop_185_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[901:880])) * $signed((weights_rsci_idat[1479:1472])));
  assign MultLoop_178_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[747:726])) * $signed((weights_rsci_idat[1423:1416])));
  assign MultLoop_175_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[681:660])) * $signed((weights_rsci_idat[1399:1392])));
  assign MultLoop_176_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[703:682])) * $signed((weights_rsci_idat[1407:1400])));
  assign MultLoop_173_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[637:616])) * $signed((weights_rsci_idat[1383:1376])));
  assign MultLoop_174_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[659:638])) * $signed((weights_rsci_idat[1391:1384])));
  assign MultLoop_171_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[593:572])) * $signed((weights_rsci_idat[1367:1360])));
  assign MultLoop_172_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[615:594])) * $signed((weights_rsci_idat[1375:1368])));
  assign MultLoop_169_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[549:528])) * $signed((weights_rsci_idat[1351:1344])));
  assign MultLoop_166_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[483:462])) * $signed((weights_rsci_idat[1327:1320])));
  assign MultLoop_163_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[417:396])) * $signed((weights_rsci_idat[1303:1296])));
  assign MultLoop_164_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[439:418])) * $signed((weights_rsci_idat[1311:1304])));
  assign MultLoop_161_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[373:352])) * $signed((weights_rsci_idat[1287:1280])));
  assign MultLoop_170_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[571:550])) * $signed((weights_rsci_idat[1359:1352])));
  assign MultLoop_167_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[505:484])) * $signed((weights_rsci_idat[1335:1328])));
  assign MultLoop_168_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[527:506])) * $signed((weights_rsci_idat[1343:1336])));
  assign MultLoop_165_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[461:440])) * $signed((weights_rsci_idat[1319:1312])));
  assign MultLoop_158_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[307:286])) * $signed((weights_rsci_idat[1263:1256])));
  assign MultLoop_155_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[241:220])) * $signed((weights_rsci_idat[1239:1232])));
  assign MultLoop_156_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[263:242])) * $signed((weights_rsci_idat[1247:1240])));
  assign MultLoop_153_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[197:176])) * $signed((weights_rsci_idat[1223:1216])));
  assign MultLoop_150_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[131:110])) * $signed((weights_rsci_idat[1199:1192])));
  assign MultLoop_147_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[65:44])) * $signed((weights_rsci_idat[1175:1168])));
  assign MultLoop_148_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[87:66])) * $signed((weights_rsci_idat[1183:1176])));
  assign MultLoop_145_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[21:0])) * $signed((weights_rsci_idat[1159:1152])));
  assign MultLoop_154_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[219:198])) * $signed((weights_rsci_idat[1231:1224])));
  assign MultLoop_151_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[153:132])) * $signed((weights_rsci_idat[1207:1200])));
  assign MultLoop_152_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[175:154])) * $signed((weights_rsci_idat[1215:1208])));
  assign MultLoop_149_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[109:88])) * $signed((weights_rsci_idat[1191:1184])));
  assign MultLoop_180_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[791:770])) * $signed((weights_rsci_idat[1439:1432])));
  assign MultLoop_177_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[725:704])) * $signed((weights_rsci_idat[1415:1408])));
  assign nl_res_rsci_d_71_54  = conv_s2s_13_18(readslicef_30_13_17((MultLoop_162_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_159_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_160_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_157_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_182_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_179_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_186_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_183_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_184_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_181_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18({(MultLoop_acc_1905_nl) , (MultLoop_146_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[3:0])})
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_191_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_192_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_189_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_190_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_187_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_188_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_185_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_178_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_175_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_176_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_173_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_174_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_171_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_172_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_169_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_166_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_163_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_164_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_161_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_170_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_167_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_168_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_165_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_158_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_155_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_156_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_153_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_150_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_147_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_148_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_145_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_154_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_151_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_152_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_149_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_180_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_177_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)));
  assign MultLoop_930_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[395:374])) * $signed((weights_rsci_idat[7439:7432])));
  assign MultLoop_927_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[329:308])) * $signed((weights_rsci_idat[7415:7408])));
  assign MultLoop_928_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[351:330])) * $signed((weights_rsci_idat[7423:7416])));
  assign MultLoop_925_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[285:264])) * $signed((weights_rsci_idat[7399:7392])));
  assign MultLoop_950_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[835:814])) * $signed((weights_rsci_idat[7599:7592])));
  assign MultLoop_947_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[769:748])) * $signed((weights_rsci_idat[7575:7568])));
  assign MultLoop_954_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[923:902])) * $signed((weights_rsci_idat[7631:7624])));
  assign MultLoop_951_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[857:836])) * $signed((weights_rsci_idat[7607:7600])));
  assign MultLoop_952_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[879:858])) * $signed((weights_rsci_idat[7615:7608])));
  assign MultLoop_949_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[813:792])) * $signed((weights_rsci_idat[7591:7584])));
  assign nl_MultLoop_acc_1904_nl = (MultLoop_914_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[12:4])
      + conv_s2s_8_9(biases_rsci_idat[159:152]);
  assign MultLoop_acc_1904_nl = nl_MultLoop_acc_1904_nl[8:0];
  assign MultLoop_959_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1033:1012])) * $signed((weights_rsci_idat[7671:7664])));
  assign MultLoop_960_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1055:1034])) * $signed((weights_rsci_idat[7679:7672])));
  assign MultLoop_957_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[989:968])) * $signed((weights_rsci_idat[7655:7648])));
  assign MultLoop_958_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1011:990])) * $signed((weights_rsci_idat[7663:7656])));
  assign MultLoop_955_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[945:924])) * $signed((weights_rsci_idat[7639:7632])));
  assign MultLoop_956_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[967:946])) * $signed((weights_rsci_idat[7647:7640])));
  assign MultLoop_953_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[901:880])) * $signed((weights_rsci_idat[7623:7616])));
  assign MultLoop_946_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[747:726])) * $signed((weights_rsci_idat[7567:7560])));
  assign MultLoop_943_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[681:660])) * $signed((weights_rsci_idat[7543:7536])));
  assign MultLoop_944_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[703:682])) * $signed((weights_rsci_idat[7551:7544])));
  assign MultLoop_941_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[637:616])) * $signed((weights_rsci_idat[7527:7520])));
  assign MultLoop_942_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[659:638])) * $signed((weights_rsci_idat[7535:7528])));
  assign MultLoop_939_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[593:572])) * $signed((weights_rsci_idat[7511:7504])));
  assign MultLoop_940_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[615:594])) * $signed((weights_rsci_idat[7519:7512])));
  assign MultLoop_937_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[549:528])) * $signed((weights_rsci_idat[7495:7488])));
  assign MultLoop_934_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[483:462])) * $signed((weights_rsci_idat[7471:7464])));
  assign MultLoop_931_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[417:396])) * $signed((weights_rsci_idat[7447:7440])));
  assign MultLoop_932_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[439:418])) * $signed((weights_rsci_idat[7455:7448])));
  assign MultLoop_929_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[373:352])) * $signed((weights_rsci_idat[7431:7424])));
  assign MultLoop_938_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[571:550])) * $signed((weights_rsci_idat[7503:7496])));
  assign MultLoop_935_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[505:484])) * $signed((weights_rsci_idat[7479:7472])));
  assign MultLoop_936_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[527:506])) * $signed((weights_rsci_idat[7487:7480])));
  assign MultLoop_933_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[461:440])) * $signed((weights_rsci_idat[7463:7456])));
  assign MultLoop_926_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[307:286])) * $signed((weights_rsci_idat[7407:7400])));
  assign MultLoop_923_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[241:220])) * $signed((weights_rsci_idat[7383:7376])));
  assign MultLoop_924_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[263:242])) * $signed((weights_rsci_idat[7391:7384])));
  assign MultLoop_921_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[197:176])) * $signed((weights_rsci_idat[7367:7360])));
  assign MultLoop_918_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[131:110])) * $signed((weights_rsci_idat[7343:7336])));
  assign MultLoop_915_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[65:44])) * $signed((weights_rsci_idat[7319:7312])));
  assign MultLoop_916_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[87:66])) * $signed((weights_rsci_idat[7327:7320])));
  assign MultLoop_913_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[21:0])) * $signed((weights_rsci_idat[7303:7296])));
  assign MultLoop_922_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[219:198])) * $signed((weights_rsci_idat[7375:7368])));
  assign MultLoop_919_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[153:132])) * $signed((weights_rsci_idat[7351:7344])));
  assign MultLoop_920_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[175:154])) * $signed((weights_rsci_idat[7359:7352])));
  assign MultLoop_917_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[109:88])) * $signed((weights_rsci_idat[7335:7328])));
  assign MultLoop_948_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[791:770])) * $signed((weights_rsci_idat[7583:7576])));
  assign MultLoop_945_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[725:704])) * $signed((weights_rsci_idat[7559:7552])));
  assign nl_res_rsci_d_359_342  = conv_s2s_13_18(readslicef_30_13_17((MultLoop_930_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_927_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_928_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_925_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_950_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_947_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_954_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_951_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_952_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_949_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18({(MultLoop_acc_1904_nl) , (MultLoop_914_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[3:0])})
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_959_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_960_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_957_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_958_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_955_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_956_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_953_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_946_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_943_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_944_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_941_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_942_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_939_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_940_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_937_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_934_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_931_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_932_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_929_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_938_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_935_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_936_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_933_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_926_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_923_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_924_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_921_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_918_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_915_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_916_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_913_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_922_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_919_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_920_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_917_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_948_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_945_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)));
  assign MultLoop_210_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[395:374])) * $signed((weights_rsci_idat[1679:1672])));
  assign MultLoop_207_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[329:308])) * $signed((weights_rsci_idat[1655:1648])));
  assign MultLoop_208_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[351:330])) * $signed((weights_rsci_idat[1663:1656])));
  assign MultLoop_205_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[285:264])) * $signed((weights_rsci_idat[1639:1632])));
  assign MultLoop_230_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[835:814])) * $signed((weights_rsci_idat[1839:1832])));
  assign MultLoop_227_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[769:748])) * $signed((weights_rsci_idat[1815:1808])));
  assign MultLoop_234_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[923:902])) * $signed((weights_rsci_idat[1871:1864])));
  assign MultLoop_231_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[857:836])) * $signed((weights_rsci_idat[1847:1840])));
  assign MultLoop_232_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[879:858])) * $signed((weights_rsci_idat[1855:1848])));
  assign MultLoop_229_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[813:792])) * $signed((weights_rsci_idat[1831:1824])));
  assign nl_MultLoop_acc_1903_nl = (MultLoop_194_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[12:4])
      + conv_s2s_8_9(biases_rsci_idat[39:32]);
  assign MultLoop_acc_1903_nl = nl_MultLoop_acc_1903_nl[8:0];
  assign MultLoop_239_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1033:1012])) * $signed((weights_rsci_idat[1911:1904])));
  assign MultLoop_240_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1055:1034])) * $signed((weights_rsci_idat[1919:1912])));
  assign MultLoop_237_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[989:968])) * $signed((weights_rsci_idat[1895:1888])));
  assign MultLoop_238_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1011:990])) * $signed((weights_rsci_idat[1903:1896])));
  assign MultLoop_235_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[945:924])) * $signed((weights_rsci_idat[1879:1872])));
  assign MultLoop_236_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[967:946])) * $signed((weights_rsci_idat[1887:1880])));
  assign MultLoop_233_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[901:880])) * $signed((weights_rsci_idat[1863:1856])));
  assign MultLoop_226_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[747:726])) * $signed((weights_rsci_idat[1807:1800])));
  assign MultLoop_223_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[681:660])) * $signed((weights_rsci_idat[1783:1776])));
  assign MultLoop_224_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[703:682])) * $signed((weights_rsci_idat[1791:1784])));
  assign MultLoop_221_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[637:616])) * $signed((weights_rsci_idat[1767:1760])));
  assign MultLoop_222_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[659:638])) * $signed((weights_rsci_idat[1775:1768])));
  assign MultLoop_219_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[593:572])) * $signed((weights_rsci_idat[1751:1744])));
  assign MultLoop_220_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[615:594])) * $signed((weights_rsci_idat[1759:1752])));
  assign MultLoop_217_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[549:528])) * $signed((weights_rsci_idat[1735:1728])));
  assign MultLoop_214_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[483:462])) * $signed((weights_rsci_idat[1711:1704])));
  assign MultLoop_211_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[417:396])) * $signed((weights_rsci_idat[1687:1680])));
  assign MultLoop_212_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[439:418])) * $signed((weights_rsci_idat[1695:1688])));
  assign MultLoop_209_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[373:352])) * $signed((weights_rsci_idat[1671:1664])));
  assign MultLoop_218_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[571:550])) * $signed((weights_rsci_idat[1743:1736])));
  assign MultLoop_215_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[505:484])) * $signed((weights_rsci_idat[1719:1712])));
  assign MultLoop_216_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[527:506])) * $signed((weights_rsci_idat[1727:1720])));
  assign MultLoop_213_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[461:440])) * $signed((weights_rsci_idat[1703:1696])));
  assign MultLoop_206_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[307:286])) * $signed((weights_rsci_idat[1647:1640])));
  assign MultLoop_203_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[241:220])) * $signed((weights_rsci_idat[1623:1616])));
  assign MultLoop_204_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[263:242])) * $signed((weights_rsci_idat[1631:1624])));
  assign MultLoop_201_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[197:176])) * $signed((weights_rsci_idat[1607:1600])));
  assign MultLoop_198_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[131:110])) * $signed((weights_rsci_idat[1583:1576])));
  assign MultLoop_195_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[65:44])) * $signed((weights_rsci_idat[1559:1552])));
  assign MultLoop_196_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[87:66])) * $signed((weights_rsci_idat[1567:1560])));
  assign MultLoop_193_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[21:0])) * $signed((weights_rsci_idat[1543:1536])));
  assign MultLoop_202_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[219:198])) * $signed((weights_rsci_idat[1615:1608])));
  assign MultLoop_199_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[153:132])) * $signed((weights_rsci_idat[1591:1584])));
  assign MultLoop_200_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[175:154])) * $signed((weights_rsci_idat[1599:1592])));
  assign MultLoop_197_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[109:88])) * $signed((weights_rsci_idat[1575:1568])));
  assign MultLoop_228_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[791:770])) * $signed((weights_rsci_idat[1823:1816])));
  assign MultLoop_225_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[725:704])) * $signed((weights_rsci_idat[1799:1792])));
  assign nl_res_rsci_d_89_72  = conv_s2s_13_18(readslicef_30_13_17((MultLoop_210_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_207_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_208_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_205_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_230_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_227_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_234_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_231_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_232_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_229_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18({(MultLoop_acc_1903_nl) , (MultLoop_194_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[3:0])})
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_239_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_240_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_237_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_238_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_235_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_236_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_233_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_226_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_223_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_224_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_221_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_222_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_219_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_220_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_217_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_214_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_211_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_212_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_209_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_218_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_215_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_216_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_213_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_206_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_203_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_204_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_201_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_198_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_195_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_196_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_193_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_202_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_199_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_200_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_197_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_228_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_225_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)));
  assign MultLoop_882_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[395:374])) * $signed((weights_rsci_idat[7055:7048])));
  assign MultLoop_879_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[329:308])) * $signed((weights_rsci_idat[7031:7024])));
  assign MultLoop_880_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[351:330])) * $signed((weights_rsci_idat[7039:7032])));
  assign MultLoop_877_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[285:264])) * $signed((weights_rsci_idat[7015:7008])));
  assign MultLoop_902_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[835:814])) * $signed((weights_rsci_idat[7215:7208])));
  assign MultLoop_899_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[769:748])) * $signed((weights_rsci_idat[7191:7184])));
  assign MultLoop_906_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[923:902])) * $signed((weights_rsci_idat[7247:7240])));
  assign MultLoop_903_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[857:836])) * $signed((weights_rsci_idat[7223:7216])));
  assign MultLoop_904_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[879:858])) * $signed((weights_rsci_idat[7231:7224])));
  assign MultLoop_901_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[813:792])) * $signed((weights_rsci_idat[7207:7200])));
  assign nl_MultLoop_acc_1902_nl = (MultLoop_866_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[12:4])
      + conv_s2s_8_9(biases_rsci_idat[151:144]);
  assign MultLoop_acc_1902_nl = nl_MultLoop_acc_1902_nl[8:0];
  assign MultLoop_911_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1033:1012])) * $signed((weights_rsci_idat[7287:7280])));
  assign MultLoop_912_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1055:1034])) * $signed((weights_rsci_idat[7295:7288])));
  assign MultLoop_909_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[989:968])) * $signed((weights_rsci_idat[7271:7264])));
  assign MultLoop_910_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1011:990])) * $signed((weights_rsci_idat[7279:7272])));
  assign MultLoop_907_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[945:924])) * $signed((weights_rsci_idat[7255:7248])));
  assign MultLoop_908_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[967:946])) * $signed((weights_rsci_idat[7263:7256])));
  assign MultLoop_905_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[901:880])) * $signed((weights_rsci_idat[7239:7232])));
  assign MultLoop_898_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[747:726])) * $signed((weights_rsci_idat[7183:7176])));
  assign MultLoop_895_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[681:660])) * $signed((weights_rsci_idat[7159:7152])));
  assign MultLoop_896_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[703:682])) * $signed((weights_rsci_idat[7167:7160])));
  assign MultLoop_893_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[637:616])) * $signed((weights_rsci_idat[7143:7136])));
  assign MultLoop_894_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[659:638])) * $signed((weights_rsci_idat[7151:7144])));
  assign MultLoop_891_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[593:572])) * $signed((weights_rsci_idat[7127:7120])));
  assign MultLoop_892_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[615:594])) * $signed((weights_rsci_idat[7135:7128])));
  assign MultLoop_889_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[549:528])) * $signed((weights_rsci_idat[7111:7104])));
  assign MultLoop_886_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[483:462])) * $signed((weights_rsci_idat[7087:7080])));
  assign MultLoop_883_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[417:396])) * $signed((weights_rsci_idat[7063:7056])));
  assign MultLoop_884_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[439:418])) * $signed((weights_rsci_idat[7071:7064])));
  assign MultLoop_881_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[373:352])) * $signed((weights_rsci_idat[7047:7040])));
  assign MultLoop_890_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[571:550])) * $signed((weights_rsci_idat[7119:7112])));
  assign MultLoop_887_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[505:484])) * $signed((weights_rsci_idat[7095:7088])));
  assign MultLoop_888_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[527:506])) * $signed((weights_rsci_idat[7103:7096])));
  assign MultLoop_885_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[461:440])) * $signed((weights_rsci_idat[7079:7072])));
  assign MultLoop_878_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[307:286])) * $signed((weights_rsci_idat[7023:7016])));
  assign MultLoop_875_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[241:220])) * $signed((weights_rsci_idat[6999:6992])));
  assign MultLoop_876_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[263:242])) * $signed((weights_rsci_idat[7007:7000])));
  assign MultLoop_873_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[197:176])) * $signed((weights_rsci_idat[6983:6976])));
  assign MultLoop_870_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[131:110])) * $signed((weights_rsci_idat[6959:6952])));
  assign MultLoop_867_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[65:44])) * $signed((weights_rsci_idat[6935:6928])));
  assign MultLoop_868_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[87:66])) * $signed((weights_rsci_idat[6943:6936])));
  assign MultLoop_865_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[21:0])) * $signed((weights_rsci_idat[6919:6912])));
  assign MultLoop_874_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[219:198])) * $signed((weights_rsci_idat[6991:6984])));
  assign MultLoop_871_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[153:132])) * $signed((weights_rsci_idat[6967:6960])));
  assign MultLoop_872_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[175:154])) * $signed((weights_rsci_idat[6975:6968])));
  assign MultLoop_869_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[109:88])) * $signed((weights_rsci_idat[6951:6944])));
  assign MultLoop_900_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[791:770])) * $signed((weights_rsci_idat[7199:7192])));
  assign MultLoop_897_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[725:704])) * $signed((weights_rsci_idat[7175:7168])));
  assign nl_res_rsci_d_341_324  = conv_s2s_13_18(readslicef_30_13_17((MultLoop_882_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_879_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_880_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_877_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_902_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_899_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_906_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_903_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_904_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_901_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18({(MultLoop_acc_1902_nl) , (MultLoop_866_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[3:0])})
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_911_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_912_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_909_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_910_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_907_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_908_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_905_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_898_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_895_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_896_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_893_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_894_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_891_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_892_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_889_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_886_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_883_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_884_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_881_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_890_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_887_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_888_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_885_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_878_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_875_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_876_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_873_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_870_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_867_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_868_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_865_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_874_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_871_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_872_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_869_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_900_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_897_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)));
  assign MultLoop_258_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[395:374])) * $signed((weights_rsci_idat[2063:2056])));
  assign MultLoop_255_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[329:308])) * $signed((weights_rsci_idat[2039:2032])));
  assign MultLoop_256_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[351:330])) * $signed((weights_rsci_idat[2047:2040])));
  assign MultLoop_253_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[285:264])) * $signed((weights_rsci_idat[2023:2016])));
  assign MultLoop_278_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[835:814])) * $signed((weights_rsci_idat[2223:2216])));
  assign MultLoop_275_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[769:748])) * $signed((weights_rsci_idat[2199:2192])));
  assign MultLoop_282_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[923:902])) * $signed((weights_rsci_idat[2255:2248])));
  assign MultLoop_279_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[857:836])) * $signed((weights_rsci_idat[2231:2224])));
  assign MultLoop_280_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[879:858])) * $signed((weights_rsci_idat[2239:2232])));
  assign MultLoop_277_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[813:792])) * $signed((weights_rsci_idat[2215:2208])));
  assign nl_MultLoop_acc_1901_nl = (MultLoop_242_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[12:4])
      + conv_s2s_8_9(biases_rsci_idat[47:40]);
  assign MultLoop_acc_1901_nl = nl_MultLoop_acc_1901_nl[8:0];
  assign MultLoop_287_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1033:1012])) * $signed((weights_rsci_idat[2295:2288])));
  assign MultLoop_288_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1055:1034])) * $signed((weights_rsci_idat[2303:2296])));
  assign MultLoop_285_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[989:968])) * $signed((weights_rsci_idat[2279:2272])));
  assign MultLoop_286_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1011:990])) * $signed((weights_rsci_idat[2287:2280])));
  assign MultLoop_283_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[945:924])) * $signed((weights_rsci_idat[2263:2256])));
  assign MultLoop_284_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[967:946])) * $signed((weights_rsci_idat[2271:2264])));
  assign MultLoop_281_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[901:880])) * $signed((weights_rsci_idat[2247:2240])));
  assign MultLoop_274_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[747:726])) * $signed((weights_rsci_idat[2191:2184])));
  assign MultLoop_271_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[681:660])) * $signed((weights_rsci_idat[2167:2160])));
  assign MultLoop_272_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[703:682])) * $signed((weights_rsci_idat[2175:2168])));
  assign MultLoop_269_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[637:616])) * $signed((weights_rsci_idat[2151:2144])));
  assign MultLoop_270_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[659:638])) * $signed((weights_rsci_idat[2159:2152])));
  assign MultLoop_267_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[593:572])) * $signed((weights_rsci_idat[2135:2128])));
  assign MultLoop_268_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[615:594])) * $signed((weights_rsci_idat[2143:2136])));
  assign MultLoop_265_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[549:528])) * $signed((weights_rsci_idat[2119:2112])));
  assign MultLoop_262_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[483:462])) * $signed((weights_rsci_idat[2095:2088])));
  assign MultLoop_259_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[417:396])) * $signed((weights_rsci_idat[2071:2064])));
  assign MultLoop_260_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[439:418])) * $signed((weights_rsci_idat[2079:2072])));
  assign MultLoop_257_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[373:352])) * $signed((weights_rsci_idat[2055:2048])));
  assign MultLoop_266_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[571:550])) * $signed((weights_rsci_idat[2127:2120])));
  assign MultLoop_263_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[505:484])) * $signed((weights_rsci_idat[2103:2096])));
  assign MultLoop_264_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[527:506])) * $signed((weights_rsci_idat[2111:2104])));
  assign MultLoop_261_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[461:440])) * $signed((weights_rsci_idat[2087:2080])));
  assign MultLoop_254_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[307:286])) * $signed((weights_rsci_idat[2031:2024])));
  assign MultLoop_251_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[241:220])) * $signed((weights_rsci_idat[2007:2000])));
  assign MultLoop_252_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[263:242])) * $signed((weights_rsci_idat[2015:2008])));
  assign MultLoop_249_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[197:176])) * $signed((weights_rsci_idat[1991:1984])));
  assign MultLoop_246_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[131:110])) * $signed((weights_rsci_idat[1967:1960])));
  assign MultLoop_243_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[65:44])) * $signed((weights_rsci_idat[1943:1936])));
  assign MultLoop_244_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[87:66])) * $signed((weights_rsci_idat[1951:1944])));
  assign MultLoop_241_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[21:0])) * $signed((weights_rsci_idat[1927:1920])));
  assign MultLoop_250_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[219:198])) * $signed((weights_rsci_idat[1999:1992])));
  assign MultLoop_247_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[153:132])) * $signed((weights_rsci_idat[1975:1968])));
  assign MultLoop_248_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[175:154])) * $signed((weights_rsci_idat[1983:1976])));
  assign MultLoop_245_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[109:88])) * $signed((weights_rsci_idat[1959:1952])));
  assign MultLoop_276_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[791:770])) * $signed((weights_rsci_idat[2207:2200])));
  assign MultLoop_273_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[725:704])) * $signed((weights_rsci_idat[2183:2176])));
  assign nl_res_rsci_d_107_90  = conv_s2s_13_18(readslicef_30_13_17((MultLoop_258_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_255_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_256_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_253_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_278_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_275_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_282_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_279_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_280_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_277_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18({(MultLoop_acc_1901_nl) , (MultLoop_242_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[3:0])})
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_287_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_288_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_285_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_286_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_283_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_284_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_281_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_274_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_271_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_272_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_269_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_270_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_267_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_268_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_265_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_262_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_259_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_260_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_257_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_266_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_263_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_264_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_261_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_254_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_251_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_252_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_249_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_246_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_243_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_244_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_241_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_250_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_247_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_248_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_245_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_276_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_273_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)));
  assign MultLoop_834_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[395:374])) * $signed((weights_rsci_idat[6671:6664])));
  assign MultLoop_831_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[329:308])) * $signed((weights_rsci_idat[6647:6640])));
  assign MultLoop_832_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[351:330])) * $signed((weights_rsci_idat[6655:6648])));
  assign MultLoop_829_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[285:264])) * $signed((weights_rsci_idat[6631:6624])));
  assign MultLoop_854_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[835:814])) * $signed((weights_rsci_idat[6831:6824])));
  assign MultLoop_851_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[769:748])) * $signed((weights_rsci_idat[6807:6800])));
  assign MultLoop_858_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[923:902])) * $signed((weights_rsci_idat[6863:6856])));
  assign MultLoop_855_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[857:836])) * $signed((weights_rsci_idat[6839:6832])));
  assign MultLoop_856_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[879:858])) * $signed((weights_rsci_idat[6847:6840])));
  assign MultLoop_853_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[813:792])) * $signed((weights_rsci_idat[6823:6816])));
  assign nl_MultLoop_acc_1900_nl = (MultLoop_818_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[12:4])
      + conv_s2s_8_9(biases_rsci_idat[143:136]);
  assign MultLoop_acc_1900_nl = nl_MultLoop_acc_1900_nl[8:0];
  assign MultLoop_863_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1033:1012])) * $signed((weights_rsci_idat[6903:6896])));
  assign MultLoop_864_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1055:1034])) * $signed((weights_rsci_idat[6911:6904])));
  assign MultLoop_861_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[989:968])) * $signed((weights_rsci_idat[6887:6880])));
  assign MultLoop_862_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1011:990])) * $signed((weights_rsci_idat[6895:6888])));
  assign MultLoop_859_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[945:924])) * $signed((weights_rsci_idat[6871:6864])));
  assign MultLoop_860_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[967:946])) * $signed((weights_rsci_idat[6879:6872])));
  assign MultLoop_857_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[901:880])) * $signed((weights_rsci_idat[6855:6848])));
  assign MultLoop_850_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[747:726])) * $signed((weights_rsci_idat[6799:6792])));
  assign MultLoop_847_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[681:660])) * $signed((weights_rsci_idat[6775:6768])));
  assign MultLoop_848_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[703:682])) * $signed((weights_rsci_idat[6783:6776])));
  assign MultLoop_845_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[637:616])) * $signed((weights_rsci_idat[6759:6752])));
  assign MultLoop_846_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[659:638])) * $signed((weights_rsci_idat[6767:6760])));
  assign MultLoop_843_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[593:572])) * $signed((weights_rsci_idat[6743:6736])));
  assign MultLoop_844_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[615:594])) * $signed((weights_rsci_idat[6751:6744])));
  assign MultLoop_841_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[549:528])) * $signed((weights_rsci_idat[6727:6720])));
  assign MultLoop_838_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[483:462])) * $signed((weights_rsci_idat[6703:6696])));
  assign MultLoop_835_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[417:396])) * $signed((weights_rsci_idat[6679:6672])));
  assign MultLoop_836_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[439:418])) * $signed((weights_rsci_idat[6687:6680])));
  assign MultLoop_833_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[373:352])) * $signed((weights_rsci_idat[6663:6656])));
  assign MultLoop_842_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[571:550])) * $signed((weights_rsci_idat[6735:6728])));
  assign MultLoop_839_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[505:484])) * $signed((weights_rsci_idat[6711:6704])));
  assign MultLoop_840_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[527:506])) * $signed((weights_rsci_idat[6719:6712])));
  assign MultLoop_837_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[461:440])) * $signed((weights_rsci_idat[6695:6688])));
  assign MultLoop_830_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[307:286])) * $signed((weights_rsci_idat[6639:6632])));
  assign MultLoop_827_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[241:220])) * $signed((weights_rsci_idat[6615:6608])));
  assign MultLoop_828_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[263:242])) * $signed((weights_rsci_idat[6623:6616])));
  assign MultLoop_825_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[197:176])) * $signed((weights_rsci_idat[6599:6592])));
  assign MultLoop_822_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[131:110])) * $signed((weights_rsci_idat[6575:6568])));
  assign MultLoop_819_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[65:44])) * $signed((weights_rsci_idat[6551:6544])));
  assign MultLoop_820_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[87:66])) * $signed((weights_rsci_idat[6559:6552])));
  assign MultLoop_817_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[21:0])) * $signed((weights_rsci_idat[6535:6528])));
  assign MultLoop_826_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[219:198])) * $signed((weights_rsci_idat[6607:6600])));
  assign MultLoop_823_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[153:132])) * $signed((weights_rsci_idat[6583:6576])));
  assign MultLoop_824_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[175:154])) * $signed((weights_rsci_idat[6591:6584])));
  assign MultLoop_821_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[109:88])) * $signed((weights_rsci_idat[6567:6560])));
  assign MultLoop_852_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[791:770])) * $signed((weights_rsci_idat[6815:6808])));
  assign MultLoop_849_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[725:704])) * $signed((weights_rsci_idat[6791:6784])));
  assign nl_res_rsci_d_323_306  = conv_s2s_13_18(readslicef_30_13_17((MultLoop_834_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_831_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_832_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_829_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_854_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_851_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_858_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_855_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_856_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_853_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18({(MultLoop_acc_1900_nl) , (MultLoop_818_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[3:0])})
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_863_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_864_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_861_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_862_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_859_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_860_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_857_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_850_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_847_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_848_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_845_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_846_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_843_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_844_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_841_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_838_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_835_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_836_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_833_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_842_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_839_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_840_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_837_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_830_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_827_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_828_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_825_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_822_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_819_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_820_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_817_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_826_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_823_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_824_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_821_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_852_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_849_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)));
  assign MultLoop_306_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[395:374])) * $signed((weights_rsci_idat[2447:2440])));
  assign MultLoop_303_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[329:308])) * $signed((weights_rsci_idat[2423:2416])));
  assign MultLoop_304_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[351:330])) * $signed((weights_rsci_idat[2431:2424])));
  assign MultLoop_301_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[285:264])) * $signed((weights_rsci_idat[2407:2400])));
  assign MultLoop_326_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[835:814])) * $signed((weights_rsci_idat[2607:2600])));
  assign MultLoop_323_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[769:748])) * $signed((weights_rsci_idat[2583:2576])));
  assign MultLoop_330_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[923:902])) * $signed((weights_rsci_idat[2639:2632])));
  assign MultLoop_327_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[857:836])) * $signed((weights_rsci_idat[2615:2608])));
  assign MultLoop_328_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[879:858])) * $signed((weights_rsci_idat[2623:2616])));
  assign MultLoop_325_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[813:792])) * $signed((weights_rsci_idat[2599:2592])));
  assign nl_MultLoop_acc_1899_nl = (MultLoop_290_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[12:4])
      + conv_s2s_8_9(biases_rsci_idat[55:48]);
  assign MultLoop_acc_1899_nl = nl_MultLoop_acc_1899_nl[8:0];
  assign MultLoop_335_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1033:1012])) * $signed((weights_rsci_idat[2679:2672])));
  assign MultLoop_336_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1055:1034])) * $signed((weights_rsci_idat[2687:2680])));
  assign MultLoop_333_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[989:968])) * $signed((weights_rsci_idat[2663:2656])));
  assign MultLoop_334_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1011:990])) * $signed((weights_rsci_idat[2671:2664])));
  assign MultLoop_331_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[945:924])) * $signed((weights_rsci_idat[2647:2640])));
  assign MultLoop_332_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[967:946])) * $signed((weights_rsci_idat[2655:2648])));
  assign MultLoop_329_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[901:880])) * $signed((weights_rsci_idat[2631:2624])));
  assign MultLoop_322_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[747:726])) * $signed((weights_rsci_idat[2575:2568])));
  assign MultLoop_319_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[681:660])) * $signed((weights_rsci_idat[2551:2544])));
  assign MultLoop_320_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[703:682])) * $signed((weights_rsci_idat[2559:2552])));
  assign MultLoop_317_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[637:616])) * $signed((weights_rsci_idat[2535:2528])));
  assign MultLoop_318_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[659:638])) * $signed((weights_rsci_idat[2543:2536])));
  assign MultLoop_315_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[593:572])) * $signed((weights_rsci_idat[2519:2512])));
  assign MultLoop_316_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[615:594])) * $signed((weights_rsci_idat[2527:2520])));
  assign MultLoop_313_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[549:528])) * $signed((weights_rsci_idat[2503:2496])));
  assign MultLoop_310_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[483:462])) * $signed((weights_rsci_idat[2479:2472])));
  assign MultLoop_307_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[417:396])) * $signed((weights_rsci_idat[2455:2448])));
  assign MultLoop_308_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[439:418])) * $signed((weights_rsci_idat[2463:2456])));
  assign MultLoop_305_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[373:352])) * $signed((weights_rsci_idat[2439:2432])));
  assign MultLoop_314_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[571:550])) * $signed((weights_rsci_idat[2511:2504])));
  assign MultLoop_311_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[505:484])) * $signed((weights_rsci_idat[2487:2480])));
  assign MultLoop_312_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[527:506])) * $signed((weights_rsci_idat[2495:2488])));
  assign MultLoop_309_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[461:440])) * $signed((weights_rsci_idat[2471:2464])));
  assign MultLoop_302_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[307:286])) * $signed((weights_rsci_idat[2415:2408])));
  assign MultLoop_299_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[241:220])) * $signed((weights_rsci_idat[2391:2384])));
  assign MultLoop_300_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[263:242])) * $signed((weights_rsci_idat[2399:2392])));
  assign MultLoop_297_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[197:176])) * $signed((weights_rsci_idat[2375:2368])));
  assign MultLoop_294_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[131:110])) * $signed((weights_rsci_idat[2351:2344])));
  assign MultLoop_291_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[65:44])) * $signed((weights_rsci_idat[2327:2320])));
  assign MultLoop_292_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[87:66])) * $signed((weights_rsci_idat[2335:2328])));
  assign MultLoop_289_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[21:0])) * $signed((weights_rsci_idat[2311:2304])));
  assign MultLoop_298_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[219:198])) * $signed((weights_rsci_idat[2383:2376])));
  assign MultLoop_295_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[153:132])) * $signed((weights_rsci_idat[2359:2352])));
  assign MultLoop_296_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[175:154])) * $signed((weights_rsci_idat[2367:2360])));
  assign MultLoop_293_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[109:88])) * $signed((weights_rsci_idat[2343:2336])));
  assign MultLoop_324_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[791:770])) * $signed((weights_rsci_idat[2591:2584])));
  assign MultLoop_321_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[725:704])) * $signed((weights_rsci_idat[2567:2560])));
  assign nl_res_rsci_d_125_108  = conv_s2s_13_18(readslicef_30_13_17((MultLoop_306_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_303_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_304_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_301_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_326_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_323_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_330_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_327_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_328_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_325_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18({(MultLoop_acc_1899_nl) , (MultLoop_290_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[3:0])})
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_335_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_336_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_333_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_334_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_331_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_332_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_329_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_322_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_319_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_320_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_317_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_318_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_315_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_316_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_313_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_310_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_307_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_308_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_305_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_314_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_311_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_312_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_309_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_302_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_299_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_300_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_297_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_294_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_291_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_292_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_289_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_298_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_295_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_296_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_293_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_324_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_321_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)));
  assign MultLoop_786_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[395:374])) * $signed((weights_rsci_idat[6287:6280])));
  assign MultLoop_783_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[329:308])) * $signed((weights_rsci_idat[6263:6256])));
  assign MultLoop_784_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[351:330])) * $signed((weights_rsci_idat[6271:6264])));
  assign MultLoop_781_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[285:264])) * $signed((weights_rsci_idat[6247:6240])));
  assign MultLoop_806_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[835:814])) * $signed((weights_rsci_idat[6447:6440])));
  assign MultLoop_803_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[769:748])) * $signed((weights_rsci_idat[6423:6416])));
  assign MultLoop_810_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[923:902])) * $signed((weights_rsci_idat[6479:6472])));
  assign MultLoop_807_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[857:836])) * $signed((weights_rsci_idat[6455:6448])));
  assign MultLoop_808_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[879:858])) * $signed((weights_rsci_idat[6463:6456])));
  assign MultLoop_805_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[813:792])) * $signed((weights_rsci_idat[6439:6432])));
  assign nl_MultLoop_acc_1898_nl = (MultLoop_770_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[12:4])
      + conv_s2s_8_9(biases_rsci_idat[135:128]);
  assign MultLoop_acc_1898_nl = nl_MultLoop_acc_1898_nl[8:0];
  assign MultLoop_815_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1033:1012])) * $signed((weights_rsci_idat[6519:6512])));
  assign MultLoop_816_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1055:1034])) * $signed((weights_rsci_idat[6527:6520])));
  assign MultLoop_813_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[989:968])) * $signed((weights_rsci_idat[6503:6496])));
  assign MultLoop_814_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1011:990])) * $signed((weights_rsci_idat[6511:6504])));
  assign MultLoop_811_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[945:924])) * $signed((weights_rsci_idat[6487:6480])));
  assign MultLoop_812_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[967:946])) * $signed((weights_rsci_idat[6495:6488])));
  assign MultLoop_809_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[901:880])) * $signed((weights_rsci_idat[6471:6464])));
  assign MultLoop_802_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[747:726])) * $signed((weights_rsci_idat[6415:6408])));
  assign MultLoop_799_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[681:660])) * $signed((weights_rsci_idat[6391:6384])));
  assign MultLoop_800_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[703:682])) * $signed((weights_rsci_idat[6399:6392])));
  assign MultLoop_797_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[637:616])) * $signed((weights_rsci_idat[6375:6368])));
  assign MultLoop_798_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[659:638])) * $signed((weights_rsci_idat[6383:6376])));
  assign MultLoop_795_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[593:572])) * $signed((weights_rsci_idat[6359:6352])));
  assign MultLoop_796_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[615:594])) * $signed((weights_rsci_idat[6367:6360])));
  assign MultLoop_793_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[549:528])) * $signed((weights_rsci_idat[6343:6336])));
  assign MultLoop_790_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[483:462])) * $signed((weights_rsci_idat[6319:6312])));
  assign MultLoop_787_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[417:396])) * $signed((weights_rsci_idat[6295:6288])));
  assign MultLoop_788_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[439:418])) * $signed((weights_rsci_idat[6303:6296])));
  assign MultLoop_785_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[373:352])) * $signed((weights_rsci_idat[6279:6272])));
  assign MultLoop_794_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[571:550])) * $signed((weights_rsci_idat[6351:6344])));
  assign MultLoop_791_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[505:484])) * $signed((weights_rsci_idat[6327:6320])));
  assign MultLoop_792_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[527:506])) * $signed((weights_rsci_idat[6335:6328])));
  assign MultLoop_789_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[461:440])) * $signed((weights_rsci_idat[6311:6304])));
  assign MultLoop_782_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[307:286])) * $signed((weights_rsci_idat[6255:6248])));
  assign MultLoop_779_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[241:220])) * $signed((weights_rsci_idat[6231:6224])));
  assign MultLoop_780_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[263:242])) * $signed((weights_rsci_idat[6239:6232])));
  assign MultLoop_777_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[197:176])) * $signed((weights_rsci_idat[6215:6208])));
  assign MultLoop_774_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[131:110])) * $signed((weights_rsci_idat[6191:6184])));
  assign MultLoop_771_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[65:44])) * $signed((weights_rsci_idat[6167:6160])));
  assign MultLoop_772_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[87:66])) * $signed((weights_rsci_idat[6175:6168])));
  assign MultLoop_769_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[21:0])) * $signed((weights_rsci_idat[6151:6144])));
  assign MultLoop_778_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[219:198])) * $signed((weights_rsci_idat[6223:6216])));
  assign MultLoop_775_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[153:132])) * $signed((weights_rsci_idat[6199:6192])));
  assign MultLoop_776_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[175:154])) * $signed((weights_rsci_idat[6207:6200])));
  assign MultLoop_773_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[109:88])) * $signed((weights_rsci_idat[6183:6176])));
  assign MultLoop_804_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[791:770])) * $signed((weights_rsci_idat[6431:6424])));
  assign MultLoop_801_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[725:704])) * $signed((weights_rsci_idat[6407:6400])));
  assign nl_res_rsci_d_305_288  = conv_s2s_13_18(readslicef_30_13_17((MultLoop_786_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_783_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_784_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_781_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_806_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_803_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_810_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_807_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_808_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_805_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18({(MultLoop_acc_1898_nl) , (MultLoop_770_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[3:0])})
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_815_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_816_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_813_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_814_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_811_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_812_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_809_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_802_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_799_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_800_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_797_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_798_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_795_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_796_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_793_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_790_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_787_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_788_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_785_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_794_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_791_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_792_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_789_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_782_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_779_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_780_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_777_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_774_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_771_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_772_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_769_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_778_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_775_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_776_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_773_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_804_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_801_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)));
  assign MultLoop_354_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[395:374])) * $signed((weights_rsci_idat[2831:2824])));
  assign MultLoop_351_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[329:308])) * $signed((weights_rsci_idat[2807:2800])));
  assign MultLoop_352_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[351:330])) * $signed((weights_rsci_idat[2815:2808])));
  assign MultLoop_349_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[285:264])) * $signed((weights_rsci_idat[2791:2784])));
  assign MultLoop_374_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[835:814])) * $signed((weights_rsci_idat[2991:2984])));
  assign MultLoop_371_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[769:748])) * $signed((weights_rsci_idat[2967:2960])));
  assign MultLoop_378_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[923:902])) * $signed((weights_rsci_idat[3023:3016])));
  assign MultLoop_375_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[857:836])) * $signed((weights_rsci_idat[2999:2992])));
  assign MultLoop_376_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[879:858])) * $signed((weights_rsci_idat[3007:3000])));
  assign MultLoop_373_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[813:792])) * $signed((weights_rsci_idat[2983:2976])));
  assign nl_MultLoop_acc_1897_nl = (MultLoop_338_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[12:4])
      + conv_s2s_8_9(biases_rsci_idat[63:56]);
  assign MultLoop_acc_1897_nl = nl_MultLoop_acc_1897_nl[8:0];
  assign MultLoop_383_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1033:1012])) * $signed((weights_rsci_idat[3063:3056])));
  assign MultLoop_384_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1055:1034])) * $signed((weights_rsci_idat[3071:3064])));
  assign MultLoop_381_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[989:968])) * $signed((weights_rsci_idat[3047:3040])));
  assign MultLoop_382_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1011:990])) * $signed((weights_rsci_idat[3055:3048])));
  assign MultLoop_379_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[945:924])) * $signed((weights_rsci_idat[3031:3024])));
  assign MultLoop_380_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[967:946])) * $signed((weights_rsci_idat[3039:3032])));
  assign MultLoop_377_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[901:880])) * $signed((weights_rsci_idat[3015:3008])));
  assign MultLoop_370_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[747:726])) * $signed((weights_rsci_idat[2959:2952])));
  assign MultLoop_367_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[681:660])) * $signed((weights_rsci_idat[2935:2928])));
  assign MultLoop_368_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[703:682])) * $signed((weights_rsci_idat[2943:2936])));
  assign MultLoop_365_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[637:616])) * $signed((weights_rsci_idat[2919:2912])));
  assign MultLoop_366_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[659:638])) * $signed((weights_rsci_idat[2927:2920])));
  assign MultLoop_363_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[593:572])) * $signed((weights_rsci_idat[2903:2896])));
  assign MultLoop_364_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[615:594])) * $signed((weights_rsci_idat[2911:2904])));
  assign MultLoop_361_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[549:528])) * $signed((weights_rsci_idat[2887:2880])));
  assign MultLoop_358_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[483:462])) * $signed((weights_rsci_idat[2863:2856])));
  assign MultLoop_355_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[417:396])) * $signed((weights_rsci_idat[2839:2832])));
  assign MultLoop_356_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[439:418])) * $signed((weights_rsci_idat[2847:2840])));
  assign MultLoop_353_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[373:352])) * $signed((weights_rsci_idat[2823:2816])));
  assign MultLoop_362_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[571:550])) * $signed((weights_rsci_idat[2895:2888])));
  assign MultLoop_359_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[505:484])) * $signed((weights_rsci_idat[2871:2864])));
  assign MultLoop_360_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[527:506])) * $signed((weights_rsci_idat[2879:2872])));
  assign MultLoop_357_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[461:440])) * $signed((weights_rsci_idat[2855:2848])));
  assign MultLoop_350_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[307:286])) * $signed((weights_rsci_idat[2799:2792])));
  assign MultLoop_347_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[241:220])) * $signed((weights_rsci_idat[2775:2768])));
  assign MultLoop_348_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[263:242])) * $signed((weights_rsci_idat[2783:2776])));
  assign MultLoop_345_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[197:176])) * $signed((weights_rsci_idat[2759:2752])));
  assign MultLoop_342_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[131:110])) * $signed((weights_rsci_idat[2735:2728])));
  assign MultLoop_339_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[65:44])) * $signed((weights_rsci_idat[2711:2704])));
  assign MultLoop_340_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[87:66])) * $signed((weights_rsci_idat[2719:2712])));
  assign MultLoop_337_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[21:0])) * $signed((weights_rsci_idat[2695:2688])));
  assign MultLoop_346_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[219:198])) * $signed((weights_rsci_idat[2767:2760])));
  assign MultLoop_343_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[153:132])) * $signed((weights_rsci_idat[2743:2736])));
  assign MultLoop_344_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[175:154])) * $signed((weights_rsci_idat[2751:2744])));
  assign MultLoop_341_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[109:88])) * $signed((weights_rsci_idat[2727:2720])));
  assign MultLoop_372_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[791:770])) * $signed((weights_rsci_idat[2975:2968])));
  assign MultLoop_369_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[725:704])) * $signed((weights_rsci_idat[2951:2944])));
  assign nl_res_rsci_d_143_126  = conv_s2s_13_18(readslicef_30_13_17((MultLoop_354_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_351_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_352_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_349_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_374_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_371_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_378_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_375_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_376_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_373_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18({(MultLoop_acc_1897_nl) , (MultLoop_338_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[3:0])})
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_383_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_384_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_381_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_382_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_379_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_380_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_377_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_370_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_367_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_368_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_365_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_366_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_363_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_364_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_361_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_358_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_355_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_356_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_353_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_362_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_359_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_360_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_357_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_350_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_347_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_348_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_345_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_342_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_339_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_340_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_337_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_346_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_343_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_344_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_341_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_372_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_369_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)));
  assign MultLoop_738_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[395:374])) * $signed((weights_rsci_idat[5903:5896])));
  assign MultLoop_735_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[329:308])) * $signed((weights_rsci_idat[5879:5872])));
  assign MultLoop_736_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[351:330])) * $signed((weights_rsci_idat[5887:5880])));
  assign MultLoop_733_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[285:264])) * $signed((weights_rsci_idat[5863:5856])));
  assign MultLoop_758_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[835:814])) * $signed((weights_rsci_idat[6063:6056])));
  assign MultLoop_755_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[769:748])) * $signed((weights_rsci_idat[6039:6032])));
  assign MultLoop_762_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[923:902])) * $signed((weights_rsci_idat[6095:6088])));
  assign MultLoop_759_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[857:836])) * $signed((weights_rsci_idat[6071:6064])));
  assign MultLoop_760_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[879:858])) * $signed((weights_rsci_idat[6079:6072])));
  assign MultLoop_757_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[813:792])) * $signed((weights_rsci_idat[6055:6048])));
  assign nl_MultLoop_acc_1896_nl = (MultLoop_722_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[12:4])
      + conv_s2s_8_9(biases_rsci_idat[127:120]);
  assign MultLoop_acc_1896_nl = nl_MultLoop_acc_1896_nl[8:0];
  assign MultLoop_767_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1033:1012])) * $signed((weights_rsci_idat[6135:6128])));
  assign MultLoop_768_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1055:1034])) * $signed((weights_rsci_idat[6143:6136])));
  assign MultLoop_765_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[989:968])) * $signed((weights_rsci_idat[6119:6112])));
  assign MultLoop_766_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1011:990])) * $signed((weights_rsci_idat[6127:6120])));
  assign MultLoop_763_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[945:924])) * $signed((weights_rsci_idat[6103:6096])));
  assign MultLoop_764_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[967:946])) * $signed((weights_rsci_idat[6111:6104])));
  assign MultLoop_761_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[901:880])) * $signed((weights_rsci_idat[6087:6080])));
  assign MultLoop_754_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[747:726])) * $signed((weights_rsci_idat[6031:6024])));
  assign MultLoop_751_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[681:660])) * $signed((weights_rsci_idat[6007:6000])));
  assign MultLoop_752_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[703:682])) * $signed((weights_rsci_idat[6015:6008])));
  assign MultLoop_749_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[637:616])) * $signed((weights_rsci_idat[5991:5984])));
  assign MultLoop_750_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[659:638])) * $signed((weights_rsci_idat[5999:5992])));
  assign MultLoop_747_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[593:572])) * $signed((weights_rsci_idat[5975:5968])));
  assign MultLoop_748_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[615:594])) * $signed((weights_rsci_idat[5983:5976])));
  assign MultLoop_745_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[549:528])) * $signed((weights_rsci_idat[5959:5952])));
  assign MultLoop_742_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[483:462])) * $signed((weights_rsci_idat[5935:5928])));
  assign MultLoop_739_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[417:396])) * $signed((weights_rsci_idat[5911:5904])));
  assign MultLoop_740_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[439:418])) * $signed((weights_rsci_idat[5919:5912])));
  assign MultLoop_737_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[373:352])) * $signed((weights_rsci_idat[5895:5888])));
  assign MultLoop_746_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[571:550])) * $signed((weights_rsci_idat[5967:5960])));
  assign MultLoop_743_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[505:484])) * $signed((weights_rsci_idat[5943:5936])));
  assign MultLoop_744_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[527:506])) * $signed((weights_rsci_idat[5951:5944])));
  assign MultLoop_741_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[461:440])) * $signed((weights_rsci_idat[5927:5920])));
  assign MultLoop_734_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[307:286])) * $signed((weights_rsci_idat[5871:5864])));
  assign MultLoop_731_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[241:220])) * $signed((weights_rsci_idat[5847:5840])));
  assign MultLoop_732_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[263:242])) * $signed((weights_rsci_idat[5855:5848])));
  assign MultLoop_729_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[197:176])) * $signed((weights_rsci_idat[5831:5824])));
  assign MultLoop_726_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[131:110])) * $signed((weights_rsci_idat[5807:5800])));
  assign MultLoop_723_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[65:44])) * $signed((weights_rsci_idat[5783:5776])));
  assign MultLoop_724_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[87:66])) * $signed((weights_rsci_idat[5791:5784])));
  assign MultLoop_721_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[21:0])) * $signed((weights_rsci_idat[5767:5760])));
  assign MultLoop_730_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[219:198])) * $signed((weights_rsci_idat[5839:5832])));
  assign MultLoop_727_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[153:132])) * $signed((weights_rsci_idat[5815:5808])));
  assign MultLoop_728_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[175:154])) * $signed((weights_rsci_idat[5823:5816])));
  assign MultLoop_725_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[109:88])) * $signed((weights_rsci_idat[5799:5792])));
  assign MultLoop_756_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[791:770])) * $signed((weights_rsci_idat[6047:6040])));
  assign MultLoop_753_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[725:704])) * $signed((weights_rsci_idat[6023:6016])));
  assign nl_res_rsci_d_287_270  = conv_s2s_13_18(readslicef_30_13_17((MultLoop_738_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_735_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_736_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_733_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_758_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_755_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_762_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_759_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_760_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_757_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18({(MultLoop_acc_1896_nl) , (MultLoop_722_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[3:0])})
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_767_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_768_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_765_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_766_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_763_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_764_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_761_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_754_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_751_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_752_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_749_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_750_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_747_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_748_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_745_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_742_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_739_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_740_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_737_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_746_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_743_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_744_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_741_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_734_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_731_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_732_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_729_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_726_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_723_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_724_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_721_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_730_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_727_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_728_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_725_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_756_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_753_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)));
  assign MultLoop_402_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[395:374])) * $signed((weights_rsci_idat[3215:3208])));
  assign MultLoop_399_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[329:308])) * $signed((weights_rsci_idat[3191:3184])));
  assign MultLoop_400_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[351:330])) * $signed((weights_rsci_idat[3199:3192])));
  assign MultLoop_397_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[285:264])) * $signed((weights_rsci_idat[3175:3168])));
  assign MultLoop_422_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[835:814])) * $signed((weights_rsci_idat[3375:3368])));
  assign MultLoop_419_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[769:748])) * $signed((weights_rsci_idat[3351:3344])));
  assign MultLoop_426_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[923:902])) * $signed((weights_rsci_idat[3407:3400])));
  assign MultLoop_423_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[857:836])) * $signed((weights_rsci_idat[3383:3376])));
  assign MultLoop_424_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[879:858])) * $signed((weights_rsci_idat[3391:3384])));
  assign MultLoop_421_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[813:792])) * $signed((weights_rsci_idat[3367:3360])));
  assign nl_MultLoop_acc_1895_nl = (MultLoop_386_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[12:4])
      + conv_s2s_8_9(biases_rsci_idat[71:64]);
  assign MultLoop_acc_1895_nl = nl_MultLoop_acc_1895_nl[8:0];
  assign MultLoop_431_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1033:1012])) * $signed((weights_rsci_idat[3447:3440])));
  assign MultLoop_432_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1055:1034])) * $signed((weights_rsci_idat[3455:3448])));
  assign MultLoop_429_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[989:968])) * $signed((weights_rsci_idat[3431:3424])));
  assign MultLoop_430_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1011:990])) * $signed((weights_rsci_idat[3439:3432])));
  assign MultLoop_427_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[945:924])) * $signed((weights_rsci_idat[3415:3408])));
  assign MultLoop_428_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[967:946])) * $signed((weights_rsci_idat[3423:3416])));
  assign MultLoop_425_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[901:880])) * $signed((weights_rsci_idat[3399:3392])));
  assign MultLoop_418_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[747:726])) * $signed((weights_rsci_idat[3343:3336])));
  assign MultLoop_415_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[681:660])) * $signed((weights_rsci_idat[3319:3312])));
  assign MultLoop_416_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[703:682])) * $signed((weights_rsci_idat[3327:3320])));
  assign MultLoop_413_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[637:616])) * $signed((weights_rsci_idat[3303:3296])));
  assign MultLoop_414_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[659:638])) * $signed((weights_rsci_idat[3311:3304])));
  assign MultLoop_411_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[593:572])) * $signed((weights_rsci_idat[3287:3280])));
  assign MultLoop_412_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[615:594])) * $signed((weights_rsci_idat[3295:3288])));
  assign MultLoop_409_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[549:528])) * $signed((weights_rsci_idat[3271:3264])));
  assign MultLoop_406_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[483:462])) * $signed((weights_rsci_idat[3247:3240])));
  assign MultLoop_403_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[417:396])) * $signed((weights_rsci_idat[3223:3216])));
  assign MultLoop_404_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[439:418])) * $signed((weights_rsci_idat[3231:3224])));
  assign MultLoop_401_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[373:352])) * $signed((weights_rsci_idat[3207:3200])));
  assign MultLoop_410_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[571:550])) * $signed((weights_rsci_idat[3279:3272])));
  assign MultLoop_407_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[505:484])) * $signed((weights_rsci_idat[3255:3248])));
  assign MultLoop_408_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[527:506])) * $signed((weights_rsci_idat[3263:3256])));
  assign MultLoop_405_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[461:440])) * $signed((weights_rsci_idat[3239:3232])));
  assign MultLoop_398_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[307:286])) * $signed((weights_rsci_idat[3183:3176])));
  assign MultLoop_395_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[241:220])) * $signed((weights_rsci_idat[3159:3152])));
  assign MultLoop_396_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[263:242])) * $signed((weights_rsci_idat[3167:3160])));
  assign MultLoop_393_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[197:176])) * $signed((weights_rsci_idat[3143:3136])));
  assign MultLoop_390_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[131:110])) * $signed((weights_rsci_idat[3119:3112])));
  assign MultLoop_387_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[65:44])) * $signed((weights_rsci_idat[3095:3088])));
  assign MultLoop_388_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[87:66])) * $signed((weights_rsci_idat[3103:3096])));
  assign MultLoop_385_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[21:0])) * $signed((weights_rsci_idat[3079:3072])));
  assign MultLoop_394_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[219:198])) * $signed((weights_rsci_idat[3151:3144])));
  assign MultLoop_391_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[153:132])) * $signed((weights_rsci_idat[3127:3120])));
  assign MultLoop_392_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[175:154])) * $signed((weights_rsci_idat[3135:3128])));
  assign MultLoop_389_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[109:88])) * $signed((weights_rsci_idat[3111:3104])));
  assign MultLoop_420_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[791:770])) * $signed((weights_rsci_idat[3359:3352])));
  assign MultLoop_417_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[725:704])) * $signed((weights_rsci_idat[3335:3328])));
  assign nl_res_rsci_d_161_144  = conv_s2s_13_18(readslicef_30_13_17((MultLoop_402_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_399_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_400_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_397_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_422_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_419_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_426_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_423_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_424_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_421_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18({(MultLoop_acc_1895_nl) , (MultLoop_386_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[3:0])})
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_431_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_432_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_429_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_430_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_427_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_428_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_425_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_418_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_415_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_416_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_413_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_414_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_411_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_412_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_409_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_406_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_403_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_404_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_401_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_410_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_407_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_408_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_405_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_398_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_395_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_396_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_393_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_390_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_387_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_388_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_385_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_394_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_391_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_392_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_389_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_420_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_417_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)));
  assign MultLoop_690_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[395:374])) * $signed((weights_rsci_idat[5519:5512])));
  assign MultLoop_687_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[329:308])) * $signed((weights_rsci_idat[5495:5488])));
  assign MultLoop_688_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[351:330])) * $signed((weights_rsci_idat[5503:5496])));
  assign MultLoop_685_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[285:264])) * $signed((weights_rsci_idat[5479:5472])));
  assign MultLoop_710_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[835:814])) * $signed((weights_rsci_idat[5679:5672])));
  assign MultLoop_707_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[769:748])) * $signed((weights_rsci_idat[5655:5648])));
  assign MultLoop_714_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[923:902])) * $signed((weights_rsci_idat[5711:5704])));
  assign MultLoop_711_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[857:836])) * $signed((weights_rsci_idat[5687:5680])));
  assign MultLoop_712_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[879:858])) * $signed((weights_rsci_idat[5695:5688])));
  assign MultLoop_709_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[813:792])) * $signed((weights_rsci_idat[5671:5664])));
  assign nl_MultLoop_acc_1894_nl = (MultLoop_674_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[12:4])
      + conv_s2s_8_9(biases_rsci_idat[119:112]);
  assign MultLoop_acc_1894_nl = nl_MultLoop_acc_1894_nl[8:0];
  assign MultLoop_719_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1033:1012])) * $signed((weights_rsci_idat[5751:5744])));
  assign MultLoop_720_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1055:1034])) * $signed((weights_rsci_idat[5759:5752])));
  assign MultLoop_717_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[989:968])) * $signed((weights_rsci_idat[5735:5728])));
  assign MultLoop_718_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1011:990])) * $signed((weights_rsci_idat[5743:5736])));
  assign MultLoop_715_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[945:924])) * $signed((weights_rsci_idat[5719:5712])));
  assign MultLoop_716_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[967:946])) * $signed((weights_rsci_idat[5727:5720])));
  assign MultLoop_713_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[901:880])) * $signed((weights_rsci_idat[5703:5696])));
  assign MultLoop_706_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[747:726])) * $signed((weights_rsci_idat[5647:5640])));
  assign MultLoop_703_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[681:660])) * $signed((weights_rsci_idat[5623:5616])));
  assign MultLoop_704_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[703:682])) * $signed((weights_rsci_idat[5631:5624])));
  assign MultLoop_701_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[637:616])) * $signed((weights_rsci_idat[5607:5600])));
  assign MultLoop_702_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[659:638])) * $signed((weights_rsci_idat[5615:5608])));
  assign MultLoop_699_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[593:572])) * $signed((weights_rsci_idat[5591:5584])));
  assign MultLoop_700_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[615:594])) * $signed((weights_rsci_idat[5599:5592])));
  assign MultLoop_697_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[549:528])) * $signed((weights_rsci_idat[5575:5568])));
  assign MultLoop_694_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[483:462])) * $signed((weights_rsci_idat[5551:5544])));
  assign MultLoop_691_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[417:396])) * $signed((weights_rsci_idat[5527:5520])));
  assign MultLoop_692_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[439:418])) * $signed((weights_rsci_idat[5535:5528])));
  assign MultLoop_689_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[373:352])) * $signed((weights_rsci_idat[5511:5504])));
  assign MultLoop_698_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[571:550])) * $signed((weights_rsci_idat[5583:5576])));
  assign MultLoop_695_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[505:484])) * $signed((weights_rsci_idat[5559:5552])));
  assign MultLoop_696_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[527:506])) * $signed((weights_rsci_idat[5567:5560])));
  assign MultLoop_693_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[461:440])) * $signed((weights_rsci_idat[5543:5536])));
  assign MultLoop_686_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[307:286])) * $signed((weights_rsci_idat[5487:5480])));
  assign MultLoop_683_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[241:220])) * $signed((weights_rsci_idat[5463:5456])));
  assign MultLoop_684_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[263:242])) * $signed((weights_rsci_idat[5471:5464])));
  assign MultLoop_681_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[197:176])) * $signed((weights_rsci_idat[5447:5440])));
  assign MultLoop_678_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[131:110])) * $signed((weights_rsci_idat[5423:5416])));
  assign MultLoop_675_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[65:44])) * $signed((weights_rsci_idat[5399:5392])));
  assign MultLoop_676_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[87:66])) * $signed((weights_rsci_idat[5407:5400])));
  assign MultLoop_673_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[21:0])) * $signed((weights_rsci_idat[5383:5376])));
  assign MultLoop_682_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[219:198])) * $signed((weights_rsci_idat[5455:5448])));
  assign MultLoop_679_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[153:132])) * $signed((weights_rsci_idat[5431:5424])));
  assign MultLoop_680_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[175:154])) * $signed((weights_rsci_idat[5439:5432])));
  assign MultLoop_677_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[109:88])) * $signed((weights_rsci_idat[5415:5408])));
  assign MultLoop_708_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[791:770])) * $signed((weights_rsci_idat[5663:5656])));
  assign MultLoop_705_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[725:704])) * $signed((weights_rsci_idat[5639:5632])));
  assign nl_res_rsci_d_269_252  = conv_s2s_13_18(readslicef_30_13_17((MultLoop_690_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_687_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_688_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_685_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_710_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_707_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_714_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_711_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_712_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_709_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18({(MultLoop_acc_1894_nl) , (MultLoop_674_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[3:0])})
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_719_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_720_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_717_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_718_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_715_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_716_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_713_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_706_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_703_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_704_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_701_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_702_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_699_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_700_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_697_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_694_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_691_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_692_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_689_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_698_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_695_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_696_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_693_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_686_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_683_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_684_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_681_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_678_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_675_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_676_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_673_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_682_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_679_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_680_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_677_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_708_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_705_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)));
  assign MultLoop_450_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[395:374])) * $signed((weights_rsci_idat[3599:3592])));
  assign MultLoop_447_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[329:308])) * $signed((weights_rsci_idat[3575:3568])));
  assign MultLoop_448_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[351:330])) * $signed((weights_rsci_idat[3583:3576])));
  assign MultLoop_445_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[285:264])) * $signed((weights_rsci_idat[3559:3552])));
  assign MultLoop_470_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[835:814])) * $signed((weights_rsci_idat[3759:3752])));
  assign MultLoop_467_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[769:748])) * $signed((weights_rsci_idat[3735:3728])));
  assign MultLoop_474_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[923:902])) * $signed((weights_rsci_idat[3791:3784])));
  assign MultLoop_471_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[857:836])) * $signed((weights_rsci_idat[3767:3760])));
  assign MultLoop_472_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[879:858])) * $signed((weights_rsci_idat[3775:3768])));
  assign MultLoop_469_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[813:792])) * $signed((weights_rsci_idat[3751:3744])));
  assign nl_MultLoop_acc_1893_nl = (MultLoop_434_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[12:4])
      + conv_s2s_8_9(biases_rsci_idat[79:72]);
  assign MultLoop_acc_1893_nl = nl_MultLoop_acc_1893_nl[8:0];
  assign MultLoop_479_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1033:1012])) * $signed((weights_rsci_idat[3831:3824])));
  assign MultLoop_480_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1055:1034])) * $signed((weights_rsci_idat[3839:3832])));
  assign MultLoop_477_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[989:968])) * $signed((weights_rsci_idat[3815:3808])));
  assign MultLoop_478_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1011:990])) * $signed((weights_rsci_idat[3823:3816])));
  assign MultLoop_475_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[945:924])) * $signed((weights_rsci_idat[3799:3792])));
  assign MultLoop_476_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[967:946])) * $signed((weights_rsci_idat[3807:3800])));
  assign MultLoop_473_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[901:880])) * $signed((weights_rsci_idat[3783:3776])));
  assign MultLoop_466_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[747:726])) * $signed((weights_rsci_idat[3727:3720])));
  assign MultLoop_463_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[681:660])) * $signed((weights_rsci_idat[3703:3696])));
  assign MultLoop_464_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[703:682])) * $signed((weights_rsci_idat[3711:3704])));
  assign MultLoop_461_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[637:616])) * $signed((weights_rsci_idat[3687:3680])));
  assign MultLoop_462_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[659:638])) * $signed((weights_rsci_idat[3695:3688])));
  assign MultLoop_459_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[593:572])) * $signed((weights_rsci_idat[3671:3664])));
  assign MultLoop_460_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[615:594])) * $signed((weights_rsci_idat[3679:3672])));
  assign MultLoop_457_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[549:528])) * $signed((weights_rsci_idat[3655:3648])));
  assign MultLoop_454_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[483:462])) * $signed((weights_rsci_idat[3631:3624])));
  assign MultLoop_451_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[417:396])) * $signed((weights_rsci_idat[3607:3600])));
  assign MultLoop_452_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[439:418])) * $signed((weights_rsci_idat[3615:3608])));
  assign MultLoop_449_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[373:352])) * $signed((weights_rsci_idat[3591:3584])));
  assign MultLoop_458_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[571:550])) * $signed((weights_rsci_idat[3663:3656])));
  assign MultLoop_455_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[505:484])) * $signed((weights_rsci_idat[3639:3632])));
  assign MultLoop_456_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[527:506])) * $signed((weights_rsci_idat[3647:3640])));
  assign MultLoop_453_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[461:440])) * $signed((weights_rsci_idat[3623:3616])));
  assign MultLoop_446_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[307:286])) * $signed((weights_rsci_idat[3567:3560])));
  assign MultLoop_443_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[241:220])) * $signed((weights_rsci_idat[3543:3536])));
  assign MultLoop_444_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[263:242])) * $signed((weights_rsci_idat[3551:3544])));
  assign MultLoop_441_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[197:176])) * $signed((weights_rsci_idat[3527:3520])));
  assign MultLoop_438_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[131:110])) * $signed((weights_rsci_idat[3503:3496])));
  assign MultLoop_435_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[65:44])) * $signed((weights_rsci_idat[3479:3472])));
  assign MultLoop_436_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[87:66])) * $signed((weights_rsci_idat[3487:3480])));
  assign MultLoop_433_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[21:0])) * $signed((weights_rsci_idat[3463:3456])));
  assign MultLoop_442_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[219:198])) * $signed((weights_rsci_idat[3535:3528])));
  assign MultLoop_439_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[153:132])) * $signed((weights_rsci_idat[3511:3504])));
  assign MultLoop_440_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[175:154])) * $signed((weights_rsci_idat[3519:3512])));
  assign MultLoop_437_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[109:88])) * $signed((weights_rsci_idat[3495:3488])));
  assign MultLoop_468_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[791:770])) * $signed((weights_rsci_idat[3743:3736])));
  assign MultLoop_465_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[725:704])) * $signed((weights_rsci_idat[3719:3712])));
  assign nl_res_rsci_d_179_162  = conv_s2s_13_18(readslicef_30_13_17((MultLoop_450_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_447_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_448_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_445_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_470_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_467_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_474_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_471_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_472_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_469_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18({(MultLoop_acc_1893_nl) , (MultLoop_434_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[3:0])})
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_479_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_480_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_477_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_478_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_475_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_476_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_473_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_466_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_463_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_464_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_461_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_462_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_459_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_460_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_457_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_454_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_451_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_452_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_449_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_458_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_455_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_456_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_453_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_446_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_443_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_444_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_441_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_438_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_435_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_436_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_433_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_442_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_439_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_440_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_437_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_468_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_465_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)));
  assign MultLoop_642_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[395:374])) * $signed((weights_rsci_idat[5135:5128])));
  assign MultLoop_639_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[329:308])) * $signed((weights_rsci_idat[5111:5104])));
  assign MultLoop_640_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[351:330])) * $signed((weights_rsci_idat[5119:5112])));
  assign MultLoop_637_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[285:264])) * $signed((weights_rsci_idat[5095:5088])));
  assign MultLoop_662_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[835:814])) * $signed((weights_rsci_idat[5295:5288])));
  assign MultLoop_659_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[769:748])) * $signed((weights_rsci_idat[5271:5264])));
  assign MultLoop_666_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[923:902])) * $signed((weights_rsci_idat[5327:5320])));
  assign MultLoop_663_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[857:836])) * $signed((weights_rsci_idat[5303:5296])));
  assign MultLoop_664_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[879:858])) * $signed((weights_rsci_idat[5311:5304])));
  assign MultLoop_661_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[813:792])) * $signed((weights_rsci_idat[5287:5280])));
  assign nl_MultLoop_acc_1892_nl = (MultLoop_626_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[12:4])
      + conv_s2s_8_9(biases_rsci_idat[111:104]);
  assign MultLoop_acc_1892_nl = nl_MultLoop_acc_1892_nl[8:0];
  assign MultLoop_671_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1033:1012])) * $signed((weights_rsci_idat[5367:5360])));
  assign MultLoop_672_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1055:1034])) * $signed((weights_rsci_idat[5375:5368])));
  assign MultLoop_669_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[989:968])) * $signed((weights_rsci_idat[5351:5344])));
  assign MultLoop_670_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1011:990])) * $signed((weights_rsci_idat[5359:5352])));
  assign MultLoop_667_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[945:924])) * $signed((weights_rsci_idat[5335:5328])));
  assign MultLoop_668_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[967:946])) * $signed((weights_rsci_idat[5343:5336])));
  assign MultLoop_665_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[901:880])) * $signed((weights_rsci_idat[5319:5312])));
  assign MultLoop_658_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[747:726])) * $signed((weights_rsci_idat[5263:5256])));
  assign MultLoop_655_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[681:660])) * $signed((weights_rsci_idat[5239:5232])));
  assign MultLoop_656_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[703:682])) * $signed((weights_rsci_idat[5247:5240])));
  assign MultLoop_653_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[637:616])) * $signed((weights_rsci_idat[5223:5216])));
  assign MultLoop_654_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[659:638])) * $signed((weights_rsci_idat[5231:5224])));
  assign MultLoop_651_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[593:572])) * $signed((weights_rsci_idat[5207:5200])));
  assign MultLoop_652_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[615:594])) * $signed((weights_rsci_idat[5215:5208])));
  assign MultLoop_649_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[549:528])) * $signed((weights_rsci_idat[5191:5184])));
  assign MultLoop_646_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[483:462])) * $signed((weights_rsci_idat[5167:5160])));
  assign MultLoop_643_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[417:396])) * $signed((weights_rsci_idat[5143:5136])));
  assign MultLoop_644_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[439:418])) * $signed((weights_rsci_idat[5151:5144])));
  assign MultLoop_641_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[373:352])) * $signed((weights_rsci_idat[5127:5120])));
  assign MultLoop_650_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[571:550])) * $signed((weights_rsci_idat[5199:5192])));
  assign MultLoop_647_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[505:484])) * $signed((weights_rsci_idat[5175:5168])));
  assign MultLoop_648_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[527:506])) * $signed((weights_rsci_idat[5183:5176])));
  assign MultLoop_645_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[461:440])) * $signed((weights_rsci_idat[5159:5152])));
  assign MultLoop_638_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[307:286])) * $signed((weights_rsci_idat[5103:5096])));
  assign MultLoop_635_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[241:220])) * $signed((weights_rsci_idat[5079:5072])));
  assign MultLoop_636_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[263:242])) * $signed((weights_rsci_idat[5087:5080])));
  assign MultLoop_633_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[197:176])) * $signed((weights_rsci_idat[5063:5056])));
  assign MultLoop_630_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[131:110])) * $signed((weights_rsci_idat[5039:5032])));
  assign MultLoop_627_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[65:44])) * $signed((weights_rsci_idat[5015:5008])));
  assign MultLoop_628_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[87:66])) * $signed((weights_rsci_idat[5023:5016])));
  assign MultLoop_625_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[21:0])) * $signed((weights_rsci_idat[4999:4992])));
  assign MultLoop_634_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[219:198])) * $signed((weights_rsci_idat[5071:5064])));
  assign MultLoop_631_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[153:132])) * $signed((weights_rsci_idat[5047:5040])));
  assign MultLoop_632_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[175:154])) * $signed((weights_rsci_idat[5055:5048])));
  assign MultLoop_629_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[109:88])) * $signed((weights_rsci_idat[5031:5024])));
  assign MultLoop_660_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[791:770])) * $signed((weights_rsci_idat[5279:5272])));
  assign MultLoop_657_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[725:704])) * $signed((weights_rsci_idat[5255:5248])));
  assign nl_res_rsci_d_251_234  = conv_s2s_13_18(readslicef_30_13_17((MultLoop_642_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_639_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_640_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_637_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_662_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_659_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_666_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_663_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_664_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_661_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18({(MultLoop_acc_1892_nl) , (MultLoop_626_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[3:0])})
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_671_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_672_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_669_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_670_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_667_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_668_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_665_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_658_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_655_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_656_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_653_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_654_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_651_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_652_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_649_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_646_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_643_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_644_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_641_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_650_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_647_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_648_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_645_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_638_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_635_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_636_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_633_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_630_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_627_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_628_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_625_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_634_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_631_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_632_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_629_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_660_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_657_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)));
  assign MultLoop_498_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[395:374])) * $signed((weights_rsci_idat[3983:3976])));
  assign MultLoop_495_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[329:308])) * $signed((weights_rsci_idat[3959:3952])));
  assign MultLoop_496_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[351:330])) * $signed((weights_rsci_idat[3967:3960])));
  assign MultLoop_493_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[285:264])) * $signed((weights_rsci_idat[3943:3936])));
  assign MultLoop_518_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[835:814])) * $signed((weights_rsci_idat[4143:4136])));
  assign MultLoop_515_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[769:748])) * $signed((weights_rsci_idat[4119:4112])));
  assign MultLoop_522_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[923:902])) * $signed((weights_rsci_idat[4175:4168])));
  assign MultLoop_519_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[857:836])) * $signed((weights_rsci_idat[4151:4144])));
  assign MultLoop_520_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[879:858])) * $signed((weights_rsci_idat[4159:4152])));
  assign MultLoop_517_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[813:792])) * $signed((weights_rsci_idat[4135:4128])));
  assign nl_MultLoop_acc_1891_nl = (MultLoop_482_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[12:4])
      + conv_s2s_8_9(biases_rsci_idat[87:80]);
  assign MultLoop_acc_1891_nl = nl_MultLoop_acc_1891_nl[8:0];
  assign MultLoop_527_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1033:1012])) * $signed((weights_rsci_idat[4215:4208])));
  assign MultLoop_528_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1055:1034])) * $signed((weights_rsci_idat[4223:4216])));
  assign MultLoop_525_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[989:968])) * $signed((weights_rsci_idat[4199:4192])));
  assign MultLoop_526_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1011:990])) * $signed((weights_rsci_idat[4207:4200])));
  assign MultLoop_523_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[945:924])) * $signed((weights_rsci_idat[4183:4176])));
  assign MultLoop_524_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[967:946])) * $signed((weights_rsci_idat[4191:4184])));
  assign MultLoop_521_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[901:880])) * $signed((weights_rsci_idat[4167:4160])));
  assign MultLoop_514_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[747:726])) * $signed((weights_rsci_idat[4111:4104])));
  assign MultLoop_511_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[681:660])) * $signed((weights_rsci_idat[4087:4080])));
  assign MultLoop_512_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[703:682])) * $signed((weights_rsci_idat[4095:4088])));
  assign MultLoop_509_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[637:616])) * $signed((weights_rsci_idat[4071:4064])));
  assign MultLoop_510_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[659:638])) * $signed((weights_rsci_idat[4079:4072])));
  assign MultLoop_507_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[593:572])) * $signed((weights_rsci_idat[4055:4048])));
  assign MultLoop_508_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[615:594])) * $signed((weights_rsci_idat[4063:4056])));
  assign MultLoop_505_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[549:528])) * $signed((weights_rsci_idat[4039:4032])));
  assign MultLoop_502_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[483:462])) * $signed((weights_rsci_idat[4015:4008])));
  assign MultLoop_499_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[417:396])) * $signed((weights_rsci_idat[3991:3984])));
  assign MultLoop_500_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[439:418])) * $signed((weights_rsci_idat[3999:3992])));
  assign MultLoop_497_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[373:352])) * $signed((weights_rsci_idat[3975:3968])));
  assign MultLoop_506_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[571:550])) * $signed((weights_rsci_idat[4047:4040])));
  assign MultLoop_503_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[505:484])) * $signed((weights_rsci_idat[4023:4016])));
  assign MultLoop_504_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[527:506])) * $signed((weights_rsci_idat[4031:4024])));
  assign MultLoop_501_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[461:440])) * $signed((weights_rsci_idat[4007:4000])));
  assign MultLoop_494_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[307:286])) * $signed((weights_rsci_idat[3951:3944])));
  assign MultLoop_491_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[241:220])) * $signed((weights_rsci_idat[3927:3920])));
  assign MultLoop_492_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[263:242])) * $signed((weights_rsci_idat[3935:3928])));
  assign MultLoop_489_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[197:176])) * $signed((weights_rsci_idat[3911:3904])));
  assign MultLoop_486_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[131:110])) * $signed((weights_rsci_idat[3887:3880])));
  assign MultLoop_483_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[65:44])) * $signed((weights_rsci_idat[3863:3856])));
  assign MultLoop_484_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[87:66])) * $signed((weights_rsci_idat[3871:3864])));
  assign MultLoop_481_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[21:0])) * $signed((weights_rsci_idat[3847:3840])));
  assign MultLoop_490_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[219:198])) * $signed((weights_rsci_idat[3919:3912])));
  assign MultLoop_487_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[153:132])) * $signed((weights_rsci_idat[3895:3888])));
  assign MultLoop_488_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[175:154])) * $signed((weights_rsci_idat[3903:3896])));
  assign MultLoop_485_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[109:88])) * $signed((weights_rsci_idat[3879:3872])));
  assign MultLoop_516_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[791:770])) * $signed((weights_rsci_idat[4127:4120])));
  assign MultLoop_513_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[725:704])) * $signed((weights_rsci_idat[4103:4096])));
  assign nl_res_rsci_d_197_180  = conv_s2s_13_18(readslicef_30_13_17((MultLoop_498_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_495_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_496_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_493_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_518_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_515_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_522_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_519_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_520_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_517_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18({(MultLoop_acc_1891_nl) , (MultLoop_482_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[3:0])})
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_527_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_528_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_525_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_526_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_523_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_524_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_521_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_514_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_511_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_512_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_509_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_510_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_507_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_508_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_505_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_502_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_499_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_500_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_497_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_506_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_503_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_504_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_501_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_494_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_491_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_492_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_489_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_486_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_483_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_484_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_481_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_490_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_487_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_488_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_485_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_516_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_513_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)));
  assign MultLoop_594_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[395:374])) * $signed((weights_rsci_idat[4751:4744])));
  assign MultLoop_591_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[329:308])) * $signed((weights_rsci_idat[4727:4720])));
  assign MultLoop_592_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[351:330])) * $signed((weights_rsci_idat[4735:4728])));
  assign MultLoop_589_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[285:264])) * $signed((weights_rsci_idat[4711:4704])));
  assign MultLoop_614_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[835:814])) * $signed((weights_rsci_idat[4911:4904])));
  assign MultLoop_611_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[769:748])) * $signed((weights_rsci_idat[4887:4880])));
  assign MultLoop_618_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[923:902])) * $signed((weights_rsci_idat[4943:4936])));
  assign MultLoop_615_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[857:836])) * $signed((weights_rsci_idat[4919:4912])));
  assign MultLoop_616_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[879:858])) * $signed((weights_rsci_idat[4927:4920])));
  assign MultLoop_613_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[813:792])) * $signed((weights_rsci_idat[4903:4896])));
  assign nl_MultLoop_acc_1890_nl = (MultLoop_578_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[12:4])
      + conv_s2s_8_9(biases_rsci_idat[103:96]);
  assign MultLoop_acc_1890_nl = nl_MultLoop_acc_1890_nl[8:0];
  assign MultLoop_623_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1033:1012])) * $signed((weights_rsci_idat[4983:4976])));
  assign MultLoop_624_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1055:1034])) * $signed((weights_rsci_idat[4991:4984])));
  assign MultLoop_621_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[989:968])) * $signed((weights_rsci_idat[4967:4960])));
  assign MultLoop_622_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1011:990])) * $signed((weights_rsci_idat[4975:4968])));
  assign MultLoop_619_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[945:924])) * $signed((weights_rsci_idat[4951:4944])));
  assign MultLoop_620_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[967:946])) * $signed((weights_rsci_idat[4959:4952])));
  assign MultLoop_617_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[901:880])) * $signed((weights_rsci_idat[4935:4928])));
  assign MultLoop_610_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[747:726])) * $signed((weights_rsci_idat[4879:4872])));
  assign MultLoop_607_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[681:660])) * $signed((weights_rsci_idat[4855:4848])));
  assign MultLoop_608_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[703:682])) * $signed((weights_rsci_idat[4863:4856])));
  assign MultLoop_605_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[637:616])) * $signed((weights_rsci_idat[4839:4832])));
  assign MultLoop_606_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[659:638])) * $signed((weights_rsci_idat[4847:4840])));
  assign MultLoop_603_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[593:572])) * $signed((weights_rsci_idat[4823:4816])));
  assign MultLoop_604_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[615:594])) * $signed((weights_rsci_idat[4831:4824])));
  assign MultLoop_601_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[549:528])) * $signed((weights_rsci_idat[4807:4800])));
  assign MultLoop_598_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[483:462])) * $signed((weights_rsci_idat[4783:4776])));
  assign MultLoop_595_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[417:396])) * $signed((weights_rsci_idat[4759:4752])));
  assign MultLoop_596_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[439:418])) * $signed((weights_rsci_idat[4767:4760])));
  assign MultLoop_593_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[373:352])) * $signed((weights_rsci_idat[4743:4736])));
  assign MultLoop_602_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[571:550])) * $signed((weights_rsci_idat[4815:4808])));
  assign MultLoop_599_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[505:484])) * $signed((weights_rsci_idat[4791:4784])));
  assign MultLoop_600_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[527:506])) * $signed((weights_rsci_idat[4799:4792])));
  assign MultLoop_597_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[461:440])) * $signed((weights_rsci_idat[4775:4768])));
  assign MultLoop_590_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[307:286])) * $signed((weights_rsci_idat[4719:4712])));
  assign MultLoop_587_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[241:220])) * $signed((weights_rsci_idat[4695:4688])));
  assign MultLoop_588_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[263:242])) * $signed((weights_rsci_idat[4703:4696])));
  assign MultLoop_585_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[197:176])) * $signed((weights_rsci_idat[4679:4672])));
  assign MultLoop_582_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[131:110])) * $signed((weights_rsci_idat[4655:4648])));
  assign MultLoop_579_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[65:44])) * $signed((weights_rsci_idat[4631:4624])));
  assign MultLoop_580_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[87:66])) * $signed((weights_rsci_idat[4639:4632])));
  assign MultLoop_577_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[21:0])) * $signed((weights_rsci_idat[4615:4608])));
  assign MultLoop_586_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[219:198])) * $signed((weights_rsci_idat[4687:4680])));
  assign MultLoop_583_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[153:132])) * $signed((weights_rsci_idat[4663:4656])));
  assign MultLoop_584_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[175:154])) * $signed((weights_rsci_idat[4671:4664])));
  assign MultLoop_581_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[109:88])) * $signed((weights_rsci_idat[4647:4640])));
  assign MultLoop_612_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[791:770])) * $signed((weights_rsci_idat[4895:4888])));
  assign MultLoop_609_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[725:704])) * $signed((weights_rsci_idat[4871:4864])));
  assign nl_res_rsci_d_233_216  = conv_s2s_13_18(readslicef_30_13_17((MultLoop_594_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_591_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_592_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_589_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_614_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_611_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_618_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_615_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_616_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_613_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18({(MultLoop_acc_1890_nl) , (MultLoop_578_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[3:0])})
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_623_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_624_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_621_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_622_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_619_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_620_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_617_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_610_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_607_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_608_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_605_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_606_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_603_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_604_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_601_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_598_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_595_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_596_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_593_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_602_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_599_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_600_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_597_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_590_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_587_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_588_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_585_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_582_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_579_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_580_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_577_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_586_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_583_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_584_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_581_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_612_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_609_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)));
  assign MultLoop_546_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[395:374])) * $signed((weights_rsci_idat[4367:4360])));
  assign MultLoop_543_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[329:308])) * $signed((weights_rsci_idat[4343:4336])));
  assign MultLoop_544_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[351:330])) * $signed((weights_rsci_idat[4351:4344])));
  assign MultLoop_541_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[285:264])) * $signed((weights_rsci_idat[4327:4320])));
  assign MultLoop_566_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[835:814])) * $signed((weights_rsci_idat[4527:4520])));
  assign MultLoop_563_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[769:748])) * $signed((weights_rsci_idat[4503:4496])));
  assign MultLoop_570_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[923:902])) * $signed((weights_rsci_idat[4559:4552])));
  assign MultLoop_567_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[857:836])) * $signed((weights_rsci_idat[4535:4528])));
  assign MultLoop_568_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[879:858])) * $signed((weights_rsci_idat[4543:4536])));
  assign MultLoop_565_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[813:792])) * $signed((weights_rsci_idat[4519:4512])));
  assign nl_MultLoop_acc_1889_nl = (MultLoop_530_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[12:4])
      + conv_s2s_8_9(biases_rsci_idat[95:88]);
  assign MultLoop_acc_1889_nl = nl_MultLoop_acc_1889_nl[8:0];
  assign MultLoop_575_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1033:1012])) * $signed((weights_rsci_idat[4599:4592])));
  assign MultLoop_576_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1055:1034])) * $signed((weights_rsci_idat[4607:4600])));
  assign MultLoop_573_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[989:968])) * $signed((weights_rsci_idat[4583:4576])));
  assign MultLoop_574_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[1011:990])) * $signed((weights_rsci_idat[4591:4584])));
  assign MultLoop_571_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[945:924])) * $signed((weights_rsci_idat[4567:4560])));
  assign MultLoop_572_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[967:946])) * $signed((weights_rsci_idat[4575:4568])));
  assign MultLoop_569_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[901:880])) * $signed((weights_rsci_idat[4551:4544])));
  assign MultLoop_562_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[747:726])) * $signed((weights_rsci_idat[4495:4488])));
  assign MultLoop_559_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[681:660])) * $signed((weights_rsci_idat[4471:4464])));
  assign MultLoop_560_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[703:682])) * $signed((weights_rsci_idat[4479:4472])));
  assign MultLoop_557_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[637:616])) * $signed((weights_rsci_idat[4455:4448])));
  assign MultLoop_558_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[659:638])) * $signed((weights_rsci_idat[4463:4456])));
  assign MultLoop_555_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[593:572])) * $signed((weights_rsci_idat[4439:4432])));
  assign MultLoop_556_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[615:594])) * $signed((weights_rsci_idat[4447:4440])));
  assign MultLoop_553_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[549:528])) * $signed((weights_rsci_idat[4423:4416])));
  assign MultLoop_550_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[483:462])) * $signed((weights_rsci_idat[4399:4392])));
  assign MultLoop_547_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[417:396])) * $signed((weights_rsci_idat[4375:4368])));
  assign MultLoop_548_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[439:418])) * $signed((weights_rsci_idat[4383:4376])));
  assign MultLoop_545_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[373:352])) * $signed((weights_rsci_idat[4359:4352])));
  assign MultLoop_554_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[571:550])) * $signed((weights_rsci_idat[4431:4424])));
  assign MultLoop_551_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[505:484])) * $signed((weights_rsci_idat[4407:4400])));
  assign MultLoop_552_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[527:506])) * $signed((weights_rsci_idat[4415:4408])));
  assign MultLoop_549_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[461:440])) * $signed((weights_rsci_idat[4391:4384])));
  assign MultLoop_542_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[307:286])) * $signed((weights_rsci_idat[4335:4328])));
  assign MultLoop_539_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[241:220])) * $signed((weights_rsci_idat[4311:4304])));
  assign MultLoop_540_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[263:242])) * $signed((weights_rsci_idat[4319:4312])));
  assign MultLoop_537_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[197:176])) * $signed((weights_rsci_idat[4295:4288])));
  assign MultLoop_534_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[131:110])) * $signed((weights_rsci_idat[4271:4264])));
  assign MultLoop_531_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[65:44])) * $signed((weights_rsci_idat[4247:4240])));
  assign MultLoop_532_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[87:66])) * $signed((weights_rsci_idat[4255:4248])));
  assign MultLoop_529_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[21:0])) * $signed((weights_rsci_idat[4231:4224])));
  assign MultLoop_538_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[219:198])) * $signed((weights_rsci_idat[4303:4296])));
  assign MultLoop_535_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[153:132])) * $signed((weights_rsci_idat[4279:4272])));
  assign MultLoop_536_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[175:154])) * $signed((weights_rsci_idat[4287:4280])));
  assign MultLoop_533_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[109:88])) * $signed((weights_rsci_idat[4263:4256])));
  assign MultLoop_564_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[791:770])) * $signed((weights_rsci_idat[4511:4504])));
  assign MultLoop_561_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl
      = conv_s2u_30_30($signed((data_rsci_idat[725:704])) * $signed((weights_rsci_idat[4487:4480])));
  assign nl_res_rsci_d_215_198  = conv_s2s_13_18(readslicef_30_13_17((MultLoop_546_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_543_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_544_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_541_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_566_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_563_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_570_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_567_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_568_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_565_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18({(MultLoop_acc_1889_nl) , (MultLoop_530_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_itm_29_17[3:0])})
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_575_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_576_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_573_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_574_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_571_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_572_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_569_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_562_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_559_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_560_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_557_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_558_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_555_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_556_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_553_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_550_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_547_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_548_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_545_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_554_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_551_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_552_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_549_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_542_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_539_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_540_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_537_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_534_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_531_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_532_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_529_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_538_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_535_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_536_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_533_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_564_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)))
      + conv_s2s_13_18(readslicef_30_13_17((MultLoop_561_nnet_product_input_t_config2_weight_t_config2_accum_t_mul_nl)));

  function automatic [12:0] readslicef_30_13_17;
    input [29:0] vector;
    reg [29:0] tmp;
  begin
    tmp = vector >> 17;
    readslicef_30_13_17 = tmp[12:0];
  end
  endfunction


  function automatic [8:0] conv_s2s_8_9 ;
    input [7:0]  vector ;
  begin
    conv_s2s_8_9 = {vector[7], vector};
  end
  endfunction


  function automatic [17:0] conv_s2s_13_18 ;
    input [12:0]  vector ;
  begin
    conv_s2s_13_18 = {{5{vector[12]}}, vector};
  end
  endfunction


  function automatic [29:0] conv_s2u_30_30 ;
    input [29:0]  vector ;
  begin
    conv_s2u_30_30 = vector;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    nnet_dense_large_input_t_layer2_t_config2
// ------------------------------------------------------------------


module nnet_dense_large_input_t_layer2_t_config2 (
  data_rsc_dat, res_rsc_z, weights_rsc_dat, biases_rsc_dat, ccs_ccore_start_rsc_dat,
      ccs_ccore_clk, ccs_ccore_srst, ccs_ccore_en
);
  input [1055:0] data_rsc_dat;
  output [431:0] res_rsc_z;
  input [9215:0] weights_rsc_dat;
  input [191:0] biases_rsc_dat;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_srst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  nnet_dense_large_input_t_layer2_t_config2_core nnet_dense_large_input_t_layer2_t_config2_core_inst
      (
      .data_rsc_dat(data_rsc_dat),
      .res_rsc_z(res_rsc_z),
      .weights_rsc_dat(weights_rsc_dat),
      .biases_rsc_dat(biases_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_srst(ccs_ccore_srst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ./rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4c/853139 Production Release
//  HLS Date:       Thu Jan 16 19:19:57 PST 2020
// 
//  Generated by:   giuseppe@fastml02
//  Generated date: Tue Feb 25 11:06:48 2020
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    econV0_core_core_fsm
//  FSM Module
// ------------------------------------------------------------------


module econV0_core_core_fsm (
  clk, rst, core_wen, fsm_output
);
  input clk;
  input rst;
  input core_wen;
  output [8:0] fsm_output;
  reg [8:0] fsm_output;


  // FSM State Type Declaration for econV0_core_core_fsm_1
  parameter
    core_rlp_C_0 = 4'd0,
    main_C_0 = 4'd1,
    main_C_1 = 4'd2,
    main_C_2 = 4'd3,
    main_C_3 = 4'd4,
    main_C_4 = 4'd5,
    main_C_5 = 4'd6,
    main_C_6 = 4'd7,
    main_C_7 = 4'd8;

  reg [3:0] state_var;
  reg [3:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : econV0_core_core_fsm_1
    case (state_var)
      main_C_0 : begin
        fsm_output = 9'b000000010;
        state_var_NS = main_C_1;
      end
      main_C_1 : begin
        fsm_output = 9'b000000100;
        state_var_NS = main_C_2;
      end
      main_C_2 : begin
        fsm_output = 9'b000001000;
        state_var_NS = main_C_3;
      end
      main_C_3 : begin
        fsm_output = 9'b000010000;
        state_var_NS = main_C_4;
      end
      main_C_4 : begin
        fsm_output = 9'b000100000;
        state_var_NS = main_C_5;
      end
      main_C_5 : begin
        fsm_output = 9'b001000000;
        state_var_NS = main_C_6;
      end
      main_C_6 : begin
        fsm_output = 9'b010000000;
        state_var_NS = main_C_7;
      end
      main_C_7 : begin
        fsm_output = 9'b100000000;
        state_var_NS = main_C_0;
      end
      // core_rlp_C_0
      default : begin
        fsm_output = 9'b000000001;
        state_var_NS = main_C_0;
      end
    endcase
  end

  always @(posedge clk) begin
    if ( rst ) begin
      state_var <= core_rlp_C_0;
    end
    else if ( core_wen ) begin
      state_var <= state_var_NS;
    end
  end

endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_staller
// ------------------------------------------------------------------


module econV0_core_staller (
  clk, rst, core_wen, core_wten, input_48_rsci_wen_comp, layer7_out_rsci_wen_comp,
      w2_rsci_wen_comp, b2_rsci_wen_comp, w4_rsci_wen_comp, b4_rsci_wen_comp, w6_rsci_wen_comp,
      b6_rsci_wen_comp
);
  input clk;
  input rst;
  output core_wen;
  output core_wten;
  reg core_wten;
  input input_48_rsci_wen_comp;
  input layer7_out_rsci_wen_comp;
  input w2_rsci_wen_comp;
  input b2_rsci_wen_comp;
  input w4_rsci_wen_comp;
  input b4_rsci_wen_comp;
  input w6_rsci_wen_comp;
  input b6_rsci_wen_comp;



  // Interconnect Declarations for Component Instantiations 
  assign core_wen = input_48_rsci_wen_comp & layer7_out_rsci_wen_comp & w2_rsci_wen_comp
      & b2_rsci_wen_comp & w4_rsci_wen_comp & b4_rsci_wen_comp & w6_rsci_wen_comp
      & b6_rsci_wen_comp;
  always @(posedge clk) begin
    if ( rst ) begin
      core_wten <= 1'b0;
    end
    else begin
      core_wten <= ~ core_wen;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_b6_rsc_triosy_obj_b6_rsc_triosy_wait_ctrl
// ------------------------------------------------------------------


module econV0_core_b6_rsc_triosy_obj_b6_rsc_triosy_wait_ctrl (
  core_wten, b6_rsc_triosy_obj_iswt0, b6_rsc_triosy_obj_ld_core_sct
);
  input core_wten;
  input b6_rsc_triosy_obj_iswt0;
  output b6_rsc_triosy_obj_ld_core_sct;



  // Interconnect Declarations for Component Instantiations 
  assign b6_rsc_triosy_obj_ld_core_sct = b6_rsc_triosy_obj_iswt0 & (~ core_wten);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_w6_rsc_triosy_obj_w6_rsc_triosy_wait_ctrl
// ------------------------------------------------------------------


module econV0_core_w6_rsc_triosy_obj_w6_rsc_triosy_wait_ctrl (
  core_wten, w6_rsc_triosy_obj_iswt0, w6_rsc_triosy_obj_ld_core_sct
);
  input core_wten;
  input w6_rsc_triosy_obj_iswt0;
  output w6_rsc_triosy_obj_ld_core_sct;



  // Interconnect Declarations for Component Instantiations 
  assign w6_rsc_triosy_obj_ld_core_sct = w6_rsc_triosy_obj_iswt0 & (~ core_wten);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_b4_rsc_triosy_obj_b4_rsc_triosy_wait_ctrl
// ------------------------------------------------------------------


module econV0_core_b4_rsc_triosy_obj_b4_rsc_triosy_wait_ctrl (
  core_wten, b4_rsc_triosy_obj_iswt0, b4_rsc_triosy_obj_ld_core_sct
);
  input core_wten;
  input b4_rsc_triosy_obj_iswt0;
  output b4_rsc_triosy_obj_ld_core_sct;



  // Interconnect Declarations for Component Instantiations 
  assign b4_rsc_triosy_obj_ld_core_sct = b4_rsc_triosy_obj_iswt0 & (~ core_wten);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_w4_rsc_triosy_obj_w4_rsc_triosy_wait_ctrl
// ------------------------------------------------------------------


module econV0_core_w4_rsc_triosy_obj_w4_rsc_triosy_wait_ctrl (
  core_wten, w4_rsc_triosy_obj_iswt0, w4_rsc_triosy_obj_ld_core_sct
);
  input core_wten;
  input w4_rsc_triosy_obj_iswt0;
  output w4_rsc_triosy_obj_ld_core_sct;



  // Interconnect Declarations for Component Instantiations 
  assign w4_rsc_triosy_obj_ld_core_sct = w4_rsc_triosy_obj_iswt0 & (~ core_wten);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_b2_rsc_triosy_obj_b2_rsc_triosy_wait_ctrl
// ------------------------------------------------------------------


module econV0_core_b2_rsc_triosy_obj_b2_rsc_triosy_wait_ctrl (
  core_wten, b2_rsc_triosy_obj_iswt0, b2_rsc_triosy_obj_ld_core_sct
);
  input core_wten;
  input b2_rsc_triosy_obj_iswt0;
  output b2_rsc_triosy_obj_ld_core_sct;



  // Interconnect Declarations for Component Instantiations 
  assign b2_rsc_triosy_obj_ld_core_sct = b2_rsc_triosy_obj_iswt0 & (~ core_wten);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_w2_rsc_triosy_obj_w2_rsc_triosy_wait_ctrl
// ------------------------------------------------------------------


module econV0_core_w2_rsc_triosy_obj_w2_rsc_triosy_wait_ctrl (
  core_wten, w2_rsc_triosy_obj_iswt0, w2_rsc_triosy_obj_ld_core_sct
);
  input core_wten;
  input w2_rsc_triosy_obj_iswt0;
  output w2_rsc_triosy_obj_ld_core_sct;



  // Interconnect Declarations for Component Instantiations 
  assign w2_rsc_triosy_obj_ld_core_sct = w2_rsc_triosy_obj_iswt0 & (~ core_wten);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_const_size_out_1_rsc_triosy_obj_const_size_out_1_rsc_triosy_wait_ctrl
// ------------------------------------------------------------------


module econV0_core_const_size_out_1_rsc_triosy_obj_const_size_out_1_rsc_triosy_wait_ctrl
    (
  core_wten, const_size_out_1_rsc_triosy_obj_iswt0, const_size_out_1_rsc_triosy_obj_ld_core_sct
);
  input core_wten;
  input const_size_out_1_rsc_triosy_obj_iswt0;
  output const_size_out_1_rsc_triosy_obj_ld_core_sct;



  // Interconnect Declarations for Component Instantiations 
  assign const_size_out_1_rsc_triosy_obj_ld_core_sct = const_size_out_1_rsc_triosy_obj_iswt0
      & (~ core_wten);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_const_size_in_1_rsc_triosy_obj_const_size_in_1_rsc_triosy_wait_ctrl
// ------------------------------------------------------------------


module econV0_core_const_size_in_1_rsc_triosy_obj_const_size_in_1_rsc_triosy_wait_ctrl
    (
  core_wten, const_size_in_1_rsc_triosy_obj_iswt0, const_size_in_1_rsc_triosy_obj_ld_core_sct
);
  input core_wten;
  input const_size_in_1_rsc_triosy_obj_iswt0;
  output const_size_in_1_rsc_triosy_obj_ld_core_sct;



  // Interconnect Declarations for Component Instantiations 
  assign const_size_in_1_rsc_triosy_obj_ld_core_sct = const_size_in_1_rsc_triosy_obj_iswt0
      & (~ core_wten);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_layer7_out_rsc_triosy_obj_layer7_out_rsc_triosy_wait_ctrl
// ------------------------------------------------------------------


module econV0_core_layer7_out_rsc_triosy_obj_layer7_out_rsc_triosy_wait_ctrl (
  core_wten, layer7_out_rsc_triosy_obj_iswt0, layer7_out_rsc_triosy_obj_ld_core_sct
);
  input core_wten;
  input layer7_out_rsc_triosy_obj_iswt0;
  output layer7_out_rsc_triosy_obj_ld_core_sct;



  // Interconnect Declarations for Component Instantiations 
  assign layer7_out_rsc_triosy_obj_ld_core_sct = layer7_out_rsc_triosy_obj_iswt0
      & (~ core_wten);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_input_48_rsc_triosy_obj_input_48_rsc_triosy_wait_ctrl
// ------------------------------------------------------------------


module econV0_core_input_48_rsc_triosy_obj_input_48_rsc_triosy_wait_ctrl (
  core_wten, input_48_rsc_triosy_obj_iswt0, input_48_rsc_triosy_obj_ld_core_sct
);
  input core_wten;
  input input_48_rsc_triosy_obj_iswt0;
  output input_48_rsc_triosy_obj_ld_core_sct;



  // Interconnect Declarations for Component Instantiations 
  assign input_48_rsc_triosy_obj_ld_core_sct = input_48_rsc_triosy_obj_iswt0 & (~
      core_wten);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_b6_rsci_b6_rsc_wait_dp
// ------------------------------------------------------------------


module econV0_core_b6_rsci_b6_rsc_wait_dp (
  clk, rst, b6_rsci_oswt, b6_rsci_wen_comp, b6_rsci_idat_mxwt, b6_rsci_biwt, b6_rsci_bdwt,
      b6_rsci_bcwt, b6_rsci_idat
);
  input clk;
  input rst;
  input b6_rsci_oswt;
  output b6_rsci_wen_comp;
  output [23:0] b6_rsci_idat_mxwt;
  input b6_rsci_biwt;
  input b6_rsci_bdwt;
  output b6_rsci_bcwt;
  reg b6_rsci_bcwt;
  input [23:0] b6_rsci_idat;


  // Interconnect Declarations
  reg [23:0] b6_rsci_idat_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign b6_rsci_wen_comp = (~ b6_rsci_oswt) | b6_rsci_biwt | b6_rsci_bcwt;
  assign b6_rsci_idat_mxwt = MUX_v_24_2_2(b6_rsci_idat, b6_rsci_idat_bfwt, b6_rsci_bcwt);
  always @(posedge clk) begin
    if ( rst ) begin
      b6_rsci_bcwt <= 1'b0;
    end
    else begin
      b6_rsci_bcwt <= ~((~(b6_rsci_bcwt | b6_rsci_biwt)) | b6_rsci_bdwt);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      b6_rsci_idat_bfwt <= 24'b000000000000000000000000;
    end
    else if ( ~ b6_rsci_bcwt ) begin
      b6_rsci_idat_bfwt <= b6_rsci_idat_mxwt;
    end
  end

  function automatic [23:0] MUX_v_24_2_2;
    input [23:0] input_0;
    input [23:0] input_1;
    input [0:0] sel;
    reg [23:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_24_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_b6_rsci_b6_rsc_wait_ctrl
// ------------------------------------------------------------------


module econV0_core_b6_rsci_b6_rsc_wait_ctrl (
  core_wen, b6_rsci_oswt, b6_rsci_biwt, b6_rsci_bdwt, b6_rsci_bcwt, b6_rsci_irdy_core_sct,
      b6_rsci_ivld
);
  input core_wen;
  input b6_rsci_oswt;
  output b6_rsci_biwt;
  output b6_rsci_bdwt;
  input b6_rsci_bcwt;
  output b6_rsci_irdy_core_sct;
  input b6_rsci_ivld;


  // Interconnect Declarations
  wire b6_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign b6_rsci_bdwt = b6_rsci_oswt & core_wen;
  assign b6_rsci_biwt = b6_rsci_ogwt & b6_rsci_ivld;
  assign b6_rsci_ogwt = b6_rsci_oswt & (~ b6_rsci_bcwt);
  assign b6_rsci_irdy_core_sct = b6_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_w6_rsci_w6_rsc_wait_dp
// ------------------------------------------------------------------


module econV0_core_w6_rsci_w6_rsc_wait_dp (
  clk, rst, w6_rsci_oswt, w6_rsci_wen_comp, w6_rsci_idat_mxwt, w6_rsci_biwt, w6_rsci_bdwt,
      w6_rsci_bcwt, w6_rsci_idat
);
  input clk;
  input rst;
  input w6_rsci_oswt;
  output w6_rsci_wen_comp;
  output [143:0] w6_rsci_idat_mxwt;
  input w6_rsci_biwt;
  input w6_rsci_bdwt;
  output w6_rsci_bcwt;
  reg w6_rsci_bcwt;
  input [143:0] w6_rsci_idat;


  // Interconnect Declarations
  reg [143:0] w6_rsci_idat_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign w6_rsci_wen_comp = (~ w6_rsci_oswt) | w6_rsci_biwt | w6_rsci_bcwt;
  assign w6_rsci_idat_mxwt = MUX_v_144_2_2(w6_rsci_idat, w6_rsci_idat_bfwt, w6_rsci_bcwt);
  always @(posedge clk) begin
    if ( rst ) begin
      w6_rsci_bcwt <= 1'b0;
    end
    else begin
      w6_rsci_bcwt <= ~((~(w6_rsci_bcwt | w6_rsci_biwt)) | w6_rsci_bdwt);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      w6_rsci_idat_bfwt <= 144'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    end
    else if ( ~ w6_rsci_bcwt ) begin
      w6_rsci_idat_bfwt <= w6_rsci_idat_mxwt;
    end
  end

  function automatic [143:0] MUX_v_144_2_2;
    input [143:0] input_0;
    input [143:0] input_1;
    input [0:0] sel;
    reg [143:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_144_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_w6_rsci_w6_rsc_wait_ctrl
// ------------------------------------------------------------------


module econV0_core_w6_rsci_w6_rsc_wait_ctrl (
  core_wen, w6_rsci_oswt, w6_rsci_biwt, w6_rsci_bdwt, w6_rsci_bcwt, w6_rsci_irdy_core_sct,
      w6_rsci_ivld
);
  input core_wen;
  input w6_rsci_oswt;
  output w6_rsci_biwt;
  output w6_rsci_bdwt;
  input w6_rsci_bcwt;
  output w6_rsci_irdy_core_sct;
  input w6_rsci_ivld;


  // Interconnect Declarations
  wire w6_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign w6_rsci_bdwt = w6_rsci_oswt & core_wen;
  assign w6_rsci_biwt = w6_rsci_ogwt & w6_rsci_ivld;
  assign w6_rsci_ogwt = w6_rsci_oswt & (~ w6_rsci_bcwt);
  assign w6_rsci_irdy_core_sct = w6_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_b4_rsci_b4_rsc_wait_dp
// ------------------------------------------------------------------


module econV0_core_b4_rsci_b4_rsc_wait_dp (
  clk, rst, b4_rsci_oswt, b4_rsci_wen_comp, b4_rsci_idat_mxwt, b4_rsci_biwt, b4_rsci_bdwt,
      b4_rsci_bcwt, b4_rsci_idat
);
  input clk;
  input rst;
  input b4_rsci_oswt;
  output b4_rsci_wen_comp;
  output [47:0] b4_rsci_idat_mxwt;
  input b4_rsci_biwt;
  input b4_rsci_bdwt;
  output b4_rsci_bcwt;
  reg b4_rsci_bcwt;
  input [47:0] b4_rsci_idat;


  // Interconnect Declarations
  reg [47:0] b4_rsci_idat_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign b4_rsci_wen_comp = (~ b4_rsci_oswt) | b4_rsci_biwt | b4_rsci_bcwt;
  assign b4_rsci_idat_mxwt = MUX_v_48_2_2(b4_rsci_idat, b4_rsci_idat_bfwt, b4_rsci_bcwt);
  always @(posedge clk) begin
    if ( rst ) begin
      b4_rsci_bcwt <= 1'b0;
    end
    else begin
      b4_rsci_bcwt <= ~((~(b4_rsci_bcwt | b4_rsci_biwt)) | b4_rsci_bdwt);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      b4_rsci_idat_bfwt <= 48'b000000000000000000000000000000000000000000000000;
    end
    else if ( ~ b4_rsci_bcwt ) begin
      b4_rsci_idat_bfwt <= b4_rsci_idat_mxwt;
    end
  end

  function automatic [47:0] MUX_v_48_2_2;
    input [47:0] input_0;
    input [47:0] input_1;
    input [0:0] sel;
    reg [47:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_48_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_b4_rsci_b4_rsc_wait_ctrl
// ------------------------------------------------------------------


module econV0_core_b4_rsci_b4_rsc_wait_ctrl (
  core_wen, b4_rsci_oswt, b4_rsci_biwt, b4_rsci_bdwt, b4_rsci_bcwt, b4_rsci_irdy_core_sct,
      b4_rsci_ivld
);
  input core_wen;
  input b4_rsci_oswt;
  output b4_rsci_biwt;
  output b4_rsci_bdwt;
  input b4_rsci_bcwt;
  output b4_rsci_irdy_core_sct;
  input b4_rsci_ivld;


  // Interconnect Declarations
  wire b4_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign b4_rsci_bdwt = b4_rsci_oswt & core_wen;
  assign b4_rsci_biwt = b4_rsci_ogwt & b4_rsci_ivld;
  assign b4_rsci_ogwt = b4_rsci_oswt & (~ b4_rsci_bcwt);
  assign b4_rsci_irdy_core_sct = b4_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_w4_rsci_w4_rsc_wait_dp
// ------------------------------------------------------------------


module econV0_core_w4_rsci_w4_rsc_wait_dp (
  clk, rst, w4_rsci_oswt, w4_rsci_wen_comp, w4_rsci_idat_mxwt, w4_rsci_biwt, w4_rsci_bdwt,
      w4_rsci_bcwt, w4_rsci_idat
);
  input clk;
  input rst;
  input w4_rsci_oswt;
  output w4_rsci_wen_comp;
  output [1151:0] w4_rsci_idat_mxwt;
  input w4_rsci_biwt;
  input w4_rsci_bdwt;
  output w4_rsci_bcwt;
  reg w4_rsci_bcwt;
  input [1151:0] w4_rsci_idat;


  // Interconnect Declarations
  reg [1151:0] w4_rsci_idat_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign w4_rsci_wen_comp = (~ w4_rsci_oswt) | w4_rsci_biwt | w4_rsci_bcwt;
  assign w4_rsci_idat_mxwt = MUX_v_1152_2_2(w4_rsci_idat, w4_rsci_idat_bfwt, w4_rsci_bcwt);
  always @(posedge clk) begin
    if ( rst ) begin
      w4_rsci_bcwt <= 1'b0;
    end
    else begin
      w4_rsci_bcwt <= ~((~(w4_rsci_bcwt | w4_rsci_biwt)) | w4_rsci_bdwt);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      w4_rsci_idat_bfwt <= {576'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
          , 576'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000};
    end
    else if ( ~ w4_rsci_bcwt ) begin
      w4_rsci_idat_bfwt <= w4_rsci_idat_mxwt;
    end
  end

  function automatic [1151:0] MUX_v_1152_2_2;
    input [1151:0] input_0;
    input [1151:0] input_1;
    input [0:0] sel;
    reg [1151:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_1152_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_w4_rsci_w4_rsc_wait_ctrl
// ------------------------------------------------------------------


module econV0_core_w4_rsci_w4_rsc_wait_ctrl (
  core_wen, w4_rsci_oswt, w4_rsci_biwt, w4_rsci_bdwt, w4_rsci_bcwt, w4_rsci_irdy_core_sct,
      w4_rsci_ivld
);
  input core_wen;
  input w4_rsci_oswt;
  output w4_rsci_biwt;
  output w4_rsci_bdwt;
  input w4_rsci_bcwt;
  output w4_rsci_irdy_core_sct;
  input w4_rsci_ivld;


  // Interconnect Declarations
  wire w4_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign w4_rsci_bdwt = w4_rsci_oswt & core_wen;
  assign w4_rsci_biwt = w4_rsci_ogwt & w4_rsci_ivld;
  assign w4_rsci_ogwt = w4_rsci_oswt & (~ w4_rsci_bcwt);
  assign w4_rsci_irdy_core_sct = w4_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_b2_rsci_b2_rsc_wait_dp
// ------------------------------------------------------------------


module econV0_core_b2_rsci_b2_rsc_wait_dp (
  clk, rst, b2_rsci_oswt, b2_rsci_wen_comp, b2_rsci_idat_mxwt, b2_rsci_biwt, b2_rsci_bdwt,
      b2_rsci_bcwt, b2_rsci_idat
);
  input clk;
  input rst;
  input b2_rsci_oswt;
  output b2_rsci_wen_comp;
  output [191:0] b2_rsci_idat_mxwt;
  input b2_rsci_biwt;
  input b2_rsci_bdwt;
  output b2_rsci_bcwt;
  reg b2_rsci_bcwt;
  input [191:0] b2_rsci_idat;


  // Interconnect Declarations
  reg [191:0] b2_rsci_idat_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign b2_rsci_wen_comp = (~ b2_rsci_oswt) | b2_rsci_biwt | b2_rsci_bcwt;
  assign b2_rsci_idat_mxwt = MUX_v_192_2_2(b2_rsci_idat, b2_rsci_idat_bfwt, b2_rsci_bcwt);
  always @(posedge clk) begin
    if ( rst ) begin
      b2_rsci_bcwt <= 1'b0;
      b2_rsci_idat_bfwt <= 192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    end
    else begin
      b2_rsci_bcwt <= ~((~(b2_rsci_bcwt | b2_rsci_biwt)) | b2_rsci_bdwt);
      b2_rsci_idat_bfwt <= b2_rsci_idat_mxwt;
    end
  end

  function automatic [191:0] MUX_v_192_2_2;
    input [191:0] input_0;
    input [191:0] input_1;
    input [0:0] sel;
    reg [191:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_192_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_b2_rsci_b2_rsc_wait_ctrl
// ------------------------------------------------------------------


module econV0_core_b2_rsci_b2_rsc_wait_ctrl (
  core_wen, b2_rsci_oswt, b2_rsci_biwt, b2_rsci_bdwt, b2_rsci_bcwt, b2_rsci_irdy_core_sct,
      b2_rsci_ivld
);
  input core_wen;
  input b2_rsci_oswt;
  output b2_rsci_biwt;
  output b2_rsci_bdwt;
  input b2_rsci_bcwt;
  output b2_rsci_irdy_core_sct;
  input b2_rsci_ivld;


  // Interconnect Declarations
  wire b2_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign b2_rsci_bdwt = b2_rsci_oswt & core_wen;
  assign b2_rsci_biwt = b2_rsci_ogwt & b2_rsci_ivld;
  assign b2_rsci_ogwt = b2_rsci_oswt & (~ b2_rsci_bcwt);
  assign b2_rsci_irdy_core_sct = b2_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_w2_rsci_w2_rsc_wait_dp
// ------------------------------------------------------------------


module econV0_core_w2_rsci_w2_rsc_wait_dp (
  clk, rst, w2_rsci_oswt, w2_rsci_wen_comp, w2_rsci_idat_mxwt, w2_rsci_biwt, w2_rsci_bdwt,
      w2_rsci_bcwt, w2_rsci_idat
);
  input clk;
  input rst;
  input w2_rsci_oswt;
  output w2_rsci_wen_comp;
  output [9215:0] w2_rsci_idat_mxwt;
  input w2_rsci_biwt;
  input w2_rsci_bdwt;
  output w2_rsci_bcwt;
  reg w2_rsci_bcwt;
  input [9215:0] w2_rsci_idat;


  // Interconnect Declarations
  reg [9215:0] w2_rsci_idat_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign w2_rsci_wen_comp = (~ w2_rsci_oswt) | w2_rsci_biwt | w2_rsci_bcwt;
  assign w2_rsci_idat_mxwt = MUX_v_9216_2_2(w2_rsci_idat, w2_rsci_idat_bfwt, w2_rsci_bcwt);
  always @(posedge clk) begin
    if ( rst ) begin
      w2_rsci_bcwt <= 1'b0;
      w2_rsci_idat_bfwt <= {576'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
          , 576'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
          , 576'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
          , 576'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
          , 576'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
          , 576'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
          , 576'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
          , 576'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
          , 576'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
          , 576'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
          , 576'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
          , 576'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
          , 576'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
          , 576'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
          , 576'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
          , 576'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000};
    end
    else begin
      w2_rsci_bcwt <= ~((~(w2_rsci_bcwt | w2_rsci_biwt)) | w2_rsci_bdwt);
      w2_rsci_idat_bfwt <= w2_rsci_idat_mxwt;
    end
  end

  function automatic [9215:0] MUX_v_9216_2_2;
    input [9215:0] input_0;
    input [9215:0] input_1;
    input [0:0] sel;
    reg [9215:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_9216_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_w2_rsci_w2_rsc_wait_ctrl
// ------------------------------------------------------------------


module econV0_core_w2_rsci_w2_rsc_wait_ctrl (
  core_wen, w2_rsci_oswt, w2_rsci_biwt, w2_rsci_bdwt, w2_rsci_bcwt, w2_rsci_irdy_core_sct,
      w2_rsci_ivld
);
  input core_wen;
  input w2_rsci_oswt;
  output w2_rsci_biwt;
  output w2_rsci_bdwt;
  input w2_rsci_bcwt;
  output w2_rsci_irdy_core_sct;
  input w2_rsci_ivld;


  // Interconnect Declarations
  wire w2_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign w2_rsci_bdwt = w2_rsci_oswt & core_wen;
  assign w2_rsci_biwt = w2_rsci_ogwt & w2_rsci_ivld;
  assign w2_rsci_ogwt = w2_rsci_oswt & (~ w2_rsci_bcwt);
  assign w2_rsci_irdy_core_sct = w2_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_const_size_out_1_rsci_const_size_out_1_rsc_wait_ctrl
// ------------------------------------------------------------------


module econV0_core_const_size_out_1_rsci_const_size_out_1_rsc_wait_ctrl (
  core_wten, const_size_out_1_rsci_iswt0, const_size_out_1_rsci_ivld_core_sct
);
  input core_wten;
  input const_size_out_1_rsci_iswt0;
  output const_size_out_1_rsci_ivld_core_sct;



  // Interconnect Declarations for Component Instantiations 
  assign const_size_out_1_rsci_ivld_core_sct = const_size_out_1_rsci_iswt0 & (~ core_wten);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_const_size_in_1_rsci_const_size_in_1_rsc_wait_ctrl
// ------------------------------------------------------------------


module econV0_core_const_size_in_1_rsci_const_size_in_1_rsc_wait_ctrl (
  core_wten, const_size_in_1_rsci_iswt0, const_size_in_1_rsci_ivld_core_sct
);
  input core_wten;
  input const_size_in_1_rsci_iswt0;
  output const_size_in_1_rsci_ivld_core_sct;



  // Interconnect Declarations for Component Instantiations 
  assign const_size_in_1_rsci_ivld_core_sct = const_size_in_1_rsci_iswt0 & (~ core_wten);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_layer7_out_rsci_layer7_out_rsc_wait_dp
// ------------------------------------------------------------------


module econV0_core_layer7_out_rsci_layer7_out_rsc_wait_dp (
  clk, rst, layer7_out_rsci_oswt, layer7_out_rsci_wen_comp, layer7_out_rsci_biwt,
      layer7_out_rsci_bdwt, layer7_out_rsci_bcwt
);
  input clk;
  input rst;
  input layer7_out_rsci_oswt;
  output layer7_out_rsci_wen_comp;
  input layer7_out_rsci_biwt;
  input layer7_out_rsci_bdwt;
  output layer7_out_rsci_bcwt;
  reg layer7_out_rsci_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign layer7_out_rsci_wen_comp = (~ layer7_out_rsci_oswt) | layer7_out_rsci_biwt
      | layer7_out_rsci_bcwt;
  always @(posedge clk) begin
    if ( rst ) begin
      layer7_out_rsci_bcwt <= 1'b0;
    end
    else begin
      layer7_out_rsci_bcwt <= ~((~(layer7_out_rsci_bcwt | layer7_out_rsci_biwt))
          | layer7_out_rsci_bdwt);
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_layer7_out_rsci_layer7_out_rsc_wait_ctrl
// ------------------------------------------------------------------


module econV0_core_layer7_out_rsci_layer7_out_rsc_wait_ctrl (
  core_wen, layer7_out_rsci_oswt, layer7_out_rsci_irdy, layer7_out_rsci_biwt, layer7_out_rsci_bdwt,
      layer7_out_rsci_bcwt, layer7_out_rsci_ivld_core_sct
);
  input core_wen;
  input layer7_out_rsci_oswt;
  input layer7_out_rsci_irdy;
  output layer7_out_rsci_biwt;
  output layer7_out_rsci_bdwt;
  input layer7_out_rsci_bcwt;
  output layer7_out_rsci_ivld_core_sct;


  // Interconnect Declarations
  wire layer7_out_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign layer7_out_rsci_bdwt = layer7_out_rsci_oswt & core_wen;
  assign layer7_out_rsci_biwt = layer7_out_rsci_ogwt & layer7_out_rsci_irdy;
  assign layer7_out_rsci_ogwt = layer7_out_rsci_oswt & (~ layer7_out_rsci_bcwt);
  assign layer7_out_rsci_ivld_core_sct = layer7_out_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_input_48_rsci_input_48_rsc_wait_dp
// ------------------------------------------------------------------


module econV0_core_input_48_rsci_input_48_rsc_wait_dp (
  clk, rst, input_48_rsci_oswt, input_48_rsci_wen_comp, input_48_rsci_idat_mxwt,
      input_48_rsci_biwt, input_48_rsci_bdwt, input_48_rsci_bcwt, input_48_rsci_idat
);
  input clk;
  input rst;
  input input_48_rsci_oswt;
  output input_48_rsci_wen_comp;
  output [1055:0] input_48_rsci_idat_mxwt;
  input input_48_rsci_biwt;
  input input_48_rsci_bdwt;
  output input_48_rsci_bcwt;
  reg input_48_rsci_bcwt;
  input [1055:0] input_48_rsci_idat;


  // Interconnect Declarations
  reg [1055:0] input_48_rsci_idat_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign input_48_rsci_wen_comp = (~ input_48_rsci_oswt) | input_48_rsci_biwt | input_48_rsci_bcwt;
  assign input_48_rsci_idat_mxwt = MUX_v_1056_2_2(input_48_rsci_idat, input_48_rsci_idat_bfwt,
      input_48_rsci_bcwt);
  always @(posedge clk) begin
    if ( rst ) begin
      input_48_rsci_bcwt <= 1'b0;
      input_48_rsci_idat_bfwt <= {528'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
          , 528'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000};
    end
    else begin
      input_48_rsci_bcwt <= ~((~(input_48_rsci_bcwt | input_48_rsci_biwt)) | input_48_rsci_bdwt);
      input_48_rsci_idat_bfwt <= input_48_rsci_idat_mxwt;
    end
  end

  function automatic [1055:0] MUX_v_1056_2_2;
    input [1055:0] input_0;
    input [1055:0] input_1;
    input [0:0] sel;
    reg [1055:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_1056_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_input_48_rsci_input_48_rsc_wait_ctrl
// ------------------------------------------------------------------


module econV0_core_input_48_rsci_input_48_rsc_wait_ctrl (
  core_wen, input_48_rsci_oswt, input_48_rsci_biwt, input_48_rsci_bdwt, input_48_rsci_bcwt,
      input_48_rsci_irdy_core_sct, input_48_rsci_ivld
);
  input core_wen;
  input input_48_rsci_oswt;
  output input_48_rsci_biwt;
  output input_48_rsci_bdwt;
  input input_48_rsci_bcwt;
  output input_48_rsci_irdy_core_sct;
  input input_48_rsci_ivld;


  // Interconnect Declarations
  wire input_48_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign input_48_rsci_bdwt = input_48_rsci_oswt & core_wen;
  assign input_48_rsci_biwt = input_48_rsci_ogwt & input_48_rsci_ivld;
  assign input_48_rsci_ogwt = input_48_rsci_oswt & (~ input_48_rsci_bcwt);
  assign input_48_rsci_irdy_core_sct = input_48_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_b6_rsc_triosy_obj
// ------------------------------------------------------------------


module econV0_core_b6_rsc_triosy_obj (
  b6_rsc_triosy_lz, core_wten, b6_rsc_triosy_obj_iswt0
);
  output b6_rsc_triosy_lz;
  input core_wten;
  input b6_rsc_triosy_obj_iswt0;


  // Interconnect Declarations
  wire b6_rsc_triosy_obj_ld_core_sct;


  // Interconnect Declarations for Component Instantiations 
  mgc_io_sync_v2 #(.valid(32'sd0)) b6_rsc_triosy_obj (
      .ld(b6_rsc_triosy_obj_ld_core_sct),
      .lz(b6_rsc_triosy_lz)
    );
  econV0_core_b6_rsc_triosy_obj_b6_rsc_triosy_wait_ctrl econV0_core_b6_rsc_triosy_obj_b6_rsc_triosy_wait_ctrl_inst
      (
      .core_wten(core_wten),
      .b6_rsc_triosy_obj_iswt0(b6_rsc_triosy_obj_iswt0),
      .b6_rsc_triosy_obj_ld_core_sct(b6_rsc_triosy_obj_ld_core_sct)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_w6_rsc_triosy_obj
// ------------------------------------------------------------------


module econV0_core_w6_rsc_triosy_obj (
  w6_rsc_triosy_lz, core_wten, w6_rsc_triosy_obj_iswt0
);
  output w6_rsc_triosy_lz;
  input core_wten;
  input w6_rsc_triosy_obj_iswt0;


  // Interconnect Declarations
  wire w6_rsc_triosy_obj_ld_core_sct;


  // Interconnect Declarations for Component Instantiations 
  mgc_io_sync_v2 #(.valid(32'sd0)) w6_rsc_triosy_obj (
      .ld(w6_rsc_triosy_obj_ld_core_sct),
      .lz(w6_rsc_triosy_lz)
    );
  econV0_core_w6_rsc_triosy_obj_w6_rsc_triosy_wait_ctrl econV0_core_w6_rsc_triosy_obj_w6_rsc_triosy_wait_ctrl_inst
      (
      .core_wten(core_wten),
      .w6_rsc_triosy_obj_iswt0(w6_rsc_triosy_obj_iswt0),
      .w6_rsc_triosy_obj_ld_core_sct(w6_rsc_triosy_obj_ld_core_sct)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_b4_rsc_triosy_obj
// ------------------------------------------------------------------


module econV0_core_b4_rsc_triosy_obj (
  b4_rsc_triosy_lz, core_wten, b4_rsc_triosy_obj_iswt0
);
  output b4_rsc_triosy_lz;
  input core_wten;
  input b4_rsc_triosy_obj_iswt0;


  // Interconnect Declarations
  wire b4_rsc_triosy_obj_ld_core_sct;


  // Interconnect Declarations for Component Instantiations 
  mgc_io_sync_v2 #(.valid(32'sd0)) b4_rsc_triosy_obj (
      .ld(b4_rsc_triosy_obj_ld_core_sct),
      .lz(b4_rsc_triosy_lz)
    );
  econV0_core_b4_rsc_triosy_obj_b4_rsc_triosy_wait_ctrl econV0_core_b4_rsc_triosy_obj_b4_rsc_triosy_wait_ctrl_inst
      (
      .core_wten(core_wten),
      .b4_rsc_triosy_obj_iswt0(b4_rsc_triosy_obj_iswt0),
      .b4_rsc_triosy_obj_ld_core_sct(b4_rsc_triosy_obj_ld_core_sct)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_w4_rsc_triosy_obj
// ------------------------------------------------------------------


module econV0_core_w4_rsc_triosy_obj (
  w4_rsc_triosy_lz, core_wten, w4_rsc_triosy_obj_iswt0
);
  output w4_rsc_triosy_lz;
  input core_wten;
  input w4_rsc_triosy_obj_iswt0;


  // Interconnect Declarations
  wire w4_rsc_triosy_obj_ld_core_sct;


  // Interconnect Declarations for Component Instantiations 
  mgc_io_sync_v2 #(.valid(32'sd0)) w4_rsc_triosy_obj (
      .ld(w4_rsc_triosy_obj_ld_core_sct),
      .lz(w4_rsc_triosy_lz)
    );
  econV0_core_w4_rsc_triosy_obj_w4_rsc_triosy_wait_ctrl econV0_core_w4_rsc_triosy_obj_w4_rsc_triosy_wait_ctrl_inst
      (
      .core_wten(core_wten),
      .w4_rsc_triosy_obj_iswt0(w4_rsc_triosy_obj_iswt0),
      .w4_rsc_triosy_obj_ld_core_sct(w4_rsc_triosy_obj_ld_core_sct)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_b2_rsc_triosy_obj
// ------------------------------------------------------------------


module econV0_core_b2_rsc_triosy_obj (
  b2_rsc_triosy_lz, core_wten, b2_rsc_triosy_obj_iswt0
);
  output b2_rsc_triosy_lz;
  input core_wten;
  input b2_rsc_triosy_obj_iswt0;


  // Interconnect Declarations
  wire b2_rsc_triosy_obj_ld_core_sct;


  // Interconnect Declarations for Component Instantiations 
  mgc_io_sync_v2 #(.valid(32'sd0)) b2_rsc_triosy_obj (
      .ld(b2_rsc_triosy_obj_ld_core_sct),
      .lz(b2_rsc_triosy_lz)
    );
  econV0_core_b2_rsc_triosy_obj_b2_rsc_triosy_wait_ctrl econV0_core_b2_rsc_triosy_obj_b2_rsc_triosy_wait_ctrl_inst
      (
      .core_wten(core_wten),
      .b2_rsc_triosy_obj_iswt0(b2_rsc_triosy_obj_iswt0),
      .b2_rsc_triosy_obj_ld_core_sct(b2_rsc_triosy_obj_ld_core_sct)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_w2_rsc_triosy_obj
// ------------------------------------------------------------------


module econV0_core_w2_rsc_triosy_obj (
  w2_rsc_triosy_lz, core_wten, w2_rsc_triosy_obj_iswt0
);
  output w2_rsc_triosy_lz;
  input core_wten;
  input w2_rsc_triosy_obj_iswt0;


  // Interconnect Declarations
  wire w2_rsc_triosy_obj_ld_core_sct;


  // Interconnect Declarations for Component Instantiations 
  mgc_io_sync_v2 #(.valid(32'sd0)) w2_rsc_triosy_obj (
      .ld(w2_rsc_triosy_obj_ld_core_sct),
      .lz(w2_rsc_triosy_lz)
    );
  econV0_core_w2_rsc_triosy_obj_w2_rsc_triosy_wait_ctrl econV0_core_w2_rsc_triosy_obj_w2_rsc_triosy_wait_ctrl_inst
      (
      .core_wten(core_wten),
      .w2_rsc_triosy_obj_iswt0(w2_rsc_triosy_obj_iswt0),
      .w2_rsc_triosy_obj_ld_core_sct(w2_rsc_triosy_obj_ld_core_sct)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_const_size_out_1_rsc_triosy_obj
// ------------------------------------------------------------------


module econV0_core_const_size_out_1_rsc_triosy_obj (
  const_size_out_1_rsc_triosy_lz, core_wten, const_size_out_1_rsc_triosy_obj_iswt0
);
  output const_size_out_1_rsc_triosy_lz;
  input core_wten;
  input const_size_out_1_rsc_triosy_obj_iswt0;


  // Interconnect Declarations
  wire const_size_out_1_rsc_triosy_obj_ld_core_sct;


  // Interconnect Declarations for Component Instantiations 
  mgc_io_sync_v2 #(.valid(32'sd0)) const_size_out_1_rsc_triosy_obj (
      .ld(const_size_out_1_rsc_triosy_obj_ld_core_sct),
      .lz(const_size_out_1_rsc_triosy_lz)
    );
  econV0_core_const_size_out_1_rsc_triosy_obj_const_size_out_1_rsc_triosy_wait_ctrl
      econV0_core_const_size_out_1_rsc_triosy_obj_const_size_out_1_rsc_triosy_wait_ctrl_inst
      (
      .core_wten(core_wten),
      .const_size_out_1_rsc_triosy_obj_iswt0(const_size_out_1_rsc_triosy_obj_iswt0),
      .const_size_out_1_rsc_triosy_obj_ld_core_sct(const_size_out_1_rsc_triosy_obj_ld_core_sct)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_const_size_in_1_rsc_triosy_obj
// ------------------------------------------------------------------


module econV0_core_const_size_in_1_rsc_triosy_obj (
  const_size_in_1_rsc_triosy_lz, core_wten, const_size_in_1_rsc_triosy_obj_iswt0
);
  output const_size_in_1_rsc_triosy_lz;
  input core_wten;
  input const_size_in_1_rsc_triosy_obj_iswt0;


  // Interconnect Declarations
  wire const_size_in_1_rsc_triosy_obj_ld_core_sct;


  // Interconnect Declarations for Component Instantiations 
  mgc_io_sync_v2 #(.valid(32'sd0)) const_size_in_1_rsc_triosy_obj (
      .ld(const_size_in_1_rsc_triosy_obj_ld_core_sct),
      .lz(const_size_in_1_rsc_triosy_lz)
    );
  econV0_core_const_size_in_1_rsc_triosy_obj_const_size_in_1_rsc_triosy_wait_ctrl
      econV0_core_const_size_in_1_rsc_triosy_obj_const_size_in_1_rsc_triosy_wait_ctrl_inst
      (
      .core_wten(core_wten),
      .const_size_in_1_rsc_triosy_obj_iswt0(const_size_in_1_rsc_triosy_obj_iswt0),
      .const_size_in_1_rsc_triosy_obj_ld_core_sct(const_size_in_1_rsc_triosy_obj_ld_core_sct)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_layer7_out_rsc_triosy_obj
// ------------------------------------------------------------------


module econV0_core_layer7_out_rsc_triosy_obj (
  layer7_out_rsc_triosy_lz, core_wten, layer7_out_rsc_triosy_obj_iswt0
);
  output layer7_out_rsc_triosy_lz;
  input core_wten;
  input layer7_out_rsc_triosy_obj_iswt0;


  // Interconnect Declarations
  wire layer7_out_rsc_triosy_obj_ld_core_sct;


  // Interconnect Declarations for Component Instantiations 
  mgc_io_sync_v2 #(.valid(32'sd0)) layer7_out_rsc_triosy_obj (
      .ld(layer7_out_rsc_triosy_obj_ld_core_sct),
      .lz(layer7_out_rsc_triosy_lz)
    );
  econV0_core_layer7_out_rsc_triosy_obj_layer7_out_rsc_triosy_wait_ctrl econV0_core_layer7_out_rsc_triosy_obj_layer7_out_rsc_triosy_wait_ctrl_inst
      (
      .core_wten(core_wten),
      .layer7_out_rsc_triosy_obj_iswt0(layer7_out_rsc_triosy_obj_iswt0),
      .layer7_out_rsc_triosy_obj_ld_core_sct(layer7_out_rsc_triosy_obj_ld_core_sct)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_input_48_rsc_triosy_obj
// ------------------------------------------------------------------


module econV0_core_input_48_rsc_triosy_obj (
  input_48_rsc_triosy_lz, core_wten, input_48_rsc_triosy_obj_iswt0
);
  output input_48_rsc_triosy_lz;
  input core_wten;
  input input_48_rsc_triosy_obj_iswt0;


  // Interconnect Declarations
  wire input_48_rsc_triosy_obj_ld_core_sct;


  // Interconnect Declarations for Component Instantiations 
  mgc_io_sync_v2 #(.valid(32'sd0)) input_48_rsc_triosy_obj (
      .ld(input_48_rsc_triosy_obj_ld_core_sct),
      .lz(input_48_rsc_triosy_lz)
    );
  econV0_core_input_48_rsc_triosy_obj_input_48_rsc_triosy_wait_ctrl econV0_core_input_48_rsc_triosy_obj_input_48_rsc_triosy_wait_ctrl_inst
      (
      .core_wten(core_wten),
      .input_48_rsc_triosy_obj_iswt0(input_48_rsc_triosy_obj_iswt0),
      .input_48_rsc_triosy_obj_ld_core_sct(input_48_rsc_triosy_obj_ld_core_sct)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_b6_rsci
// ------------------------------------------------------------------


module econV0_core_b6_rsci (
  clk, rst, b6_rsc_dat, b6_rsc_vld, b6_rsc_rdy, core_wen, b6_rsci_oswt, b6_rsci_wen_comp,
      b6_rsci_idat_mxwt
);
  input clk;
  input rst;
  input [23:0] b6_rsc_dat;
  input b6_rsc_vld;
  output b6_rsc_rdy;
  input core_wen;
  input b6_rsci_oswt;
  output b6_rsci_wen_comp;
  output [23:0] b6_rsci_idat_mxwt;


  // Interconnect Declarations
  wire b6_rsci_biwt;
  wire b6_rsci_bdwt;
  wire b6_rsci_bcwt;
  wire b6_rsci_irdy_core_sct;
  wire b6_rsci_ivld;
  wire [23:0] b6_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd31),
  .width(32'sd24)) b6_rsci (
      .rdy(b6_rsc_rdy),
      .vld(b6_rsc_vld),
      .dat(b6_rsc_dat),
      .irdy(b6_rsci_irdy_core_sct),
      .ivld(b6_rsci_ivld),
      .idat(b6_rsci_idat)
    );
  econV0_core_b6_rsci_b6_rsc_wait_ctrl econV0_core_b6_rsci_b6_rsc_wait_ctrl_inst
      (
      .core_wen(core_wen),
      .b6_rsci_oswt(b6_rsci_oswt),
      .b6_rsci_biwt(b6_rsci_biwt),
      .b6_rsci_bdwt(b6_rsci_bdwt),
      .b6_rsci_bcwt(b6_rsci_bcwt),
      .b6_rsci_irdy_core_sct(b6_rsci_irdy_core_sct),
      .b6_rsci_ivld(b6_rsci_ivld)
    );
  econV0_core_b6_rsci_b6_rsc_wait_dp econV0_core_b6_rsci_b6_rsc_wait_dp_inst (
      .clk(clk),
      .rst(rst),
      .b6_rsci_oswt(b6_rsci_oswt),
      .b6_rsci_wen_comp(b6_rsci_wen_comp),
      .b6_rsci_idat_mxwt(b6_rsci_idat_mxwt),
      .b6_rsci_biwt(b6_rsci_biwt),
      .b6_rsci_bdwt(b6_rsci_bdwt),
      .b6_rsci_bcwt(b6_rsci_bcwt),
      .b6_rsci_idat(b6_rsci_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_w6_rsci
// ------------------------------------------------------------------


module econV0_core_w6_rsci (
  clk, rst, w6_rsc_dat, w6_rsc_vld, w6_rsc_rdy, core_wen, w6_rsci_oswt, w6_rsci_wen_comp,
      w6_rsci_idat_mxwt
);
  input clk;
  input rst;
  input [143:0] w6_rsc_dat;
  input w6_rsc_vld;
  output w6_rsc_rdy;
  input core_wen;
  input w6_rsci_oswt;
  output w6_rsci_wen_comp;
  output [143:0] w6_rsci_idat_mxwt;


  // Interconnect Declarations
  wire w6_rsci_biwt;
  wire w6_rsci_bdwt;
  wire w6_rsci_bcwt;
  wire w6_rsci_irdy_core_sct;
  wire w6_rsci_ivld;
  wire [143:0] w6_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd30),
  .width(32'sd144)) w6_rsci (
      .rdy(w6_rsc_rdy),
      .vld(w6_rsc_vld),
      .dat(w6_rsc_dat),
      .irdy(w6_rsci_irdy_core_sct),
      .ivld(w6_rsci_ivld),
      .idat(w6_rsci_idat)
    );
  econV0_core_w6_rsci_w6_rsc_wait_ctrl econV0_core_w6_rsci_w6_rsc_wait_ctrl_inst
      (
      .core_wen(core_wen),
      .w6_rsci_oswt(w6_rsci_oswt),
      .w6_rsci_biwt(w6_rsci_biwt),
      .w6_rsci_bdwt(w6_rsci_bdwt),
      .w6_rsci_bcwt(w6_rsci_bcwt),
      .w6_rsci_irdy_core_sct(w6_rsci_irdy_core_sct),
      .w6_rsci_ivld(w6_rsci_ivld)
    );
  econV0_core_w6_rsci_w6_rsc_wait_dp econV0_core_w6_rsci_w6_rsc_wait_dp_inst (
      .clk(clk),
      .rst(rst),
      .w6_rsci_oswt(w6_rsci_oswt),
      .w6_rsci_wen_comp(w6_rsci_wen_comp),
      .w6_rsci_idat_mxwt(w6_rsci_idat_mxwt),
      .w6_rsci_biwt(w6_rsci_biwt),
      .w6_rsci_bdwt(w6_rsci_bdwt),
      .w6_rsci_bcwt(w6_rsci_bcwt),
      .w6_rsci_idat(w6_rsci_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_b4_rsci
// ------------------------------------------------------------------


module econV0_core_b4_rsci (
  clk, rst, b4_rsc_dat, b4_rsc_vld, b4_rsc_rdy, core_wen, b4_rsci_oswt, b4_rsci_wen_comp,
      b4_rsci_idat_mxwt
);
  input clk;
  input rst;
  input [47:0] b4_rsc_dat;
  input b4_rsc_vld;
  output b4_rsc_rdy;
  input core_wen;
  input b4_rsci_oswt;
  output b4_rsci_wen_comp;
  output [47:0] b4_rsci_idat_mxwt;


  // Interconnect Declarations
  wire b4_rsci_biwt;
  wire b4_rsci_bdwt;
  wire b4_rsci_bcwt;
  wire b4_rsci_irdy_core_sct;
  wire b4_rsci_ivld;
  wire [47:0] b4_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd29),
  .width(32'sd48)) b4_rsci (
      .rdy(b4_rsc_rdy),
      .vld(b4_rsc_vld),
      .dat(b4_rsc_dat),
      .irdy(b4_rsci_irdy_core_sct),
      .ivld(b4_rsci_ivld),
      .idat(b4_rsci_idat)
    );
  econV0_core_b4_rsci_b4_rsc_wait_ctrl econV0_core_b4_rsci_b4_rsc_wait_ctrl_inst
      (
      .core_wen(core_wen),
      .b4_rsci_oswt(b4_rsci_oswt),
      .b4_rsci_biwt(b4_rsci_biwt),
      .b4_rsci_bdwt(b4_rsci_bdwt),
      .b4_rsci_bcwt(b4_rsci_bcwt),
      .b4_rsci_irdy_core_sct(b4_rsci_irdy_core_sct),
      .b4_rsci_ivld(b4_rsci_ivld)
    );
  econV0_core_b4_rsci_b4_rsc_wait_dp econV0_core_b4_rsci_b4_rsc_wait_dp_inst (
      .clk(clk),
      .rst(rst),
      .b4_rsci_oswt(b4_rsci_oswt),
      .b4_rsci_wen_comp(b4_rsci_wen_comp),
      .b4_rsci_idat_mxwt(b4_rsci_idat_mxwt),
      .b4_rsci_biwt(b4_rsci_biwt),
      .b4_rsci_bdwt(b4_rsci_bdwt),
      .b4_rsci_bcwt(b4_rsci_bcwt),
      .b4_rsci_idat(b4_rsci_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_w4_rsci
// ------------------------------------------------------------------


module econV0_core_w4_rsci (
  clk, rst, w4_rsc_dat, w4_rsc_vld, w4_rsc_rdy, core_wen, w4_rsci_oswt, w4_rsci_wen_comp,
      w4_rsci_idat_mxwt
);
  input clk;
  input rst;
  input [1151:0] w4_rsc_dat;
  input w4_rsc_vld;
  output w4_rsc_rdy;
  input core_wen;
  input w4_rsci_oswt;
  output w4_rsci_wen_comp;
  output [1151:0] w4_rsci_idat_mxwt;


  // Interconnect Declarations
  wire w4_rsci_biwt;
  wire w4_rsci_bdwt;
  wire w4_rsci_bcwt;
  wire w4_rsci_irdy_core_sct;
  wire w4_rsci_ivld;
  wire [1151:0] w4_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd28),
  .width(32'sd1152)) w4_rsci (
      .rdy(w4_rsc_rdy),
      .vld(w4_rsc_vld),
      .dat(w4_rsc_dat),
      .irdy(w4_rsci_irdy_core_sct),
      .ivld(w4_rsci_ivld),
      .idat(w4_rsci_idat)
    );
  econV0_core_w4_rsci_w4_rsc_wait_ctrl econV0_core_w4_rsci_w4_rsc_wait_ctrl_inst
      (
      .core_wen(core_wen),
      .w4_rsci_oswt(w4_rsci_oswt),
      .w4_rsci_biwt(w4_rsci_biwt),
      .w4_rsci_bdwt(w4_rsci_bdwt),
      .w4_rsci_bcwt(w4_rsci_bcwt),
      .w4_rsci_irdy_core_sct(w4_rsci_irdy_core_sct),
      .w4_rsci_ivld(w4_rsci_ivld)
    );
  econV0_core_w4_rsci_w4_rsc_wait_dp econV0_core_w4_rsci_w4_rsc_wait_dp_inst (
      .clk(clk),
      .rst(rst),
      .w4_rsci_oswt(w4_rsci_oswt),
      .w4_rsci_wen_comp(w4_rsci_wen_comp),
      .w4_rsci_idat_mxwt(w4_rsci_idat_mxwt),
      .w4_rsci_biwt(w4_rsci_biwt),
      .w4_rsci_bdwt(w4_rsci_bdwt),
      .w4_rsci_bcwt(w4_rsci_bcwt),
      .w4_rsci_idat(w4_rsci_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_b2_rsci
// ------------------------------------------------------------------


module econV0_core_b2_rsci (
  clk, rst, b2_rsc_dat, b2_rsc_vld, b2_rsc_rdy, core_wen, b2_rsci_oswt, b2_rsci_wen_comp,
      b2_rsci_idat_mxwt
);
  input clk;
  input rst;
  input [191:0] b2_rsc_dat;
  input b2_rsc_vld;
  output b2_rsc_rdy;
  input core_wen;
  input b2_rsci_oswt;
  output b2_rsci_wen_comp;
  output [191:0] b2_rsci_idat_mxwt;


  // Interconnect Declarations
  wire b2_rsci_biwt;
  wire b2_rsci_bdwt;
  wire b2_rsci_bcwt;
  wire b2_rsci_irdy_core_sct;
  wire b2_rsci_ivld;
  wire [191:0] b2_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd27),
  .width(32'sd192)) b2_rsci (
      .rdy(b2_rsc_rdy),
      .vld(b2_rsc_vld),
      .dat(b2_rsc_dat),
      .irdy(b2_rsci_irdy_core_sct),
      .ivld(b2_rsci_ivld),
      .idat(b2_rsci_idat)
    );
  econV0_core_b2_rsci_b2_rsc_wait_ctrl econV0_core_b2_rsci_b2_rsc_wait_ctrl_inst
      (
      .core_wen(core_wen),
      .b2_rsci_oswt(b2_rsci_oswt),
      .b2_rsci_biwt(b2_rsci_biwt),
      .b2_rsci_bdwt(b2_rsci_bdwt),
      .b2_rsci_bcwt(b2_rsci_bcwt),
      .b2_rsci_irdy_core_sct(b2_rsci_irdy_core_sct),
      .b2_rsci_ivld(b2_rsci_ivld)
    );
  econV0_core_b2_rsci_b2_rsc_wait_dp econV0_core_b2_rsci_b2_rsc_wait_dp_inst (
      .clk(clk),
      .rst(rst),
      .b2_rsci_oswt(b2_rsci_oswt),
      .b2_rsci_wen_comp(b2_rsci_wen_comp),
      .b2_rsci_idat_mxwt(b2_rsci_idat_mxwt),
      .b2_rsci_biwt(b2_rsci_biwt),
      .b2_rsci_bdwt(b2_rsci_bdwt),
      .b2_rsci_bcwt(b2_rsci_bcwt),
      .b2_rsci_idat(b2_rsci_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_w2_rsci
// ------------------------------------------------------------------


module econV0_core_w2_rsci (
  clk, rst, w2_rsc_dat, w2_rsc_vld, w2_rsc_rdy, core_wen, w2_rsci_oswt, w2_rsci_wen_comp,
      w2_rsci_idat_mxwt
);
  input clk;
  input rst;
  input [9215:0] w2_rsc_dat;
  input w2_rsc_vld;
  output w2_rsc_rdy;
  input core_wen;
  input w2_rsci_oswt;
  output w2_rsci_wen_comp;
  output [9215:0] w2_rsci_idat_mxwt;


  // Interconnect Declarations
  wire w2_rsci_biwt;
  wire w2_rsci_bdwt;
  wire w2_rsci_bcwt;
  wire w2_rsci_irdy_core_sct;
  wire w2_rsci_ivld;
  wire [9215:0] w2_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd26),
  .width(32'sd9216)) w2_rsci (
      .rdy(w2_rsc_rdy),
      .vld(w2_rsc_vld),
      .dat(w2_rsc_dat),
      .irdy(w2_rsci_irdy_core_sct),
      .ivld(w2_rsci_ivld),
      .idat(w2_rsci_idat)
    );
  econV0_core_w2_rsci_w2_rsc_wait_ctrl econV0_core_w2_rsci_w2_rsc_wait_ctrl_inst
      (
      .core_wen(core_wen),
      .w2_rsci_oswt(w2_rsci_oswt),
      .w2_rsci_biwt(w2_rsci_biwt),
      .w2_rsci_bdwt(w2_rsci_bdwt),
      .w2_rsci_bcwt(w2_rsci_bcwt),
      .w2_rsci_irdy_core_sct(w2_rsci_irdy_core_sct),
      .w2_rsci_ivld(w2_rsci_ivld)
    );
  econV0_core_w2_rsci_w2_rsc_wait_dp econV0_core_w2_rsci_w2_rsc_wait_dp_inst (
      .clk(clk),
      .rst(rst),
      .w2_rsci_oswt(w2_rsci_oswt),
      .w2_rsci_wen_comp(w2_rsci_wen_comp),
      .w2_rsci_idat_mxwt(w2_rsci_idat_mxwt),
      .w2_rsci_biwt(w2_rsci_biwt),
      .w2_rsci_bdwt(w2_rsci_bdwt),
      .w2_rsci_bcwt(w2_rsci_bcwt),
      .w2_rsci_idat(w2_rsci_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_const_size_out_1_rsci
// ------------------------------------------------------------------


module econV0_core_const_size_out_1_rsci (
  const_size_out_1_rsc_dat, const_size_out_1_rsc_vld, core_wten, const_size_out_1_rsci_iswt0
);
  output [15:0] const_size_out_1_rsc_dat;
  output const_size_out_1_rsc_vld;
  input core_wten;
  input const_size_out_1_rsci_iswt0;


  // Interconnect Declarations
  wire const_size_out_1_rsci_ivld_core_sct;


  // Interconnect Declarations for Component Instantiations 
  ccs_out_vld_v1 #(.rscid(32'sd25),
  .width(32'sd16)) const_size_out_1_rsci (
      .ivld(const_size_out_1_rsci_ivld_core_sct),
      .idat(16'b0000000000000011),
      .vld(const_size_out_1_rsc_vld),
      .dat(const_size_out_1_rsc_dat)
    );
  econV0_core_const_size_out_1_rsci_const_size_out_1_rsc_wait_ctrl econV0_core_const_size_out_1_rsci_const_size_out_1_rsc_wait_ctrl_inst
      (
      .core_wten(core_wten),
      .const_size_out_1_rsci_iswt0(const_size_out_1_rsci_iswt0),
      .const_size_out_1_rsci_ivld_core_sct(const_size_out_1_rsci_ivld_core_sct)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_const_size_in_1_rsci
// ------------------------------------------------------------------


module econV0_core_const_size_in_1_rsci (
  const_size_in_1_rsc_dat, const_size_in_1_rsc_vld, core_wten, const_size_in_1_rsci_iswt0
);
  output [15:0] const_size_in_1_rsc_dat;
  output const_size_in_1_rsc_vld;
  input core_wten;
  input const_size_in_1_rsci_iswt0;


  // Interconnect Declarations
  wire const_size_in_1_rsci_ivld_core_sct;


  // Interconnect Declarations for Component Instantiations 
  ccs_out_vld_v1 #(.rscid(32'sd24),
  .width(32'sd16)) const_size_in_1_rsci (
      .ivld(const_size_in_1_rsci_ivld_core_sct),
      .idat(16'b0000000000110000),
      .vld(const_size_in_1_rsc_vld),
      .dat(const_size_in_1_rsc_dat)
    );
  econV0_core_const_size_in_1_rsci_const_size_in_1_rsc_wait_ctrl econV0_core_const_size_in_1_rsci_const_size_in_1_rsc_wait_ctrl_inst
      (
      .core_wten(core_wten),
      .const_size_in_1_rsci_iswt0(const_size_in_1_rsci_iswt0),
      .const_size_in_1_rsci_ivld_core_sct(const_size_in_1_rsci_ivld_core_sct)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_layer7_out_rsci
// ------------------------------------------------------------------


module econV0_core_layer7_out_rsci (
  clk, rst, layer7_out_rsc_dat, layer7_out_rsc_vld, layer7_out_rsc_rdy, core_wen,
      layer7_out_rsci_oswt, layer7_out_rsci_wen_comp, layer7_out_rsci_idat
);
  input clk;
  input rst;
  output [53:0] layer7_out_rsc_dat;
  output layer7_out_rsc_vld;
  input layer7_out_rsc_rdy;
  input core_wen;
  input layer7_out_rsci_oswt;
  output layer7_out_rsci_wen_comp;
  input [53:0] layer7_out_rsci_idat;


  // Interconnect Declarations
  wire layer7_out_rsci_irdy;
  wire layer7_out_rsci_biwt;
  wire layer7_out_rsci_bdwt;
  wire layer7_out_rsci_bcwt;
  wire layer7_out_rsci_ivld_core_sct;


  // Interconnect Declarations for Component Instantiations 
  ccs_out_wait_v1 #(.rscid(32'sd23),
  .width(32'sd54)) layer7_out_rsci (
      .irdy(layer7_out_rsci_irdy),
      .ivld(layer7_out_rsci_ivld_core_sct),
      .idat(layer7_out_rsci_idat),
      .rdy(layer7_out_rsc_rdy),
      .vld(layer7_out_rsc_vld),
      .dat(layer7_out_rsc_dat)
    );
  econV0_core_layer7_out_rsci_layer7_out_rsc_wait_ctrl econV0_core_layer7_out_rsci_layer7_out_rsc_wait_ctrl_inst
      (
      .core_wen(core_wen),
      .layer7_out_rsci_oswt(layer7_out_rsci_oswt),
      .layer7_out_rsci_irdy(layer7_out_rsci_irdy),
      .layer7_out_rsci_biwt(layer7_out_rsci_biwt),
      .layer7_out_rsci_bdwt(layer7_out_rsci_bdwt),
      .layer7_out_rsci_bcwt(layer7_out_rsci_bcwt),
      .layer7_out_rsci_ivld_core_sct(layer7_out_rsci_ivld_core_sct)
    );
  econV0_core_layer7_out_rsci_layer7_out_rsc_wait_dp econV0_core_layer7_out_rsci_layer7_out_rsc_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .layer7_out_rsci_oswt(layer7_out_rsci_oswt),
      .layer7_out_rsci_wen_comp(layer7_out_rsci_wen_comp),
      .layer7_out_rsci_biwt(layer7_out_rsci_biwt),
      .layer7_out_rsci_bdwt(layer7_out_rsci_bdwt),
      .layer7_out_rsci_bcwt(layer7_out_rsci_bcwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core_input_48_rsci
// ------------------------------------------------------------------


module econV0_core_input_48_rsci (
  clk, rst, input_48_rsc_dat, input_48_rsc_vld, input_48_rsc_rdy, core_wen, input_48_rsci_oswt,
      input_48_rsci_wen_comp, input_48_rsci_idat_mxwt
);
  input clk;
  input rst;
  input [1055:0] input_48_rsc_dat;
  input input_48_rsc_vld;
  output input_48_rsc_rdy;
  input core_wen;
  input input_48_rsci_oswt;
  output input_48_rsci_wen_comp;
  output [1055:0] input_48_rsci_idat_mxwt;


  // Interconnect Declarations
  wire input_48_rsci_biwt;
  wire input_48_rsci_bdwt;
  wire input_48_rsci_bcwt;
  wire input_48_rsci_irdy_core_sct;
  wire input_48_rsci_ivld;
  wire [1055:0] input_48_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd22),
  .width(32'sd1056)) input_48_rsci (
      .rdy(input_48_rsc_rdy),
      .vld(input_48_rsc_vld),
      .dat(input_48_rsc_dat),
      .irdy(input_48_rsci_irdy_core_sct),
      .ivld(input_48_rsci_ivld),
      .idat(input_48_rsci_idat)
    );
  econV0_core_input_48_rsci_input_48_rsc_wait_ctrl econV0_core_input_48_rsci_input_48_rsc_wait_ctrl_inst
      (
      .core_wen(core_wen),
      .input_48_rsci_oswt(input_48_rsci_oswt),
      .input_48_rsci_biwt(input_48_rsci_biwt),
      .input_48_rsci_bdwt(input_48_rsci_bdwt),
      .input_48_rsci_bcwt(input_48_rsci_bcwt),
      .input_48_rsci_irdy_core_sct(input_48_rsci_irdy_core_sct),
      .input_48_rsci_ivld(input_48_rsci_ivld)
    );
  econV0_core_input_48_rsci_input_48_rsc_wait_dp econV0_core_input_48_rsci_input_48_rsc_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .input_48_rsci_oswt(input_48_rsci_oswt),
      .input_48_rsci_wen_comp(input_48_rsci_wen_comp),
      .input_48_rsci_idat_mxwt(input_48_rsci_idat_mxwt),
      .input_48_rsci_biwt(input_48_rsci_biwt),
      .input_48_rsci_bdwt(input_48_rsci_bdwt),
      .input_48_rsci_bcwt(input_48_rsci_bcwt),
      .input_48_rsci_idat(input_48_rsci_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0_core
// ------------------------------------------------------------------


module econV0_core (
  clk, rst, input_48_rsc_dat, input_48_rsc_vld, input_48_rsc_rdy, input_48_rsc_triosy_lz,
      layer7_out_rsc_dat, layer7_out_rsc_vld, layer7_out_rsc_rdy, layer7_out_rsc_triosy_lz,
      const_size_in_1_rsc_dat, const_size_in_1_rsc_vld, const_size_in_1_rsc_triosy_lz,
      const_size_out_1_rsc_dat, const_size_out_1_rsc_vld, const_size_out_1_rsc_triosy_lz,
      w2_rsc_dat, w2_rsc_vld, w2_rsc_rdy, w2_rsc_triosy_lz, b2_rsc_dat, b2_rsc_vld,
      b2_rsc_rdy, b2_rsc_triosy_lz, w4_rsc_dat, w4_rsc_vld, w4_rsc_rdy, w4_rsc_triosy_lz,
      b4_rsc_dat, b4_rsc_vld, b4_rsc_rdy, b4_rsc_triosy_lz, w6_rsc_dat, w6_rsc_vld,
      w6_rsc_rdy, w6_rsc_triosy_lz, b6_rsc_dat, b6_rsc_vld, b6_rsc_rdy, b6_rsc_triosy_lz
);
  input clk;
  input rst;
  input [1055:0] input_48_rsc_dat;
  input input_48_rsc_vld;
  output input_48_rsc_rdy;
  output input_48_rsc_triosy_lz;
  output [53:0] layer7_out_rsc_dat;
  output layer7_out_rsc_vld;
  input layer7_out_rsc_rdy;
  output layer7_out_rsc_triosy_lz;
  output [15:0] const_size_in_1_rsc_dat;
  output const_size_in_1_rsc_vld;
  output const_size_in_1_rsc_triosy_lz;
  output [15:0] const_size_out_1_rsc_dat;
  output const_size_out_1_rsc_vld;
  output const_size_out_1_rsc_triosy_lz;
  input [9215:0] w2_rsc_dat;
  input w2_rsc_vld;
  output w2_rsc_rdy;
  output w2_rsc_triosy_lz;
  input [191:0] b2_rsc_dat;
  input b2_rsc_vld;
  output b2_rsc_rdy;
  output b2_rsc_triosy_lz;
  input [1151:0] w4_rsc_dat;
  input w4_rsc_vld;
  output w4_rsc_rdy;
  output w4_rsc_triosy_lz;
  input [47:0] b4_rsc_dat;
  input b4_rsc_vld;
  output b4_rsc_rdy;
  output b4_rsc_triosy_lz;
  input [143:0] w6_rsc_dat;
  input w6_rsc_vld;
  output w6_rsc_rdy;
  output w6_rsc_triosy_lz;
  input [23:0] b6_rsc_dat;
  input b6_rsc_vld;
  output b6_rsc_rdy;
  output b6_rsc_triosy_lz;


  // Interconnect Declarations
  wire core_wen;
  wire core_wten;
  wire input_48_rsci_wen_comp;
  wire [1055:0] input_48_rsci_idat_mxwt;
  wire layer7_out_rsci_wen_comp;
  reg [53:0] layer7_out_rsci_idat;
  wire w2_rsci_wen_comp;
  wire [9215:0] w2_rsci_idat_mxwt;
  wire b2_rsci_wen_comp;
  wire [191:0] b2_rsci_idat_mxwt;
  wire w4_rsci_wen_comp;
  wire [1151:0] w4_rsci_idat_mxwt;
  wire b4_rsci_wen_comp;
  wire [47:0] b4_rsci_idat_mxwt;
  wire w6_rsci_wen_comp;
  wire [143:0] w6_rsci_idat_mxwt;
  wire b6_rsci_wen_comp;
  wire [23:0] b6_rsci_idat_mxwt;
  wire [53:0] nnet_relu_layer6_t_result_t_relu_config7_cmp_res_rsc_z;
  wire [53:0] nnet_dense_large_layer5_t_layer6_t_config6_cmp_res_rsc_z;
  wire [107:0] nnet_relu_layer4_t_layer5_t_relu_config5_cmp_res_rsc_z;
  wire [107:0] nnet_dense_large_layer3_t_layer4_t_config4_cmp_res_rsc_z;
  wire [431:0] nnet_relu_layer2_t_layer3_t_relu_config3_cmp_res_rsc_z;
  wire [431:0] nnet_dense_large_input_t_layer2_t_config2_cmp_res_rsc_z;
  wire [8:0] fsm_output;
  reg reg_b6_rsc_triosy_obj_ld_core_psct_cse;
  reg reg_layer7_out_rsc_triosy_obj_ld_core_psct_cse;
  wire and_cse;
  reg [143:0] nnet_dense_large_layer5_t_layer6_t_config6_w6_sva;
  reg [23:0] nnet_dense_large_layer5_t_layer6_t_config6_b6_sva;
  reg [1151:0] nnet_dense_large_layer3_t_layer4_t_config4_w4_sva;
  reg [47:0] nnet_dense_large_layer3_t_layer4_t_config4_b4_sva;


  // Interconnect Declarations for Component Instantiations 
  wire [0:0] nl_nnet_relu_layer6_t_result_t_relu_config7_cmp_ccs_ccore_start_rsc_dat;
  assign nl_nnet_relu_layer6_t_result_t_relu_config7_cmp_ccs_ccore_start_rsc_dat
      = fsm_output[6];
  wire [143:0] nl_nnet_dense_large_layer5_t_layer6_t_config6_cmp_weights_rsc_dat;
  assign nl_nnet_dense_large_layer5_t_layer6_t_config6_cmp_weights_rsc_dat = nnet_dense_large_layer5_t_layer6_t_config6_w6_sva;
  wire [23:0] nl_nnet_dense_large_layer5_t_layer6_t_config6_cmp_biases_rsc_dat;
  assign nl_nnet_dense_large_layer5_t_layer6_t_config6_cmp_biases_rsc_dat = nnet_dense_large_layer5_t_layer6_t_config6_b6_sva;
  wire [0:0] nl_nnet_dense_large_layer5_t_layer6_t_config6_cmp_ccs_ccore_start_rsc_dat;
  assign nl_nnet_dense_large_layer5_t_layer6_t_config6_cmp_ccs_ccore_start_rsc_dat
      = fsm_output[5];
  wire [0:0] nl_nnet_relu_layer4_t_layer5_t_relu_config5_cmp_ccs_ccore_start_rsc_dat;
  assign nl_nnet_relu_layer4_t_layer5_t_relu_config5_cmp_ccs_ccore_start_rsc_dat
      = fsm_output[4];
  wire [1151:0] nl_nnet_dense_large_layer3_t_layer4_t_config4_cmp_weights_rsc_dat;
  assign nl_nnet_dense_large_layer3_t_layer4_t_config4_cmp_weights_rsc_dat = nnet_dense_large_layer3_t_layer4_t_config4_w4_sva;
  wire [47:0] nl_nnet_dense_large_layer3_t_layer4_t_config4_cmp_biases_rsc_dat;
  assign nl_nnet_dense_large_layer3_t_layer4_t_config4_cmp_biases_rsc_dat = nnet_dense_large_layer3_t_layer4_t_config4_b4_sva;
  wire [0:0] nl_nnet_dense_large_layer3_t_layer4_t_config4_cmp_ccs_ccore_start_rsc_dat;
  assign nl_nnet_dense_large_layer3_t_layer4_t_config4_cmp_ccs_ccore_start_rsc_dat
      = fsm_output[3];
  wire [0:0] nl_nnet_relu_layer2_t_layer3_t_relu_config3_cmp_ccs_ccore_start_rsc_dat;
  assign nl_nnet_relu_layer2_t_layer3_t_relu_config3_cmp_ccs_ccore_start_rsc_dat
      = fsm_output[2];
  wire [0:0] nl_nnet_dense_large_input_t_layer2_t_config2_cmp_ccs_ccore_start_rsc_dat;
  assign nl_nnet_dense_large_input_t_layer2_t_config2_cmp_ccs_ccore_start_rsc_dat
      = fsm_output[1];
  nnet_relu_layer6_t_result_t_relu_config7  nnet_relu_layer6_t_result_t_relu_config7_cmp
      (
      .data_rsc_dat(nnet_dense_large_layer5_t_layer6_t_config6_cmp_res_rsc_z),
      .res_rsc_z(nnet_relu_layer6_t_result_t_relu_config7_cmp_res_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(core_wen),
      .ccs_ccore_srst(rst),
      .ccs_ccore_start_rsc_dat(nl_nnet_relu_layer6_t_result_t_relu_config7_cmp_ccs_ccore_start_rsc_dat[0:0])
    );
  nnet_dense_large_layer5_t_layer6_t_config6  nnet_dense_large_layer5_t_layer6_t_config6_cmp
      (
      .data_rsc_dat(nnet_relu_layer4_t_layer5_t_relu_config5_cmp_res_rsc_z),
      .res_rsc_z(nnet_dense_large_layer5_t_layer6_t_config6_cmp_res_rsc_z),
      .weights_rsc_dat(nl_nnet_dense_large_layer5_t_layer6_t_config6_cmp_weights_rsc_dat[143:0]),
      .biases_rsc_dat(nl_nnet_dense_large_layer5_t_layer6_t_config6_cmp_biases_rsc_dat[23:0]),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(core_wen),
      .ccs_ccore_srst(rst),
      .ccs_ccore_start_rsc_dat(nl_nnet_dense_large_layer5_t_layer6_t_config6_cmp_ccs_ccore_start_rsc_dat[0:0])
    );
  nnet_relu_layer4_t_layer5_t_relu_config5  nnet_relu_layer4_t_layer5_t_relu_config5_cmp
      (
      .data_rsc_dat(nnet_dense_large_layer3_t_layer4_t_config4_cmp_res_rsc_z),
      .res_rsc_z(nnet_relu_layer4_t_layer5_t_relu_config5_cmp_res_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(core_wen),
      .ccs_ccore_srst(rst),
      .ccs_ccore_start_rsc_dat(nl_nnet_relu_layer4_t_layer5_t_relu_config5_cmp_ccs_ccore_start_rsc_dat[0:0])
    );
  nnet_dense_large_layer3_t_layer4_t_config4  nnet_dense_large_layer3_t_layer4_t_config4_cmp
      (
      .data_rsc_dat(nnet_relu_layer2_t_layer3_t_relu_config3_cmp_res_rsc_z),
      .res_rsc_z(nnet_dense_large_layer3_t_layer4_t_config4_cmp_res_rsc_z),
      .weights_rsc_dat(nl_nnet_dense_large_layer3_t_layer4_t_config4_cmp_weights_rsc_dat[1151:0]),
      .biases_rsc_dat(nl_nnet_dense_large_layer3_t_layer4_t_config4_cmp_biases_rsc_dat[47:0]),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(core_wen),
      .ccs_ccore_srst(rst),
      .ccs_ccore_start_rsc_dat(nl_nnet_dense_large_layer3_t_layer4_t_config4_cmp_ccs_ccore_start_rsc_dat[0:0])
    );
  nnet_relu_layer2_t_layer3_t_relu_config3  nnet_relu_layer2_t_layer3_t_relu_config3_cmp
      (
      .data_rsc_dat(nnet_dense_large_input_t_layer2_t_config2_cmp_res_rsc_z),
      .res_rsc_z(nnet_relu_layer2_t_layer3_t_relu_config3_cmp_res_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(core_wen),
      .ccs_ccore_srst(rst),
      .ccs_ccore_start_rsc_dat(nl_nnet_relu_layer2_t_layer3_t_relu_config3_cmp_ccs_ccore_start_rsc_dat[0:0])
    );
  nnet_dense_large_input_t_layer2_t_config2  nnet_dense_large_input_t_layer2_t_config2_cmp
      (
      .data_rsc_dat(input_48_rsci_idat_mxwt),
      .res_rsc_z(nnet_dense_large_input_t_layer2_t_config2_cmp_res_rsc_z),
      .weights_rsc_dat(w2_rsci_idat_mxwt),
      .biases_rsc_dat(b2_rsci_idat_mxwt),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(core_wen),
      .ccs_ccore_srst(rst),
      .ccs_ccore_start_rsc_dat(nl_nnet_dense_large_input_t_layer2_t_config2_cmp_ccs_ccore_start_rsc_dat[0:0])
    );
  econV0_core_input_48_rsci econV0_core_input_48_rsci_inst (
      .clk(clk),
      .rst(rst),
      .input_48_rsc_dat(input_48_rsc_dat),
      .input_48_rsc_vld(input_48_rsc_vld),
      .input_48_rsc_rdy(input_48_rsc_rdy),
      .core_wen(core_wen),
      .input_48_rsci_oswt(reg_b6_rsc_triosy_obj_ld_core_psct_cse),
      .input_48_rsci_wen_comp(input_48_rsci_wen_comp),
      .input_48_rsci_idat_mxwt(input_48_rsci_idat_mxwt)
    );
  econV0_core_layer7_out_rsci econV0_core_layer7_out_rsci_inst (
      .clk(clk),
      .rst(rst),
      .layer7_out_rsc_dat(layer7_out_rsc_dat),
      .layer7_out_rsc_vld(layer7_out_rsc_vld),
      .layer7_out_rsc_rdy(layer7_out_rsc_rdy),
      .core_wen(core_wen),
      .layer7_out_rsci_oswt(reg_layer7_out_rsc_triosy_obj_ld_core_psct_cse),
      .layer7_out_rsci_wen_comp(layer7_out_rsci_wen_comp),
      .layer7_out_rsci_idat(layer7_out_rsci_idat)
    );
  econV0_core_const_size_in_1_rsci econV0_core_const_size_in_1_rsci_inst (
      .const_size_in_1_rsc_dat(const_size_in_1_rsc_dat),
      .const_size_in_1_rsc_vld(const_size_in_1_rsc_vld),
      .core_wten(core_wten),
      .const_size_in_1_rsci_iswt0(reg_b6_rsc_triosy_obj_ld_core_psct_cse)
    );
  econV0_core_const_size_out_1_rsci econV0_core_const_size_out_1_rsci_inst (
      .const_size_out_1_rsc_dat(const_size_out_1_rsc_dat),
      .const_size_out_1_rsc_vld(const_size_out_1_rsc_vld),
      .core_wten(core_wten),
      .const_size_out_1_rsci_iswt0(reg_b6_rsc_triosy_obj_ld_core_psct_cse)
    );
  econV0_core_w2_rsci econV0_core_w2_rsci_inst (
      .clk(clk),
      .rst(rst),
      .w2_rsc_dat(w2_rsc_dat),
      .w2_rsc_vld(w2_rsc_vld),
      .w2_rsc_rdy(w2_rsc_rdy),
      .core_wen(core_wen),
      .w2_rsci_oswt(reg_b6_rsc_triosy_obj_ld_core_psct_cse),
      .w2_rsci_wen_comp(w2_rsci_wen_comp),
      .w2_rsci_idat_mxwt(w2_rsci_idat_mxwt)
    );
  econV0_core_b2_rsci econV0_core_b2_rsci_inst (
      .clk(clk),
      .rst(rst),
      .b2_rsc_dat(b2_rsc_dat),
      .b2_rsc_vld(b2_rsc_vld),
      .b2_rsc_rdy(b2_rsc_rdy),
      .core_wen(core_wen),
      .b2_rsci_oswt(reg_b6_rsc_triosy_obj_ld_core_psct_cse),
      .b2_rsci_wen_comp(b2_rsci_wen_comp),
      .b2_rsci_idat_mxwt(b2_rsci_idat_mxwt)
    );
  econV0_core_w4_rsci econV0_core_w4_rsci_inst (
      .clk(clk),
      .rst(rst),
      .w4_rsc_dat(w4_rsc_dat),
      .w4_rsc_vld(w4_rsc_vld),
      .w4_rsc_rdy(w4_rsc_rdy),
      .core_wen(core_wen),
      .w4_rsci_oswt(reg_b6_rsc_triosy_obj_ld_core_psct_cse),
      .w4_rsci_wen_comp(w4_rsci_wen_comp),
      .w4_rsci_idat_mxwt(w4_rsci_idat_mxwt)
    );
  econV0_core_b4_rsci econV0_core_b4_rsci_inst (
      .clk(clk),
      .rst(rst),
      .b4_rsc_dat(b4_rsc_dat),
      .b4_rsc_vld(b4_rsc_vld),
      .b4_rsc_rdy(b4_rsc_rdy),
      .core_wen(core_wen),
      .b4_rsci_oswt(reg_b6_rsc_triosy_obj_ld_core_psct_cse),
      .b4_rsci_wen_comp(b4_rsci_wen_comp),
      .b4_rsci_idat_mxwt(b4_rsci_idat_mxwt)
    );
  econV0_core_w6_rsci econV0_core_w6_rsci_inst (
      .clk(clk),
      .rst(rst),
      .w6_rsc_dat(w6_rsc_dat),
      .w6_rsc_vld(w6_rsc_vld),
      .w6_rsc_rdy(w6_rsc_rdy),
      .core_wen(core_wen),
      .w6_rsci_oswt(reg_b6_rsc_triosy_obj_ld_core_psct_cse),
      .w6_rsci_wen_comp(w6_rsci_wen_comp),
      .w6_rsci_idat_mxwt(w6_rsci_idat_mxwt)
    );
  econV0_core_b6_rsci econV0_core_b6_rsci_inst (
      .clk(clk),
      .rst(rst),
      .b6_rsc_dat(b6_rsc_dat),
      .b6_rsc_vld(b6_rsc_vld),
      .b6_rsc_rdy(b6_rsc_rdy),
      .core_wen(core_wen),
      .b6_rsci_oswt(reg_b6_rsc_triosy_obj_ld_core_psct_cse),
      .b6_rsci_wen_comp(b6_rsci_wen_comp),
      .b6_rsci_idat_mxwt(b6_rsci_idat_mxwt)
    );
  econV0_core_input_48_rsc_triosy_obj econV0_core_input_48_rsc_triosy_obj_inst (
      .input_48_rsc_triosy_lz(input_48_rsc_triosy_lz),
      .core_wten(core_wten),
      .input_48_rsc_triosy_obj_iswt0(reg_b6_rsc_triosy_obj_ld_core_psct_cse)
    );
  econV0_core_layer7_out_rsc_triosy_obj econV0_core_layer7_out_rsc_triosy_obj_inst
      (
      .layer7_out_rsc_triosy_lz(layer7_out_rsc_triosy_lz),
      .core_wten(core_wten),
      .layer7_out_rsc_triosy_obj_iswt0(reg_layer7_out_rsc_triosy_obj_ld_core_psct_cse)
    );
  econV0_core_const_size_in_1_rsc_triosy_obj econV0_core_const_size_in_1_rsc_triosy_obj_inst
      (
      .const_size_in_1_rsc_triosy_lz(const_size_in_1_rsc_triosy_lz),
      .core_wten(core_wten),
      .const_size_in_1_rsc_triosy_obj_iswt0(reg_b6_rsc_triosy_obj_ld_core_psct_cse)
    );
  econV0_core_const_size_out_1_rsc_triosy_obj econV0_core_const_size_out_1_rsc_triosy_obj_inst
      (
      .const_size_out_1_rsc_triosy_lz(const_size_out_1_rsc_triosy_lz),
      .core_wten(core_wten),
      .const_size_out_1_rsc_triosy_obj_iswt0(reg_b6_rsc_triosy_obj_ld_core_psct_cse)
    );
  econV0_core_w2_rsc_triosy_obj econV0_core_w2_rsc_triosy_obj_inst (
      .w2_rsc_triosy_lz(w2_rsc_triosy_lz),
      .core_wten(core_wten),
      .w2_rsc_triosy_obj_iswt0(reg_b6_rsc_triosy_obj_ld_core_psct_cse)
    );
  econV0_core_b2_rsc_triosy_obj econV0_core_b2_rsc_triosy_obj_inst (
      .b2_rsc_triosy_lz(b2_rsc_triosy_lz),
      .core_wten(core_wten),
      .b2_rsc_triosy_obj_iswt0(reg_b6_rsc_triosy_obj_ld_core_psct_cse)
    );
  econV0_core_w4_rsc_triosy_obj econV0_core_w4_rsc_triosy_obj_inst (
      .w4_rsc_triosy_lz(w4_rsc_triosy_lz),
      .core_wten(core_wten),
      .w4_rsc_triosy_obj_iswt0(reg_b6_rsc_triosy_obj_ld_core_psct_cse)
    );
  econV0_core_b4_rsc_triosy_obj econV0_core_b4_rsc_triosy_obj_inst (
      .b4_rsc_triosy_lz(b4_rsc_triosy_lz),
      .core_wten(core_wten),
      .b4_rsc_triosy_obj_iswt0(reg_b6_rsc_triosy_obj_ld_core_psct_cse)
    );
  econV0_core_w6_rsc_triosy_obj econV0_core_w6_rsc_triosy_obj_inst (
      .w6_rsc_triosy_lz(w6_rsc_triosy_lz),
      .core_wten(core_wten),
      .w6_rsc_triosy_obj_iswt0(reg_b6_rsc_triosy_obj_ld_core_psct_cse)
    );
  econV0_core_b6_rsc_triosy_obj econV0_core_b6_rsc_triosy_obj_inst (
      .b6_rsc_triosy_lz(b6_rsc_triosy_lz),
      .core_wten(core_wten),
      .b6_rsc_triosy_obj_iswt0(reg_b6_rsc_triosy_obj_ld_core_psct_cse)
    );
  econV0_core_staller econV0_core_staller_inst (
      .clk(clk),
      .rst(rst),
      .core_wen(core_wen),
      .core_wten(core_wten),
      .input_48_rsci_wen_comp(input_48_rsci_wen_comp),
      .layer7_out_rsci_wen_comp(layer7_out_rsci_wen_comp),
      .w2_rsci_wen_comp(w2_rsci_wen_comp),
      .b2_rsci_wen_comp(b2_rsci_wen_comp),
      .w4_rsci_wen_comp(w4_rsci_wen_comp),
      .b4_rsci_wen_comp(b4_rsci_wen_comp),
      .w6_rsci_wen_comp(w6_rsci_wen_comp),
      .b6_rsci_wen_comp(b6_rsci_wen_comp)
    );
  econV0_core_core_fsm econV0_core_core_fsm_inst (
      .clk(clk),
      .rst(rst),
      .core_wen(core_wen),
      .fsm_output(fsm_output)
    );
  assign and_cse = core_wen & (fsm_output[1]);
  always @(posedge clk) begin
    if ( rst ) begin
      reg_b6_rsc_triosy_obj_ld_core_psct_cse <= 1'b0;
      reg_layer7_out_rsc_triosy_obj_ld_core_psct_cse <= 1'b0;
    end
    else if ( core_wen ) begin
      reg_b6_rsc_triosy_obj_ld_core_psct_cse <= (fsm_output[8]) | (fsm_output[0]);
      reg_layer7_out_rsc_triosy_obj_ld_core_psct_cse <= fsm_output[7];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      layer7_out_rsci_idat <= 54'b000000000000000000000000000000000000000000000000000000;
    end
    else if ( core_wen & (fsm_output[7]) ) begin
      layer7_out_rsci_idat <= nnet_relu_layer6_t_result_t_relu_config7_cmp_res_rsc_z;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      nnet_dense_large_layer5_t_layer6_t_config6_b6_sva <= 24'b000000000000000000000000;
      nnet_dense_large_layer5_t_layer6_t_config6_w6_sva <= 144'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
      nnet_dense_large_layer3_t_layer4_t_config4_b4_sva <= 48'b000000000000000000000000000000000000000000000000;
      nnet_dense_large_layer3_t_layer4_t_config4_w4_sva <= {576'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
          , 576'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000};
    end
    else if ( and_cse ) begin
      nnet_dense_large_layer5_t_layer6_t_config6_b6_sva <= b6_rsci_idat_mxwt;
      nnet_dense_large_layer5_t_layer6_t_config6_w6_sva <= w6_rsci_idat_mxwt;
      nnet_dense_large_layer3_t_layer4_t_config4_b4_sva <= b4_rsci_idat_mxwt;
      nnet_dense_large_layer3_t_layer4_t_config4_w4_sva <= w4_rsci_idat_mxwt;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    econV0
// ------------------------------------------------------------------


module econV0 (
  clk, rst, input_48_rsc_dat, input_48_rsc_vld, input_48_rsc_rdy, input_48_rsc_triosy_lz,
      layer7_out_rsc_dat, layer7_out_rsc_vld, layer7_out_rsc_rdy, layer7_out_rsc_triosy_lz,
      const_size_in_1_rsc_dat, const_size_in_1_rsc_vld, const_size_in_1_rsc_triosy_lz,
      const_size_out_1_rsc_dat, const_size_out_1_rsc_vld, const_size_out_1_rsc_triosy_lz,
      w2_rsc_dat, w2_rsc_vld, w2_rsc_rdy, w2_rsc_triosy_lz, b2_rsc_dat, b2_rsc_vld,
      b2_rsc_rdy, b2_rsc_triosy_lz, w4_rsc_dat, w4_rsc_vld, w4_rsc_rdy, w4_rsc_triosy_lz,
      b4_rsc_dat, b4_rsc_vld, b4_rsc_rdy, b4_rsc_triosy_lz, w6_rsc_dat, w6_rsc_vld,
      w6_rsc_rdy, w6_rsc_triosy_lz, b6_rsc_dat, b6_rsc_vld, b6_rsc_rdy, b6_rsc_triosy_lz
);
  input clk;
  input rst;
  input [1055:0] input_48_rsc_dat;
  input input_48_rsc_vld;
  output input_48_rsc_rdy;
  output input_48_rsc_triosy_lz;
  output [53:0] layer7_out_rsc_dat;
  output layer7_out_rsc_vld;
  input layer7_out_rsc_rdy;
  output layer7_out_rsc_triosy_lz;
  output [15:0] const_size_in_1_rsc_dat;
  output const_size_in_1_rsc_vld;
  output const_size_in_1_rsc_triosy_lz;
  output [15:0] const_size_out_1_rsc_dat;
  output const_size_out_1_rsc_vld;
  output const_size_out_1_rsc_triosy_lz;
  input [9215:0] w2_rsc_dat;
  input w2_rsc_vld;
  output w2_rsc_rdy;
  output w2_rsc_triosy_lz;
  input [191:0] b2_rsc_dat;
  input b2_rsc_vld;
  output b2_rsc_rdy;
  output b2_rsc_triosy_lz;
  input [1151:0] w4_rsc_dat;
  input w4_rsc_vld;
  output w4_rsc_rdy;
  output w4_rsc_triosy_lz;
  input [47:0] b4_rsc_dat;
  input b4_rsc_vld;
  output b4_rsc_rdy;
  output b4_rsc_triosy_lz;
  input [143:0] w6_rsc_dat;
  input w6_rsc_vld;
  output w6_rsc_rdy;
  output w6_rsc_triosy_lz;
  input [23:0] b6_rsc_dat;
  input b6_rsc_vld;
  output b6_rsc_rdy;
  output b6_rsc_triosy_lz;



  // Interconnect Declarations for Component Instantiations 
  econV0_core econV0_core_inst (
      .clk(clk),
      .rst(rst),
      .input_48_rsc_dat(input_48_rsc_dat),
      .input_48_rsc_vld(input_48_rsc_vld),
      .input_48_rsc_rdy(input_48_rsc_rdy),
      .input_48_rsc_triosy_lz(input_48_rsc_triosy_lz),
      .layer7_out_rsc_dat(layer7_out_rsc_dat),
      .layer7_out_rsc_vld(layer7_out_rsc_vld),
      .layer7_out_rsc_rdy(layer7_out_rsc_rdy),
      .layer7_out_rsc_triosy_lz(layer7_out_rsc_triosy_lz),
      .const_size_in_1_rsc_dat(const_size_in_1_rsc_dat),
      .const_size_in_1_rsc_vld(const_size_in_1_rsc_vld),
      .const_size_in_1_rsc_triosy_lz(const_size_in_1_rsc_triosy_lz),
      .const_size_out_1_rsc_dat(const_size_out_1_rsc_dat),
      .const_size_out_1_rsc_vld(const_size_out_1_rsc_vld),
      .const_size_out_1_rsc_triosy_lz(const_size_out_1_rsc_triosy_lz),
      .w2_rsc_dat(w2_rsc_dat),
      .w2_rsc_vld(w2_rsc_vld),
      .w2_rsc_rdy(w2_rsc_rdy),
      .w2_rsc_triosy_lz(w2_rsc_triosy_lz),
      .b2_rsc_dat(b2_rsc_dat),
      .b2_rsc_vld(b2_rsc_vld),
      .b2_rsc_rdy(b2_rsc_rdy),
      .b2_rsc_triosy_lz(b2_rsc_triosy_lz),
      .w4_rsc_dat(w4_rsc_dat),
      .w4_rsc_vld(w4_rsc_vld),
      .w4_rsc_rdy(w4_rsc_rdy),
      .w4_rsc_triosy_lz(w4_rsc_triosy_lz),
      .b4_rsc_dat(b4_rsc_dat),
      .b4_rsc_vld(b4_rsc_vld),
      .b4_rsc_rdy(b4_rsc_rdy),
      .b4_rsc_triosy_lz(b4_rsc_triosy_lz),
      .w6_rsc_dat(w6_rsc_dat),
      .w6_rsc_vld(w6_rsc_vld),
      .w6_rsc_rdy(w6_rsc_rdy),
      .w6_rsc_triosy_lz(w6_rsc_triosy_lz),
      .b6_rsc_dat(b6_rsc_dat),
      .b6_rsc_vld(b6_rsc_vld),
      .b6_rsc_rdy(b6_rsc_rdy),
      .b6_rsc_triosy_lz(b6_rsc_triosy_lz)
    );
endmodule



