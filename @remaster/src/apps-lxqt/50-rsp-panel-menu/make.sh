#!/bin/bash

HERE_WRAPPER="`readlink -f "$0"`"
HERE="`dirname "$HERE_WRAPPER"`"

cd $HERE/proj

rm -rf build

mkdir build

./install.sh;

sudo make install --ignore-errors

exit 0;
