#include <vector>
#include <fstream>
#include <iostream>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#include "firmware/parameters.h"
#include "firmware/econ_4x4_d10.h"

#include "weights/w2.h"
#include "weights/b2.h"
#include "weights/w4.h"
#include "weights/b4.h"


#define CHECKPOINT 1

template<class T> 
void print_fxd_as_bin(std::ostream &out, T data) {
    for (int j = data.length() - 1; j >= 0; j--) {
        out << data[j];
    }
}

// SCVerify verification MACROs
#include "mc_scverify.h"

CCS_MAIN (int argc, char *argv[])
{

  econ_4x4_d10 inst;

  std::cout << "Mentor Graphics Catapult HLS" << std::endl;
#ifdef RTL_SIM
#ifdef __ASIC__
  std::string RESULTS_LOG = "tb_data/catapult_asic_rtl_cosim_results.log";
#else
  std::string RESULTS_LOG = "tb_data/catapult_fpga_rtl_cosim_results.log";
#endif
#else
#ifdef __ASIC__
  std::string RESULTS_LOG = "tb_data/catapult_asic_csim_results.log";
#else
  std::string RESULTS_LOG = "tb_data/catapult_fpga_csim_results.log";
#endif
#endif

  nnet::load_weights_from_txt<model_default_t, 216>(w2, "w2.txt");
  nnet::load_weights_from_txt<model_default_t, 8>(b2, "b2.txt");
  nnet::load_weights_from_txt<model_default_t, 1280>(w4, "w4.txt");
  nnet::load_weights_from_txt<model_default_t, 10>(b4, "b4.txt");

  //load input data from text file
  std::ifstream fin("tb_data/tb_input_features.dat");
  //load predictions from text file
  std::ifstream fpr("tb_data/tb_output_predictions.dat");

  std::ofstream fout(RESULTS_LOG);

#ifdef __SAVE_TRACES__
  std::string INPUT_FILE_BIN_MEM = "tb_data/tb_input_features.mem";
  std::string OUTPUT_FILE_BIN_MEM = "tb_data/tb_output_predictions.mem";
  std::string W2_FILE_BIN_MEM = "tb_data/w2.mem";
  std::string B2_FILE_BIN_MEM = "tb_data/b2.mem";
  std::string W4_FILE_BIN_MEM = "tb_data/w4.mem";
  std::string B4_FILE_BIN_MEM = "tb_data/b4.mem";
  std::ofstream fout_ifbm(INPUT_FILE_BIN_MEM);
  std::ofstream fout_ofbm(OUTPUT_FILE_BIN_MEM);
  std::ofstream fout_w2fbm(W2_FILE_BIN_MEM);
  std::ofstream fout_b2fbm(B2_FILE_BIN_MEM);
  std::ofstream fout_w4fbm(W4_FILE_BIN_MEM);
  std::ofstream fout_b4fbm(B4_FILE_BIN_MEM);
#endif

  std::string iline;
  std::string pline;
  int e = 0;

  if (fin.is_open() && fpr.is_open()) {
    while ( std::getline(fin,iline) && std::getline (fpr,pline) ) {
      if (e % CHECKPOINT == 0) std::cout << "INFO: Processing input: # " << e << std::endl;
      e++;
      char* cstr=const_cast<char*>(iline.c_str());
      char* current;
      std::vector<float> in;
      current=strtok(cstr," ");
      while(current!=NULL) {
        in.push_back(atof(current));
        current=strtok(NULL," ");
      }
      cstr=const_cast<char*>(pline.c_str());
      std::vector<float> pr;
      current=strtok(cstr," ");
      while(current!=NULL) {
        pr.push_back(atof(current));
        current=strtok(NULL," ");
      }

      //hls-fpga-machine-learning insert data
      input_t input_1[N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1] = {in[0],in[1],in[2],in[3],in[4],in[5],in[6],in[7],in[8],in[9],in[10],in[11],in[12],in[13],in[14],in[15],in[16],in[17],in[18],in[19],in[20],in[21],in[22],in[23],in[24],in[25],in[26],in[27],in[28],in[29],in[30],in[31],in[32],in[33],in[34],in[35],in[36],in[37],in[38],in[39],in[40],in[41],in[42],in[43],in[44],in[45],in[46],in[47]};
      result_t layer5_out[N_LAYER_4] = {0,0,0,0,0,0,0,0,0,0};

      //hls-fpga-machine-learning insert top-level-function
      unsigned short size_in1,size_out1;

      inst.run(input_1, layer5_out, /*size_in1, size_out1,*/ w2, b2, w4, b4);

      //hls-fpga-machine-learning insert tb-output
      for(int i = 0; i < N_LAYER_4; i++) {
        fout << layer5_out[i] << " ";
      }
      fout << std::endl;

      if (e % CHECKPOINT == 0) {
        std::cout << "INFO:     Predictions          : ";
        //hls-fpga-machine-learning insert predictions
        for(int i = 0; i < N_LAYER_4; i++) {
          std::cout << pr[i] << " ";
        }
        std::cout << std::endl;
        std::cout << "INFO:     Quantized predictions: ";
        //hls-fpga-machine-learning insert quantized
        for(int i = 0; i < N_LAYER_4; i++) {
          std::cout << layer5_out[i].to_double() << " ";
        }
        std::cout << std::endl;
      }

//#ifdef __SAVE_TRACES__
//    for(int i = size_in1-1; i >= 0; i--) {
//        print_fxd_as_bin<input_t>(fout_ifbm, input_1[i]);
//    }
//    fout_ifbm << std::endl;
//    for(int i = size_out1-1; i >= 0; i--) {
//        print_fxd_as_bin<result_t>(fout_ofbm, layer5_out[i]);
//    }
//    fout_ofbm << std::endl;
//
//    static bool one_time = true;
//    if (one_time) {
//        unsigned int size_w2 = 216;
//        unsigned int size_b2 = 8;
//        unsigned int size_w4 = 1280;
//        unsigned int size_b4 = 10;
//
//        for(int i = size_w2-1; i >= 0; i--) {
//            print_fxd_as_bin<model_default_t>(fout_w2fbm, w2[i]);
//        }
//        fout_w2fbm << std::endl;
//        for(int i = size_b2-1; i >= 0; i--) {
//            print_fxd_as_bin<model_default_t>(fout_b2fbm, b2[i]);
//        }
//        fout_b2fbm << std::endl;
//        for(int i = size_w4-1; i >= 0; i--) {
//            print_fxd_as_bin<model_default_t>(fout_w4fbm, w4[i]);
//        }
//        fout_w4fbm << std::endl;
//        for(int i = size_b4-1; i >= 0; i--) {
//            print_fxd_as_bin<model_default_t>(fout_b4fbm, b4[i]);
//        }
//        fout_b4fbm << std::endl;
//        one_time = false;
//    }
//#endif

    }

    fin.close();
    fpr.close();
  } else {
    std::cout << "INFO: Unable to open input/predictions file, using default input." << std::endl;
    //hls-fpga-machine-learning insert zero
    input_t input_1[N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
    result_t layer5_out[N_LAYER_4] = {0,0,0,0,0,0,0,0,0,0};

    //hls-fpga-machine-learning insert top-level-function
    unsigned short size_in1,size_out1;

    inst.run(input_1, layer5_out, /*size_in1, size_out1,*/ w2, b2, w4, b4);

    //hls-fpga-machine-learning insert output
    std::cout << "INFO: PREDICTION: ";
    for(int i = 0; i < N_LAYER_4; i++) {
      std::cout << layer5_out[i].to_double() << " ";
    }
    std::cout << std::endl;

//#ifdef __SAVE_TRACES__
//    for(int i = size_in1-1; i >= 0; i--) {
//        print_fxd_as_bin<input_t>(fout_ifbm, input_1[i]);
//    }
//    fout_ifbm << std::endl;
//    for(int i = size_out1-1; i >= 0; i--) {
//        print_fxd_as_bin<result_t>(fout_ofbm, layer5_out[i]);
//    }
//    fout_ofbm << std::endl;
//
//    static bool one_time = true;
//    if (one_time) {
//        unsigned int size_w2 = 216;
//        unsigned int size_b2 = 8;
//        unsigned int size_w4 = 1280;
//        unsigned int size_b4 = 10;
//
//        for(int i = size_w2-1; i >= 0; i--) {
//            print_fxd_as_bin<model_default_t>(fout_w2fbm, w2[i]);
//        }
//        fout_w2fbm << std::endl;
//        for(int i = size_b2-1; i >= 0; i--) {
//            print_fxd_as_bin<model_default_t>(fout_b2fbm, b2[i]);
//        }
//        fout_b2fbm << std::endl;
//        for(int i = size_w4-1; i >= 0; i--) {
//            print_fxd_as_bin<model_default_t>(fout_w4fbm, w4[i]);
//        }
//        fout_w4fbm << std::endl;
//        for(int i = size_b4-1; i >= 0; i--) {
//            print_fxd_as_bin<model_default_t>(fout_b4fbm, b4[i]);
//        }
//        fout_b4fbm << std::endl;
//        one_time = false;
//    }
//#endif

    //hls-fpga-machine-learning insert tb-output
    for(int i = 0; i < N_LAYER_4; i++) {
      fout << layer5_out[i].to_double() << " ";
    }
    fout << std::endl;
  }

  fout.close();
  std::cout << "INFO: Saved inference results to file: " << RESULTS_LOG << std::endl;

#ifdef __SAVE_TRACES__
  fout_ifbm.close();
  std::cout << "INFO: Saved input data to .mem file: " << INPUT_FILE_BIN_MEM << std::endl;
  fout_ofbm.close();
  std::cout << "INFO: Saved output data to .mem file: " << OUTPUT_FILE_BIN_MEM << std::endl;

  fout_w2fbm.close();
  fout_b2fbm.close();
  fout_w4fbm.close();
  fout_b4fbm.close();
#endif

  CCS_RETURN(0);
}
