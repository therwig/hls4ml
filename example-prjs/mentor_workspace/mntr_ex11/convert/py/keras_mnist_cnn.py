from __future__ import print_function

import tensorflow.keras as keras
from tensorflow.keras.models import model_from_json
from tensorflow.keras.datasets import mnist

import argparse

from random import randrange

import matplotlib.pyplot as plt
import numpy as np

import os
datdir = 'dat'
os.makedirs(datdir, exist_ok=True)

def load_dataset(args):
    X_train_size = 60000
    X_test_size = 10000
    input_shape=(28, 28, 1)

    # Get the MNIST dataset, split between train and test sets.
    (X_train, y_train), (X_test, y_test) = mnist.load_data()

    # Normalize the dataset.
    X_train = X_train.reshape(X_train_size, input_shape[0], input_shape[1], input_shape[2])
    X_test = X_test.reshape(X_test_size, input_shape[0], input_shape[1], input_shape[2])
    X_train = X_train.astype('float32')
    X_test = X_test.astype('float32')
    X_train /= 255
    X_test /= 255

    print('INFO:', X_train.shape[0], 'train samples')
    print('INFO:', X_test.shape[0], 'test samples')

    return X_train, y_train, X_test, y_test

def build_model(args):
    HDF5_FILE = args.hdf5_file
    JSON_FILE = args.json_file

    print('INFO: Loading:', HDF5_FILE)
    print('INFO: Loading:', JSON_FILE)

    # Model reconstruction from JSON file
    with open(JSON_FILE, 'r') as f:
        model = model_from_json(f.read())
    # Load weights into the new model
    model.load_weights(HDF5_FILE)

    return model

def print_dataset_to_dat(dataset, size, filename):
    print('INFO: Saving:', filename)
    outfile = open(filename,'w+')
    for i in range(size):
        data = dataset[i]
        flat_data = data.flatten()
        for i in range(len(flat_data)):
            outfile.write('{} '.format(flat_data[i]))
        outfile.write('\n')
    outfile.close()

# TODO(gdg): This function can be better!
def print_data_to_dat(data, filename):
    print('INFO: Saving:', filename)
    outfile = open(filename,'a+')
    flat_data = data.flatten()
    np.savetxt(outfile, data, delimiter=' ', newline=' ', fmt='%g')
    outfile.write('\n')
    outfile.close()

def main(args):
    print('INFO: HDF5 file:', args.hdf5_file)

    input_shape=(28, 28, 1)
    num_classes=10

    # Get dataset.
    X_train, y_train, X_test, y_test = load_dataset(args)

    # Convert class vectors to binary class matrices
    y_test_bin = keras.utils.to_categorical(y_test, num_classes)

    # Build the model.
    model = build_model(args)

    for i in range(X_test.shape[0]):
        # Choose an input image.
        image_index = i #randrange(X_test.shape[0])  # random up to 10,000
        image = X_test[image_index]
        label = y_test[image_index]
        truth = y_test_bin[image_index]

        pred = model.predict(image.reshape(1, X_test.shape[1], X_test.shape[2], X_test.shape[3]))

        print('INFO: input shape: ', image.shape)
        print('INFO: image shape: ', image.shape)
        print('INFO: one-hot encoding: ', label) # 2
        print('INFO: predictions: ', pred[0])
        print('INFO: top prediction: ', pred.argmax())

        input_dat = 'keras_mnist_cnn_input_features.dat'
        output_dat = 'keras_mnist_cnn_predictions.dat'
        truth_dat = 'keras_mnist_cnn_truth_labels.dat'

        print_data_to_dat(image.flatten(), input_dat)
        print_data_to_dat(pred[0], output_dat)
        print_data_to_dat(truth, truth_dat)

        # Show image
        plt.imshow(X_test[image_index].reshape((input_shape[0], input_shape[0])), cmap='Greys')
        plt.title('Prediction: ' + str(pred.argmax()) + ', Label: ' + str(label))
        plt.show()

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='KERAS MNIST CNN Prediction')
    parser.add_argument('--json_file', action='store', dest='json_file', type=str, default='../KERAS_mnist_cnn.json')
    parser.add_argument('--hdf5_file', action='store', dest='hdf5_file', type=str, default='../KERAS_mnist_cnn.h5')

    args = parser.parse_args()

    main(args)
