# 🚢 SecureShip – CI/CD Deployment from GitHub to AWS EC2

SecureShip is a complete DevOps deployment pipeline project I built to simulate real-world CI/CD using Docker, GitHub Actions, and AWS EC2.

This project mimics how modern cloud-native teams automate code delivery — from commit to deployment — securely and efficiently.

---

## 🔧 Tech Stack

- **AWS EC2** – Cloud server for hosting the app
- **Docker & DockerHub** – App containerization and registry
- **GitHub Actions** – CI/CD automation
- **GitHub Secrets** – Secure credentials for SSH & DockerHub
- **Linux (Ubuntu 24.04)** – Host OS
- **Node.js App** – Sample web app for deployment

---

## 🚀 What It Does

- Push code to GitHub → triggers deployment automatically
- SSHs into EC2 using secure GitHub secrets
- Pulls latest Docker image from DockerHub
- Stops and replaces old container
- Runs the new version live on EC2, exposed on port `3000`

---

## 📸 Screenshots

| Description | Screenshot |
|------------|------------|
| ✅ CI/CD Workflow Success | ![CICD Success](SecureShip/CICD Success.png) |
| 📦 Docker Container Running on EC2 | ![Docker PS](SecureShip/Docker PS.png) |
| 🌐 App Running Live | ![Live App](SecureShip/Live App.png) |

---

## 🔒 Secrets Used

Secret Name	Purpose
EC2_SSH_KEY	Private key for EC2 login
DOCKERHUB_USERNAME	
DOCKERHUB_TOKEN	

## 🌍 Live App

If EC2 is still running, you can access the app here:
http://65.0.168.99:3000

