from __future__ import print_function

import tensorflow.keras as keras
from tensorflow.keras.models import model_from_json

import cv2

import argparse

def build_model(args):
    JSON_FILE = args.json_file
    HDF5_FILE = args.hdf5_input_file

    print('INFO: Loading:', JSON_FILE)
    print('INFO: Loading:', HDF5_FILE)

    # Model reconstruction from JSON file
    with open(JSON_FILE, 'r') as f:
        model = model_from_json(f.read())
    # Load weights into the new model
    model.load_weights(HDF5_FILE)

    return model

def main(args):

    HDF5_FILE = args.hdf5_output_file

    model = build_model(args)
    model.save(HDF5_FILE)


if __name__ == '__main__':


    parser = argparse.ArgumentParser(description='Save HDF5 model from HDF5-weights and JSON')
    parser.add_argument('--json_file', action='store', dest='json_file', type=str, default='model.json')
    parser.add_argument('--hdf5_input_file', action='store', dest='hdf5_input_file', type=str, default='model_weights.h5')
    parser.add_argument('--hdf5_output_file', action='store', dest='hdf5_output_file', type=str, default='model.h5')

    args = parser.parse_args()

    main(args)
