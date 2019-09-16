from __future__ import print_function
import tarfile
import yaml
from shutil import copyfile
import numpy as np
import os
import re
from collections import OrderedDict

#######################################
## Config module
#######################################
def parse_config(config_file) :

    print("Loading configuration from", config_file)
    config = open(config_file, 'r')
    return yaml.load(config)

#######################################
## Print weight array to C++
#######################################
def print_array_to_cpp(name, a, odir, i_part = 0, n_part = 1, i_subout = 0, n_subout = 1):

    f=open("{}/firmware/weights/{}.h".format(odir,name),"w")

    #count zeros
    zero_ctr = 0
    for x in np.nditer(a, order='C'):
        if x == 0:
            zero_ctr += 1

    #meta data
    f.write("//Numpy array shape {}\n".format(a.shape))
    f.write("//Min {:.12f}\n".format(np.min(a)))
    f.write("//Max {:.12f}\n".format(np.max(a)))
    f.write("//Number of zeros {}\n".format(zero_ctr))
    f.write("\n")

    #c++ variable
    if re.match(r"^w\d*$", name) or re.match(r"^a\d*$", name):
        if n_part > 1:
            f.write("hls_register weight_default_t {}_{}".format(name,i_part))
        else:
            f.write("hls_register weight_default_t {}".format(name))
    elif re.match(r"^b\d*$", name):
        if n_part > 1:
            f.write("hls_register bias_default_t {}_{}".format(name,i_part))
        else:
            f.write("hls_register bias_default_t {}".format(name))
    elif re.match(r"^beta\d*$", name):
        f.write("hls_register beta_default_t {}".format(name))
    elif re.match(r"^mean\d*$", name):
        f.write("hls_register mean_default_t {}".format(name))
    elif re.match(r"^scale\d*$", name):
        f.write("hls_register scale_default_t {}".format(name))
    else:
        raise Exception('ERROR: Unkown weights type')

    #hls doesn't like 3d arrays... unrolling to 1d
    #also doing for all (including 2d) arrays now
    f.write("[{}]".format(np.prod(a.shape)))
    f.write(" = {")

    #fill c++ array.
    #not including internal brackets for multidimensional case
    i=0
    for x in np.nditer(a, order='C'):
        if i==0:
            f.write("%.12f" % x)
        else:
            f.write(", %.12f" % x)
        i=i+1
    f.write("};\n")
    f.close()

    return zero_ctr

def write_project_cpp(model):
    ###################
    ## myproject.cpp
    ###################

    filedir = os.path.dirname(os.path.abspath(__file__))
    f = open(os.path.join(filedir,'../hls-template/firmware/myproject.cpp'),'r')
    fout = open('{}/firmware/{}.cpp'.format(model.get_output_dir(), model.get_project_name()),'w')

    model_inputs = model.get_input_variables()
    model_outputs = model.get_output_variables()

    indent = '    '

    for line in f.readlines():
        #Add headers to weights and biases
        if 'myproject' in line:
            newline = line.replace('myproject', model.get_project_name())
        elif '//hls-fpga-machine-learning insert header' in line:
            #inputs_str = ', '.join([i.definition_cpp() for i in model_inputs])
            #outputs_str = ', '.join([o.definition_cpp() for o in model_outputs])
            #insize_str = ', '.join(['unsigned short &const_size_in_{}'.format(i) for i in range(1, len(model_inputs) + 1)])
            #outsize_str = ', '.join(['unsigned short &const_size_out_{}'.format(i) for i in range(1, len(model_outputs) + 1)])

            newline = ''
            newline += indent + 'inputdat input_1' + '\n'
            #newline += indent + inputs_str + ',\n'
            #newline += indent + outputs_str + ',\n'
            #newline += indent + insize_str + ',\n'
            #newline += indent + outsize_str + '\n'

        elif '//hls-fpga-machine-learning insert weights' in line:
            newline = line
            for layer in model.get_layers():
                for w in layer.get_weights():
                    newline += indent + '#include "weights/{}.h"\n'.format(w.name)
            #newline += indent + '#include "nnet_utils/exp_table.tb"' + "\n"
            #newline += indent + '#include "nnet_utils/invert_table.tb"' + "\n"

        #Add input/output type
        elif '//hls-fpga-machine-learning insert cpragmas' in line:
            newline = line
            newline += 'hls_component_ii(1)' + "\n"

        elif '//hls-fpga-machine-learning insert layers' in line:
            newline = line + '\n'
            inputs = model.get_input_variables()
            outputs = model.get_output_variables()
            for layer in model.get_layers():
                vars = layer.get_variables()
                for var in vars:
                    if var not in inputs and var not in outputs:
                        newline += '    ' + 'hls_register ' + var.definition_cpp() + ';\n'
                        #if var.pragma:
                        #    newline += '    ' + var.pragma + '\n'
                    if var in outputs:
                        name, gar = var.definition_cpp_name().split('.')                  
                        newline += '    ' + 'hls_register outputdat ' + name + ';\n'
                print(layer)
                func = layer.function_cpp()
                if func:
                    for line in func:
                        newline += '    ' + line + '\n'
                    newline += '\n'

            for out in model.get_output_variables():
                name, gar = out.definition_cpp_name().split('.') 
                newline += indent + 'return ' + name + ';'
        #Just copy line
        else:
            newline = line


        fout.write(newline)

    f.close()
    fout.close()

def write_project_header(model):
    #######################
    ## myproject.h
    #######################

    filedir = os.path.dirname(os.path.abspath(__file__))
    f = open(os.path.join(filedir,'../hls-template/firmware/myproject.h'),'r')
    fout = open('{}/firmware/{}.h'.format(model.get_output_dir(), model.get_project_name()),'w')

    model_inputs = model.get_input_variables()
    model_outputs = model.get_output_variables()

    indent = '    '

    for line in f.readlines():

        if 'MYPROJECT' in line:
            newline = line.replace('MYPROJECT',format(model.get_project_name().upper()))
        elif 'component void myproject(' in line:
            newline = 'component void {}(\n'.format(model.get_project_name())

        elif '//Input Parameters' in line:
            for out in model.get_input_variables():
                newline = ''
                newline += indent + 'input_t data' + '[' + out.size_cpp() + ']' + ';\n'
            
        elif '//Output Parameters' in line:
            for out in model.get_output_variables():
                newline = ''
                newline += indent + 'result_t data' + '[' + out.size_cpp() + ']' + ';\n'

        elif '// Prototype of top level function for C-synthesis' in line:
            newline = line
            newline += 'hls_component_ii(1)' + "\n"

        elif '//hls-fpga-machine-learning insert header' in line:
            #inputs_str = ', '.join([i.definition_cpp() for i in model_inputs])
            #outputs_str = ', '.join([o.definition_cpp() for o in model_outputs])
            #insize_str = ', '.join(['unsigned short &const_size_in_{}'.format(i) for i in range(1, len(model_inputs) + 1)])
            #outsize_str = ', '.join(['unsigned short &const_size_out_{}'.format(o) for o in range(1, len(model_outputs) + 1)])

            newline = ''
            newline += indent + 'inputdat input_1' + '\n'
            #newline += indent + inputs_str + ',\n'
            #newline += indent + outputs_str + ',\n'
            #newline += indent + insize_str + ',\n'
            #newline += indent + outsize_str + '\n'
        else:
            newline = line
        fout.write(newline)

    f.close()
    fout.close()

def write_parameters(model):
    filedir = os.path.dirname(os.path.abspath(__file__))
    f = open(os.path.join(filedir,'../hls-template/firmware/parameters.h'),'r')
    fout = open('{}/firmware/parameters.h'.format(model.get_output_dir()),'w')

    for line in f.readlines():

        #Insert numbers
        if '//hls-fpga-machine-learning insert numbers' in line:
            newline = line
            newline += 'typedef {precision} accum_default_t;\n'.format(precision=model.get_default_precision())
            newline += 'typedef {precision} weight_default_t;\n'.format(precision=model.get_default_precision())
            newline += 'typedef {precision} bias_default_t;\n'.format(precision=model.get_default_precision())
            newline += 'typedef {precision} input_t;\n'.format(precision=model.get_default_precision())
            newline += 'typedef {precision} result_t;\n'.format(precision=model.get_default_precision())
            newline += 'typedef {precision} beta_default_t;\n'.format(precision=model.get_default_precision())
            newline += 'typedef {precision} mean_default_t;\n'.format(precision=model.get_default_precision())
            newline += 'typedef {precision} scale_default_t;\n'.format(precision=model.get_default_precision())

            newline += '\n'

            numbers = OrderedDict.fromkeys([layer.get_numbers_cpp() for layer in model.get_layers()])
            newline += ''.join(numbers)

        elif '//hls-fpga-machine-learning insert layer-precision' in line:
            newline = line
            for layer in model.get_layers():
                newline += layer.precision_cpp() + '\n'

        elif "//hls-fpga-machine-learning insert layer-config" in line:
            newline = line
            for layer in model.get_layers():
                config = layer.config_cpp()
                if config:
                    newline += config + '\n'
        else:
            newline = line
        fout.write(newline)
    f.close()
    fout.close()

def write_weights(model):
    for layer in model.get_layers():
        for weights in layer.get_weights():
            print_array_to_cpp(weights.name, weights.data, model.get_output_dir())

def write_test_bench(model):
    ###################
    ## test bench
    ###################

    filedir = os.path.dirname(os.path.abspath(__file__))
    f = open(os.path.join(filedir,'../hls-template/myproject_test.cpp'),'r')
    fout = open('{}/{}_test.cpp'.format(model.get_output_dir(), model.get_project_name()),'w')

    indent = '  '

    for line in f.readlines():

        #Insert numbers
        if 'myproject' in line:
            newline = line.replace('myproject', model.get_project_name())

        elif '//hls-fpga-machine-learning insert output' in line:
            newline = line
            for out in model.get_output_variables():
                for inpu in model.get_input_variables():
                    newline += '  for (int i = 0; i < Num_Invocation; ++i) {\n'
                    newline += '    std::cout << "Input: ";\n'
                    newline += '    for(int j = 0; j < {}; j++) {{\n'.format(inpu.size_cpp())
                    newline += '      std::cout << input_1[i].data[j] << " ";\n'
                    newline += '    }\n'
                    newline += '    std::cout << ";";\n'
                    newline += '    std::cout << "Output: ";\n'
                    newline += '    for(int j = 0; j < {}; j++) {{\n'.format(out.size_cpp())
                    newline += '      std::cout << output_1[i].data[j] << " ";\n'
                    newline += '    }\n'
                    newline += '    std::cout << ";";\n'
                    newline += '    std::cout << std::endl;\n'
                    newline += '  }\n'
                
        else:
            newline = line
        fout.write(newline)
    f.close()
    fout.close()

def write_build_script(model):
    ###################
    # Makefile
    ###################

    filedir = os.path.dirname(os.path.abspath(__file__))
    nnetdir = os.path.abspath(os.path.join(filedir, "../nnet_utils"))
    relpath = os.path.relpath(nnetdir, start=model.get_output_dir())

    f = open(os.path.join(filedir,'../hls-template/Makefile'),'r')
    fout = open('{}/Makefile'.format(model.get_output_dir()),'w')

    for line in f.readlines():

        line = line.replace('myproject',model.get_project_name())

        if 'DEVICE :=' in line:
            line = 'DEVICE := {}\n'.format(model.get_config_value('Device'))

        fout.write(line)
    f.close()
    fout.close()

def write_nnet_utils(model):
    ###################
    ## nnet_utils
    ###################

    filedir = os.path.dirname(os.path.abspath(__file__))
    
    srcpath = os.path.join(filedir,'../nnet_utils/')
    dstpath = '{}/firmware/nnet_utils/'.format(model.get_output_dir())
    
    if not os.path.exists(dstpath):
        os.mkdir(dstpath)

    copyfile(srcpath + 'nnet_activation.h', dstpath + 'nnet_activation.h')
    copyfile(srcpath + 'nnet_common.h', dstpath + 'nnet_common.h')
    copyfile(srcpath + 'nnet_dense.h', dstpath + 'nnet_dense.h')
    copyfile(srcpath + 'exp_table.tb', dstpath + 'exp_table.tb')
    copyfile(srcpath + 'invert_table.tb', dstpath + 'invert_table.tb')

def write_tar(model):
    ###################
    # Tarball output
    ###################

    with tarfile.open(model.get_output_dir() + '.tar.gz', mode='w:gz') as archive:
        archive.add(model.get_output_dir(), recursive=True)

def write_hls(model):
    write_project_cpp(model)
    write_project_header(model)
    write_weights(model)
    write_parameters(model)
    write_test_bench(model)
    write_build_script(model)
    write_nnet_utils(model)
    write_tar(model)
