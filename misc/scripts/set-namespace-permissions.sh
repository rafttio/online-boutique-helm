#!/usr/bin/env bash
set -e

echo "set permissions"
NAMESPACE=$1

kubectl create clusterrolebinding app-sa-cluster-admin-$NAMESPACE --clusterrole=cluster-admin --serviceaccount=$NAMESPACE:torque-managed-identity
