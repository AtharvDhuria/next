# 🚀 Web App CI Pipeline with GitHub Actions & AWS ECR

A modern CI pipeline that automatically builds, validates, and pushes Docker images to **AWS ECR** and safely merges feature branches into `main` using **GitHub Actions**.

---

## ✨ Features

- 🔁 Automatic CI trigger on branch push  
- 🐳 Docker image build & validation  
- 📦 Push versioned images to AWS ECR  
- 🔐 Secure AWS authentication via GitHub Secrets  
- 🔀 Auto-merge to `main` on successful pipeline  
- 🧼 Keeps `main` branch always production-ready  

---

## 🏗️ CI Workflow Overview

```text
Push to feature/dev branch
        ↓
GitHub Actions triggered
        ↓
Docker image build
        ↓
Docker validation/tests
        ↓
Push image to AWS ECR
        ↓
Merge branch → main
