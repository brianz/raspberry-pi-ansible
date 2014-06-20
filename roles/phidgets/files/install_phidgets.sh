#!/bin/bash

LIB_NAME=libphidget.tar.gz
LIB_VERSION=libphidget_2.1.8.20140319.tar.gz

curl http://www.phidgets.com/downloads/libraries/$LIB_NAME -o /tmp/$LIB_NAME

tar zxvf /tmp/$LIB_VERSION
cd /tmp/$LIB_VERSION
./configure
make
make install
