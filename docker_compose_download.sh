#!/bin/bash

BASE_PATH=/binaries
REPOS_NAME=docker
VERSION=1.21.0
OS_TYPE=Linux
OS_ARCH=x86_64

mkdir -p $BASE_PATH/$REPOS_NAME/$VERSION

sudo curl -L https://github.com/docker/compose/releases/download/$VERSION/docker-compose-$OS_TYPE-$OS_ARCH -o $BASE_PATH/$REPOS_NAME/$VERSION/docker-compose

