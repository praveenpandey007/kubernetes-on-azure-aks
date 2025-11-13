#!/bin/bash
# Create Resource Group and AKS Cluster

set -e

RESOURCE_GROUP="rg-aks-demo"
CLUSTER_NAME="aks-demo"
LOCATION="eastus"

echo "Creating resource group..."
az group create -n $RESOURCE_GROUP -l $LOCATION

echo "Creating AKS cluster..."
az aks create   --resource-group $RESOURCE_GROUP   --name $CLUSTER_NAME   --node-count 2   --enable-managed-identity   --generate-ssh-keys

echo "Fetching credentials..."
az aks.get-credentials --resource-group $RESOURCE_GROUP --name $CLUSTER_NAME

echo "Cluster created successfully!"
kubectl get nodes
