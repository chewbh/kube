#!/bin/bash

# kuberentes basic components
sudo docker pull gcr.io/google_containers/kube-apiserver-amd64:v1.9.3
sudo docker pull gcr.io/google_containers/kube-proxy-amd64:v1.9.3
sudo docker pull gcr.io/google_containers/kube-scheduler-amd64:v1.9.3
sudo docker pull gcr.io/google_containers/kube-controller-manager-amd64:v1.9.3
sudo docker pull gcr.io/google_containers/k8s-dns-sidecar-amd64:1.14.7
sudo docker pull gcr.io/google_containers/k8s-dns-kube-dns-amd64:1.14.7
sudo docker pull gcr.io/google_containers/k8s-dns-dnsmasq-nanny-amd64:1.14.7
sudo docker pull gcr.io/google_containers/etcd-amd64:3.1.10
sudo docker pull gcr.io/google_containers/pause-amd64:3.0

# kubernetes networks add ons
sudo docker pull quay.io/coreos/flannel:v0.9.1-amd64
sudo docker pull quay.io/calico/node:v3.0.3
sudo docker pull quay.io/calico/kube-controllers:v2.0.1
sudo docker pull quay.io/calico/cni:v2.0.1

# kubernetes dashboard
sudo docker pull gcr.io/google_containers/kubernetes-dashboard-amd64:v1.8.3

# kubernetes heapster
sudo docker pull gcr.io/google_containers/heapster-influxdb-amd64:v1.3.3
sudo docker pull gcr.io/google_containers/heapster-grafana-amd64:v4.4.3
sudo docker pull gcr.io/google_containers/heapster-amd64:v1.4.2

# kubernetes apiserver load balancer
sudo ocker pull nginx:latest
