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
#include <vector>
#include <fstream>
#include <iostream>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#include "firmware/converter.h"

#define CHECKPOINT 1

template<class T> 
void print_fxd_as_bin(std::ostream &out, T data) {
    for (int j = data.length() - 1; j >= 0; j--) {
        out << data[j];
    }
}

// ---- Catapult HLS ----
#ifdef MNTR_CATAPULT_HLS
// SCVerify verification MACROs
#include "mc_scverify.h"
CCS_MAIN (int argc, char *argv[])
{
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
// ----  Vivado HLS  ----
#else
int main(int argc, char **argv)
{
  std::cout << "Xilinx Vivado HLS" << std::endl;
#ifdef RTL_SIM
  std::string RESULTS_LOG = "tb_data/vivado_rtl_cosim_results.log";
#else
  std::string RESULTS_LOG = "tb_data/vivado_csim_results.log";
#endif
#endif
// ---- ------------ ----

  //load input data from text file
  std::ifstream fin("tb_data/tb_input.dat");
  //load predictions from text file
  std::ifstream fpr("tb_data/tb_output.dat");

  std::ofstream fout(RESULTS_LOG);

  std::string iline;
  std::string pline;
  int e = 0;
  int N = N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1;

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
      data_t input[N] = {in[0],in[1],in[2],in[3],in[4],in[5],in[6],in[7],in[8],in[9],in[10],in[11],in[12],in[13],in[14],in[15],in[16],in[17],in[18],in[19],in[20],in[21],in[22],in[23],in[24],in[25],in[26],in[27],in[28],in[29],in[30],in[31],in[32],in[33],in[34],in[35],in[36],in[37],in[38],in[39],in[40],in[41],in[42],in[43],in[44],in[45],in[46],in[47]};
      econ_t output[N] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

      //hls-fpga-machine-learning insert top-level-function
      unsigned short size_in1,size_out1;
#ifdef MNTR_CATAPULT_HLS
      CCS_DESIGN(converter)(input,output);
#else
      converter(input,output);
#endif

      //hls-fpga-machine-learning insert tb-output
      for(int i = 0; i < N; i++) {
        fout << output[i] << " ";
      }
      fout << std::endl;

      if (e % CHECKPOINT == 0) {
        std::cout << "INFO:     Predictions          : ";
        //hls-fpga-machine-learning insert predictions
        for(int i = 0; i < N; i++) {
          std::cout << pr[i] << " ";
        }
        std::cout << std::endl;
        std::cout << "INFO:     Quantized predictions: ";
        //hls-fpga-machine-learning insert quantized
        for(int i = 0; i < N; i++) {
          std::cout << output[i].to_double() << " ";
        }
        std::cout << std::endl;
      }

    }
    fin.close();
    fpr.close();
  } else {
    std::cout << "INFO: Unable to open input/predictions file, using default input." << std::endl;
    data_t input[N] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
    econ_t output[N] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

    //hls-fpga-machine-learning insert top-level-function
    unsigned short size_in1,size_out1;
#ifdef MNTR_CATAPULT_HLS
    CCS_DESIGN(converter)(input,output);
#else
    converter(input,output);
#endif

    //hls-fpga-machine-learning insert output
    std::cout << "INFO: PREDICTION: "; 
    for(int i = 0; i < N; i++) {
      std::cout << output[i].to_double() << " ";
    }
    std::cout << std::endl;
    //hls-fpga-machine-learning insert tb-output
    for(int i = 0; i < N; i++) {
      fout << output[i].to_double() << " ";
    }
    fout << std::endl;
  }

  fout.close();
  std::cout << "INFO: Saved inference results to file: " << RESULTS_LOG << std::endl;

#ifdef MNTR_CATAPULT_HLS
  CCS_RETURN(0);
#else
  return 0;
#endif
}
