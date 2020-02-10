HDF5_FILE := KERAS_mnist_cnn.h5
JSON_FILE := KERAS_mnist_cnn.json

all:
	@echo "INFO: make <TAB> for targets"
.PHONY: all

convert:
	python ./rebuild.py --json_file ../$(JSON_FILE) --hdf5_input_file ../$(HDF5_FILE) --hdf5_output_file ./$(HDF5_FILE)
.PHONY: convert

view:
	netron ./$(HDF5_FILE)
.PHONY: view
