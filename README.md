# ⚙️ CI Pipeline for Dockerized Web App (GitHub Actions + AWS ECR)

A production-ready **Continuous Integration (CI)** pipeline that builds, validates, and publishes Docker images to **AWS ECR**, then safely merges feature branches into `main` using **GitHub Actions**.

---

## 🔄 How It Works

```text
Push to feature/dev branch
        ↓
GitHub Actions CI starts
        ↓
Docker image is built
        ↓
Image validation / tests
        ↓
Push image to AWS ECR
        ↓
Auto-merge into main
