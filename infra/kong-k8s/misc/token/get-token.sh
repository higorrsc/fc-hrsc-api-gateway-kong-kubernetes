#!/bin/bash
# kubectl exec -it testcurl -- sh

# curl --location --request POST 'http://keycloak.iam/realms/bets/protocol/openid-connect/token' \
# --header 'Content-Type: application/x-www-form-urlencoded' \
# --data-urlencode 'client_id=kong' \
# --data-urlencode 'grant_type=password' \
# --data-urlencode 'username=maria' \
# --data-urlencode 'password=maria' \
# --data-urlencode 'client_secret=ucIBV9uUewtEnMit59Er9xODGQm2xEc1' \
# --data-urlencode 'scope=openid'
kubectl exec testcurl -- \
  curl --location --request POST 'http://keycloak.iam/realms/bets/protocol/openid-connect/token' \
  --header 'Content-Type: application/x-www-form-urlencoded' \
  --data-urlencode 'client_id=kong' \
  --data-urlencode 'grant_type=password' \
  --data-urlencode 'username=maria' \
  --data-urlencode 'password=maria' \
  --data-urlencode 'client_secret=ucIBV9uUewtEnMit59Er9xODGQm2xEc1' \
  --data-urlencode 'scope=openid' | jq
