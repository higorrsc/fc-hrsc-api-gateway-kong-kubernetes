#!/bin/bash
kubectl get ns logs || kubectl create namespace logs
helm repo add fluent https://fluent.github.io/helm-charts
helm repo update
helm install fluentd fluent/fluentd --namespace=logs -f fluentd-values.yaml
