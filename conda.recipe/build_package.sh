#!/bin/bash
set -e

BUILD_PATH=$HOME/conda-build
mkdir -p $BUILD_PATH
conda config --set anaconda_upload no
conda build --output-folder $BUILD_PATH ./conda.recipe/
anaconda -t $ANACONDA_TOKEN upload -u $ANACONDA_USER --force $BUILD_PATH/noarch/my_app-1.0-py_0.tar.bz2

