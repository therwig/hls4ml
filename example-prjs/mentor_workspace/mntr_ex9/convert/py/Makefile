all:
	echo "INFO: make <TAB> for targets"
.PHONY: all

convert:
	python ./rebuild.py --json_file ../encoder_model.json --hdf5_input_file ../encoder_48_24_6_3.hdf5 --hdf5_output_file ./encoder_48_24_6_3.hdf5
.PHONY: convert

view:
	netron ./encoder_48_24_6_3.hdf5
.PHONY: view
