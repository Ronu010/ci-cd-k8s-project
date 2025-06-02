# ci-cd-k8s-project
# CI/CD Kubernetes Node.js App

This is a simple Node.js app deployed on Kubernetes with a CI/CD pipeline using GitHub Actions and Docker.

## Features

- Node.js Express app running on port 3000
- Dockerized application
- Kubernetes Deployment and Service manifests
- Automated CI/CD pipeline with GitHub Actions

## Prerequisites

- Docker Hub account
- Kubernetes cluster (Minikube, EKS, etc.)
- kubectl installed
- GitHub repository with secrets configured (Docker Hub credentials, Kubeconfig)

## Setup and Run Locally

1. Clone the repo:

   ```bash
   git clone https://github.com/yourusername/your-repo.git
   cd your-repo
   
2. installing dependcies
   npm install

3.Run the app:
   npm start

-------------------Docker------------------------------------------------
Build and push Docker image: 
docker build -t yourdockerhubusername/ci-cd-app:latest .
docker push yourdockerhubusername/ci-cd-app:latest

Kubernetes Deployment--------------------------------------------
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml

CI/CD Pipeline
GitHub Actions automates building, pushing Docker image, and deploying to Kubernetes on every push to main branch.





