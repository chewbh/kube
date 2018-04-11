#!/bin/bash

# ensure pip is already installed

BASE_PATH=/binaries
CURRENT_PATH=$(pwd)

mkdir -p $BASE_PATH/pip/docker-py
cd $BASE_PATH/pip/docker-py

pip download docker
pip download docker[tls]

cd $CURRENT_PATH
