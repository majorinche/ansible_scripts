#!/bin/sh

docker pull docker-repo.sonic.com:443/cockpit/kubernetes:latest
docker pull docker-repo.sonic.com:443/openshift/origin-control-plane:v3.11.0
docker pull docker-repo.sonic.com:443/openshift/origin-deployer:v3.11.0
docker pull docker-repo.sonic.com:443/openshift/origin-docker-registry:v3.11.0
docker pull docker-repo.sonic.com:443/openshift/origin-haproxy-router:v3.11.0
docker pull docker-repo.sonic.com:443/openshift/origin-pod:v3.11.0
docker pull docker-repo.sonic.com:443/coreos/etcd:v3.2.22
docker tag docker-repo.sonic.com:443/coreos/etcd:v3.2.22 quay.io/coreos/etcd:v3.2.22
docker pull docker-repo.sonic.com:443/openshift/oauth-proxy:v1.1.0
docker pull docker-repo.sonic.com:443/grafana/grafana:5.2.1
docker tag docker-repo.sonic.com:443/openshift/oauth-proxy:v1.1.0 openshift/oauth-proxy:v1.1.0
docker tag docker-repo.sonic.com:443/grafana/grafana:5.2.1 grafana/grafana:5.2.1
docker pull docker-repo.sonic.com:443/openshift/origin-logging-curator5:v3.11.0
docker pull docker-repo.sonic.com:443/openshift/prometheus:v2.3.2
docker tag docker-repo.sonic.com:443/openshift/prometheus:v2.3.2 openshift/prometheus:v2.3.2
docker pull docker-repo.sonic.com:443/openshift/prometheus-alertmanager:v0.15.2
docker tag docker-repo.sonic.com:443/openshift/prometheus-alertmanager:v0.15.2 openshift/prometheus-alertmanager:v0.15.2
docker pull docker-repo.sonic.com:443/openshift/prometheus-node-exporter:v0.16.0
docker tag docker-repo.sonic.com:443/openshift/prometheus-node-exporter:v0.16.0 openshift/prometheus-node-exporter:v0.16.0
docker pull docker-repo.sonic.com:443/coreos/kube-rbac-proxy:v0.3.1
docker tag docker-repo.sonic.com:443/coreos/kube-rbac-proxy:v0.3.1 coreos/kube-rbac-proxy:v0.3.1
docker pull docker-repo.sonic.com:443/calico/cni:v3.1.3
docker pull docker-repo.sonic.com:443/calico/kube-controllers:v3.1.3
docker pull docker-repo.sonic.com:443/calico/node:v3.1.3
docker pull docker-repo.sonic.com:443/calico/upgrade:v1.0.5
docker pull docker-repo.sonic.com:443/nfvpe/multus:v3.2
docker tag docker-repo.sonic.com:443/nfvpe/multus:v3.2 nfvpe/multus:v3.2
