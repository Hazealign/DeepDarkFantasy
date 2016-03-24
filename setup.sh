#!/bin/bash
THREADS=$(nproc)
PWD=$(pwd)
sudo apt-get install build-essential git
cd ~
git clone https://github.com/BVLC/caffe.git
sudo apt-get install libprotobuf-dev \
					libleveldb-dev \
					libsnappy-dev \
					libopencv-dev \
					libhdf5-serial-dev \
					python \
					python-dev \
					python-scipy \
					python-setuptools \
					python-numpy \
					python-pip \
					libgflags-dev \
					libgoogle-glog-dev \
					liblmdb-dev \
					protobuf-compiler \
					libatlas-dev \
					libatlas-base-dev \
					libatlas3-base \
					libatlas-test
sudo apt-get install --no-install-recommends libboost-all-dev
sudo pip install --upgrade pip
sudo pip install --upgrade numpy
cd ~/caffe
cp Makefile.config.example Makefile.config
source ~/.bashrc
make all -j$THREADS
wget -P ~/caffe/models/bvlc_googlenet http://dl.caffe.berkeleyvision.org/bvlc_googlenet.caffemodel
cd $PWD

echo "DONE!"
echo "DeepDarkFantasy installed all dependencies."