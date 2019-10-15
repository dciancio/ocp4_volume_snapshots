#!/bin/bash

shopt -s expand_aliases
source ~/.bashrc.local
ddcocp4lab

AKEY=$(aws configure get aws_access_key_id | tr -d '\n' | base64)
SKEY=$(aws configure get aws_secret_access_key | tr -d '\n' | base64)

oc create -f - <<EOF
apiVersion: v1
kind: Secret
metadata:
  name: awskeys
type: Opaque
data:
  access-key-id: ${AKEY}
  secret-access-key: ${SKEY}
EOF

