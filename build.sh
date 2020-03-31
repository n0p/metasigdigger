#!/bin/bash
cores=8

mkdir -p build
cd build
mkdir -p sigutils
mkdir -p suscan
mkdir -p suwidgets
mkdir -p sigdigger

cd sigutils
cmake ../../sigutils
make -j $cores
sudo make install
sudo ldconfig
cd ..

cd suscan
cmake ../../suscan
make -j $cores
sudo make install
sudo ldconfig
cd ..

cd suwidgets
qmake ../../SuWidgets
make -j $cores
sudo make install
sudo ldconfig
cd ..

cd sigdigger
qmake ../../SigDigger
make -j $cores
sudo make install
sudo ldconfig
cd ..
