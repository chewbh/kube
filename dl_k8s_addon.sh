#!/bin/bash

K8S_STABLE_VERSION=$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)
echo "Latest Kubernetes stable version: $K8S_STABLE_VERSION"

docker_img_from_yaml() {
  local IMAGE_LINE=$(curl -s $1 | grep $2)
  local IMAGE_TAG="${IMAGE_LINE##* }"
  IMAGE_TAG=$(echo $IMAGE_TAG | xargs)
  #echo $IMAGE_LINE
  echo $IMAGE_TAG
}

img_to_filename () {
  local FILENAME="${1##*/}"
  FILENAME="${FILENAME/:/_}.tar"        # escape special chars that separate name and version
  echo $FILENAME
}

img_switch_registry_tag () {
  local IMAGE_TAG="${1##*/}"
  echo "$2/$IMAGE_TAG"
}


echo "##############################"
#echo $DASHBOARD_IMAGE
#echo $IMAGE

K8S_DASHBOARD_FILE="https://raw.githubusercontent.com/kubernetes/dashboard/v1.10.1/src/deploy/recommended/kubernetes-dashboard.yaml"


WEAVE_NET_FILE="https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"



DOCKER_IMAGE=$(docker_img_from_yaml $K8S_DASHBOARD_FILE 'kubernetes-dashboard-amd64')
echo $DOCKER_IMAGE
echo $(img_to_filename $DOCKER_IMAGE)


