#!/usr/bin/env bash

apt-get update -y
apt-get install build-essential wget -y
wget -N --no-check-certificate https://github.com/jedisct1/libsodium/releases/download/1.0.13/libsodium-1.0.13.tar.gz
tar -xzf libsodium-1.0.13.tar.gz && cd libsodium*
./configure --prefix=/usr && make && make install &&  ldconfig
