# Migrating Jenkins Pipeline to Azure DevOps 🚀

In this post, I’ll walk you through a **Proof of Concept (PoC)** where I migrated a Jenkins pipeline to an Azure DevOps pipeline. By leveraging **Docker**, we’ll keep things isolated, modular, and scalable. This approach allows you to streamline your CI/CD processes and fully embrace Azure DevOps for more effective project management.

## 🔍 Why Move from Jenkins to Azure DevOps?

Jenkins is a solid CI/CD tool, but **Azure DevOps** offers integrated solutions, allowing better project management, traceability, and tighter security. By migrating, you’ll benefit from:

- Integrated Git repositories 🛠️
- Built-in testing and release pipelines 📦
- Cloud-native automation ☁️

## 🛠️ Jenkins Pipeline Setup

First, let’s take a look at our Jenkins pipeline running within Docker:

```bash
docker run \
  --name jenkins-poc \
  -p 8080:8080 \
  -v jenkins-data:/var/jenkins_home \
  jenkins/jenkins:lts
