# AKS Quick Command Cheat Sheet

| Task | Command |
|------|----------|
| Login to Azure | `az login` |
| List subscriptions | `az account list -o table` |
| Create Resource Group | `az group create -n rg-aks-demo -l eastus` |
| Create AKS Cluster | `az aks create --resource-group rg-aks-demo --name aks-demo --node-count 2 --enable-managed-identity --generate-ssh-keys` |
| Get Credentials | `az aks get-credentials --resource-group rg-aks-demo --name aks-demo` |
| List Nodes | `kubectl get nodes` |
| Apply Manifests | `kubectl apply -f manifests/` |
| Check Pods | `kubectl get pods -o wide` |
| Get Service External IP | `kubectl get svc nginx-demo-svc` |
| Delete Resource Group | `az group delete -n rg-aks-demo --yes --no-wait` |
