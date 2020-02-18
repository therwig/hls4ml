HDF5_FILE := encoder_CNN_16_8_4.hdf5
JSON_FILE := encoder_model_CNN_16_8_4.json

all:
	@echo "INFO: make <TAB> for targets"
.PHONY: all

convert:
	python ./rebuild.py --json_file ../$(JSON_FILE) --hdf5_input_file ../$(HDF5_FILE) --hdf5_output_file ./$(HDF5_FILE)
.PHONY: convert

view:
	netron ./$(HDF5_FILE)
.PHONY: view
