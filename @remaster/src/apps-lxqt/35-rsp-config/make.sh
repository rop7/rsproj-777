#!/bin/bash

HERE_WRAPPER="`readlink -f "$0"`"
HERE="`dirname "$HERE_WRAPPER"`"

cd $HERE/proj

rm -rf build

mkdir build

cd build

cmake .. -DCMAKE_BUILD_TYPE=Release \
         -DCMAKE_CXX_FLAGS="-O3 -march=native -mtune=native -funroll-loops -ftree-vectorize"

make -j$(nproc) --ignore-errors && sudo make install --ignore-errors;

exit 0;