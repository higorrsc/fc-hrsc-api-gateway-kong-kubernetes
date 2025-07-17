#!/bin/bash
kubectl -n argocd port-forward svc/argocd-server 8080:443
