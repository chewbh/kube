#!/bin/bash

BASE_PATH=/binaries
REPOS_NAME=docker-engine
PKGS_SUBPATH=7

DL_BASEURL_PATH=repo/main/centos
DL_URL=https://yum.dockerproject.org/$DL_BASEURL_PATH/$PKGS_SUBPATH/

wget -r -nH -np -R "index.html*" -P $BASE_PATH/tmp $DL_URL

mv $BASE_PATH/tmp/$DL_BASEURL_PATH $BASE_PATH/$REPOS_NAME
rm -rf $BASE_PATH/tmp

wget -P $BASE_PATH/$REPOS_NAME https://yum.dockerproject.org/gpg
