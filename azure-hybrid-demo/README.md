
# 🌩️ Hybrid Cloud Demo – Azure + AWS

## 🧭 Overview
This project demonstrates a **3‑tier hybrid cloud architecture** integrating Microsoft Azure and Amazon Web Services (AWS).  
It showcases secure connectivity, governance, and Infrastructure‑as‑Code (IaC) automation for cross‑cloud workloads.

---

## 🏗️ Architecture Summary
- **Frontend:** Azure App Service (Web Application)
- **Backend:** AWS EC2 Instance (REST API)
- **Database:** Azure SQL Database (Shared Data Layer)
- **Connectivity:** Site‑to‑Site VPN / ExpressRoute + AWS Direct Connect
- **Governance:** Azure Policy + AWS IAM
- **Monitoring:** Azure Monitor + AWS CloudWatch

![Hybrid Cloud Architecture Diagram](./hybrid-cloud-architecture.png)

---

## ⚙️ Deployment Steps
### 1. Prerequisites
- Active Azure subscription with credits
- AWS account with VPC and EC2 access
- Terraform installed locally

### 2. Infrastructure‑as‑Code Setup
```bash
terraform init
terraform plan
terraform apply
