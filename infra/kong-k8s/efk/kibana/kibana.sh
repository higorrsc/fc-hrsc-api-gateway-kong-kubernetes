#!/bin/bash
kubectl get ns logs || kubectl create namespace logs
helm install kibana elastic/kibana \
  --version=7.17.1 \
  --namespace=logs \
  --set service.type=NodePort \
  --set service.nodePort=31000 \
  --set resources.requests.cpu=200m \
  --set resources.requests.memory=1Gi \
  --set resources.limits.cpu=500m \
  --set resources.limits.memory=1.5Gi
