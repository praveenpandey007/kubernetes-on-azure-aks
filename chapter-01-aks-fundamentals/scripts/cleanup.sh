#!/bin/bash
# Delete AKS Cluster and Resource Group

RESOURCE_GROUP="rg-aks-demo"

echo "Deleting resource group $RESOURCE_GROUP..."
az group delete -n $RESOURCE_GROUP --yes --no-wait

echo "Cleanup initiated."
