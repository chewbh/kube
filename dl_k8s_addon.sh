#!/bin/bash

K8S_DASHBOARD_FILE="https://raw.githubusercontent.com/kubernetes/dashboard/master/aio/deploy/recommended/kubernetes-dashboard.yaml"
TMP_DASHBOARD_IMAGE=$(curl -s $K8S_DASHBOARD_FILE | grep kubernetes-dashboard-amd64)
TMP_BASHBOARD_IMAGE="${TMP_DASHBOARD_IMAGE##* }"
DASHBOARD_IMAGE=$(echo $TMP_DASHBOARD_IMAGE | xargs)

echo "##############################"
echo $DASHBOARD_IMAGE
echo $IMAGE


