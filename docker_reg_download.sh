#!/bin/bash

BASE_PATH=/binaries
REPOS_NAME=docker_images

mkdir -p $BASE_PATH/$REPOS_NAME

sudo docker pull registry:2
sudo docker save -o $BASE_PATH/$REPOS_NAME/registry.tar registry:2

sudo docker pull konradkleine/docker-registry-frontend:v2
sudo docker save -o $BASE_PATH/$REPOS_NAME/docker-registry-frontend.tar konradkleine/docker-registry-frontend:v2

sudo chown -R $(whoami):$(whoami) $BASE_PATH
