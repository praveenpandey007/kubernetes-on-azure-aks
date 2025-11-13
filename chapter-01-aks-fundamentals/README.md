# Chapter 1 — Kubernetes Fundamentals & AKS Crash Course

This chapter introduces the basics of Kubernetes and walks through creating your first AKS cluster, deploying a sample NGINX application, and validating your setup.

---

## 🎯 Objectives
- Understand Pods, Deployments, Services, and Namespaces
- Learn what AKS manages for you vs what you manage
- Create your first AKS cluster
- Deploy and expose a sample app
- Follow production readiness checklist

---

## 🏗️ Setup Instructions

### 1️⃣ Create Resource Group
```bash
az group create -n rg-aks-demo -l eastus
```

### 2️⃣ Create AKS Cluster
```bash
az aks create   --resource-group rg-aks-demo   --name aks-demo   --node-count 2   --enable-managed-identity   --generate-ssh-keys
```

### 3️⃣ Get Cluster Credentials
```bash
az aks get-credentials --resource-group rg-aks-demo --name aks-demo
kubectl get nodes
```

### 4️⃣ Deploy App
```bash
kubectl apply -f manifests/deployment.yaml
kubectl apply -f manifests/service.yaml
```

### 5️⃣ Verify Deployment
```bash
kubectl get pods -o wide
kubectl get svc nginx-demo-svc
```

Wait for `EXTERNAL-IP` and open it in your browser.

---

## 🧩 Manifests Overview

| File | Description |
|------|--------------|
| `deployment.yaml` | Defines the NGINX app deployment |
| `service.yaml` | Exposes the app through Azure Load Balancer |

---

## 🧹 Cleanup
```bash
bash scripts/cleanup.sh
```

---

## ✅ Next Chapter
**Chapter 2: AKS Networking Deep Dive** — we’ll cover CNI, ingress, and private clusters.

---

> Follow me on LinkedIn for weekly chapters and real-world AKS insights.
