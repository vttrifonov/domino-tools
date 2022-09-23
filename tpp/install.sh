#!/bin/bash

root=/tpp

mkdir -p $root
cd $root

url=https://sourceforge.net/projects/sashimi/files/Trans-Proteomic%20Pipeline%20%28TPP%29/TPP%20v6.1%20%28Parhelion%29%20rev%200/
file=TPP_6.1.0-src.tgz
release=6-1-0

curl -L "$url/$file/$download" -o $file
tar xzf $file

cd release_$release

cat <<EOF >site.mk
INSTALL_DIR = $root/root
TPP_BASEURL = tpp
TPP_DATADIR = $root/data
EOF

apt-get update

apt-get install \
    g++ \
    subversion \
    libbz2-dev \
    swig \
    expat \
    libpng-dev \
    gnuplot \
    libperl-dev \
    build-essential \
    libgd-dev \
	libfuse-dev \
	libcurl4-openssl-dev \
	libxml2-dev

make all

make install

cd ..
rm -rf release_$release
