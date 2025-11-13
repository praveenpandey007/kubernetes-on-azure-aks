# Kubernetes on Azure AKS — 12-Week Practical Series

This repository supports my 12-week LinkedIn article series on **Kubernetes for Azure (AKS)** — from fundamentals to advanced production practices.

Each chapter folder contains:
- Hands-on YAML manifests
- Azure CLI & kubectl commands
- Shell scripts for quick setup and teardown
- A short README summarizing key learnings

## 📘 Chapters
1. [AKS Fundamentals](./chapter-01-aks-fundamentals/README.md)
2. AKS Networking Deep Dive (coming soon)
3. Security & Identity in AKS (coming soon)
4. Infrastructure as Code with Terraform (coming soon)
5. Workloads & Scheduling (coming soon)
6. CI/CD for AKS (coming soon)
7. GitOps with Flux/ArgoCD (coming soon)
8. Observability & Monitoring (coming soon)
9. Scaling & Cost Optimization (coming soon)
10. Service Mesh (coming soon)
11. Backup & Disaster Recovery (coming soon)
12. Real-World AKS Patterns (coming soon)

Follow the series on LinkedIn:  
👉 [Follow Praveen Pandey on LinkedIn](https://www.linkedin.com/in/praveenpandeydevops)

---

## 🧰 Prerequisites
- Azure CLI (`az`)
- kubectl
- Access to an Azure subscription

---

## 🚀 Quick Start
```bash
cd chapter-01-aks-fundamentals/scripts
bash create-cluster.sh
kubectl apply -f ../manifests/
```

To clean up:
```bash
bash cleanup.sh
```

---

## 🧠 Learn More
Each chapter aligns with a weekly LinkedIn article that blends real-world experience, deep insights, and actionable examples.

> ⚡ Star this repo if you’re following the journey!  
> Contributions (typo fixes, examples) are welcome via pull requests.
