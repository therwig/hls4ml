# HLS4ML - Intel

<img src="https://hls-fpga-machine-learning.github.io/hls4ml/img/logo.jpg" alt="hls4ml" width="400">

A package for machine learning inference in FPGAs. We create firmware implementations of machine learning algorithms using high level synthesis language (HLS). We translate traditional open-source machine learning package models into HLS that can be configured for your use-case!

Master : https://github.com/hls-fpga-machine-learning/hls4ml

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Quartus Prime license: the package only supports Intel devices, a license is required for the simulation and synthesis of HLS code.

* Tested on version 19.1

In addition the following dependencies are required:

```
Python 3
```

 Keras to HLS 

Reads Keras model json for architecture and hdf5 for weights and biases.

### Instructions to run

```python keras-to-hls.py -c keras-config.yml```

### Configuration

Configuration options for the HLS translation of Keras models.

*KerasJson, KerasH5*: For Keras translation, you are required to provide `json` and `h5` model files.  
Examples are in the directory: `example-keras-model-files`

*OutputDir*: Directory where your HLS project will go

*DefaultPrecision*: This is the default type of the weights, biases, accumulators, input and output vectors.  This can then be further modified by the `firmware/parameters.h` file generated in your HLS project.

*Note: The package optimizes for minimum latency. The Reuse factor support is being finalized will allow a better latency / area tradeoff.*

### Running HLS 

```
cd my-hls-test
make myproject-fpga
```

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Authors

* **Hamza Javed** - *Intel Optimization* - [CERN](https://cds.cern.ch/record/2687042)

See also the original [contributors](https://fastmachinelearning.org/hls4ml/REFERENCE.html) who participated in this project.

## Acknowledgments

* The amazing HLS4ML Team
* My supervisors Maurizio, Vladimir and Jennifer
