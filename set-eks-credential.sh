#!/bin/bash

if [[ -z "$TARGET_EKS_CLUSTER" ]]; then
    echo "No target EKS cluster set. Skipping credentials."
    exit 0
fi 

aws eks --region us-west-2 update-kubeconfig --name "$TARGET_EKS_CLUSTER"
