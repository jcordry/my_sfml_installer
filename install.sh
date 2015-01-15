#!/usr/bin/env bash

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/lib:/lib:/usr/lib

dir=/tmp/SFML_$USER/

# setup directories
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

# libsndfile
curl -O http://www.mega-nerd.com/libsndfile/files/libsndfile-1.0.25.tar.gz
tar xzf libsndfile-1.0.25.tar.gz
cd libsndfile-1.0.25
./configure --prefix=$HOME
make
make install
cd ..

# glew
curl -O https://scm-intranet.tees.ac.uk/users/u0026939/glew-1.11.0.tgz
tar xzf glew-1.11.0.tgz
cd glew-1.11.0
make
cp lib/* ~/lib
cp -R include/GL ~/include/
cd ../

# cmake
curl http://www.cmake.org/files/v3.0/cmake-3.0.2.tar.gz -O
tar xfz cmake-3.0.2.tar.gz
cd cmake-3.0.2
./bootstrap --prefix=$HOME
make
make install
cd ../

# SFML
curl -O https://scm-intranet.tees.ac.uk/users/u0026939/SFML-2.1-sources.zip
# curl -O http://www.sfml-dev.org/download/sfml/2.1/SFML-2.1-sources.zip
unzip SFML-2.1
cd SFML-2.1
cmake -DCMAKE_INSTALL_PREFIX=$HOME/
make
make install
