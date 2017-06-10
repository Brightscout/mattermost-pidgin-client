#!/bin/bash

SRC=./installer

#
# Build
#
echo "Building Installer"
cd $SRC
echo "... in `pwd`"
echo "... cleaning"
rm -f ./*.exe
echo "... generating exe"
exec makensis script.nsi
