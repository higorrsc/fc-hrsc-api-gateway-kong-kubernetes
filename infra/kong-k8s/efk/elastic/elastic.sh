#!/bin/bash
kubectl get ns logs || kubectl create namespace logs
helm repo add elastic https://helm.elastic.co
helm repo update
helm install elasticsearch elastic/elasticsearch \
  --version=7.17.1 \
  --namespace=logs \
  -f elastic-values.yaml
