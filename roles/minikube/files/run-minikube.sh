#!/usr/bin/env bash
set -e

export MINIKUBE_WANTUPDATENOTIFICATION=false &&\
export MINIKUBE_WANTREPORTERRORPROMPT=false &&\
export CHANGE_MINIKUBE_NONE_USER=true &&\
export MINIKUBE_HOME=$HOME &&\
export KUBECONFIG=$HOME/.kube/config &&\
export KUBECONFIG=$HOME/.kube/config &&\
minikube start \
--vm-driver=none \
--apiserver-ips=$(ifconfig eth0 | grep netmask | awk '{print $2}') \
--apiserver-names=$(ifconfig eth0 | grep netmask | awk '{print $2}') \
--extra-config=kubelet.resolv-conf=/var/run/systemd/resolve/resolv.conf && \
chown -R $USER $HOME/.kube && \
chown -R $USER $HOME/.minikube || true