#!/usr/bin/env bash

dir=/tmp/SFML_install/install

if [[ ! -d "$dir" ]]; then
    mkdir $dir
fi
if [[ ! -d $HOME/lib ]]; then
    mkdir $HOME/lib
fi
if [[ ! -d $HOME/include ]]; then
    mkdir $HOME/include
fi
cd $dir
curl -O http://www.mega-nerd.com/libsndfile/files/libsndfile-1.0.25.tar.gz
tar xzf libsndfile-1.0.25.tar.gz
cd libsndfile-1.0.25
./configure --prefix=$HOME
make
make install
cd ..
curl -O http://kent.dl.sourceforge.net/project/glew/glew/1.11.0/glew-1.11.0.tgz
tar xzf glew-1.11.0.tgz
cd glew-1.11.0
make
cp lib/* ~/lib
cp -R include/GL ~/include/
cd ../
curl http://www.cmake.org/files/v3.0/cmake-3.0.2.tar.gz -O
tar xfz cmake-3.0.2.tar.gz
cd cmake-3.0.2
./bootstrap --prefix=$HOME
make
make install
cd ../
curl -O http://www.sfml-dev.org/download/sfml/2.1/SFML-2.1-sources.zip
unzip SFML-2.1-sources.zip
cd SFML-2.1
cmake -DCMAKE_INSTALL_PREFIX=$HOME/
make
make install

# g++ main.cpp -o main -I$HOME/include -L$HOME/lib/ -lsfml-graphics -lsfml-window -lsfml-system
# 
# http://sfml-dev.org/tutorials/2.1/start-cb.php
# 
