#!/bin/bash
kubectl get ns bets || kubectl create ns bets
kubectl apply -f kratelimit.yaml -n bets
kubectl apply -f kprometheus.yaml
kubectl apply -f bets-api.yaml -n bets
kubectl apply -f king.yaml -n bets
