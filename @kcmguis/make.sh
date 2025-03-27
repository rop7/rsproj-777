#!/bin/bash

HERE_WRAPPER="`readlink -f "$0"`"
HERE="`dirname "$HERE_WRAPPER"`"

cd $HERE/src

rm -rf build

mkdir build

cd build

cmake .. -DCMAKE_BUILD_TYPE=Release \
         -DCMAKE_CXX_FLAGS="-O3 -march=native -mtune=native -funroll-loops -ftree-vectorize" \
         -G Ninja .

ninja -j$(nproc) && sudo ninja install;

exit 0;