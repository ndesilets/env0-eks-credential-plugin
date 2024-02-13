#!/bin/bash

TARGET_EKS_CLUSTER=$(jq -rM '.TARGET_EKS_CLUSTER' env0.env-vars.json)
if [[ "$TARGET_EKS_CLUSTER" -eq 'null' ]]; then
    echo "No target EKS cluster set. Skipping credentials."
    exit 0
fi

aws eks --region us-west-2 update-kubeconfig --name "$TARGET_EKS_CLUSTER"
