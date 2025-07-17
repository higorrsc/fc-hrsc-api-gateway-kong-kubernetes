#!/bin/bash
kubectl get ns logs || kubectl create namespace logs
helm install kibana elastic/kibana \
  --version=7.17.1 \
  --namespace=logs \
  --set service.type=NodePort \
  --set service.nodePort=31000
