#!/bin/bash

DOWNLOAD_DIR=/home/brianz
LIB_NAME=libphidget.tar.gz
LIB_VERSION=libphidget-2.1.8.20140319

if [ ! -f $DOWNLOAD_DIR/$LIB_NAME ]; then
    curl -L http://www.phidgets.com/downloads/libraries/$LIB_NAME -o $DOWNLOAD_DIR/$LIB_NAME
fi

tar zxf $DOWNLOAD_DIR/$LIB_NAME
cd $DOWNLOAD_DIR/$LIB_VERSION
./configure
make
make install
