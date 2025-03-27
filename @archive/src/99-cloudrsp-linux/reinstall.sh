#!/bin/bash

HERE_WRAPPER="`readlink -f "$0"`"
HERE="`dirname "$HERE_WRAPPER"`"

cd $HERE/proj

rm -rf build

mkdir build

cd build

cmake .. --fresh && make -j$(nproc) && sudo make install;

cd ..;
cd ..;

make post;

exit 0;