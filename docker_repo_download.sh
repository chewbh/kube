#!/bin/bash

BASE_PATH=/binaries
REPOS_NAME=docker-ce
PKGS_SUBPATH=7/x86_64/stable

DL_BASEURL_PATH=linux/centos
DL_URL=https://download.docker.com/$DL_BASEURL_PATH/$PKGS_SUBPATH/

wget -r -nH -np -R "index.html*" -P $BASE_PATH/tmp $DL_URL

mv $BASE_PATH/tmp/$DL_BASEURL_PATH $BASE_PATH/$REPOS_NAME
rm -rf $BASE_PATH/tmp

wget -P $BASE_PATH/$REPOS_NAME https://download.docker.com/linux/centos/gpg
