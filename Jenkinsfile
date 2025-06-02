pipeline {
  agent any

  environment {
    IMAGE_NAME = 'ronu010/ci-cd-app'  // Use your Docker Hub ID
  }

  stages {
    stage('Clone') {
      steps {
        git 'https://github.com/ronu010/ci-cd-k8s-project.git'
      }
    }

    stage('Build Docker Image') {
      steps {
        script {
          docker.build("${IMAGE_NAME}:latest")
        }
      }
    }

    stage('Push to Docker Hub') {
      steps {
        script {
          docker.withRegistry('https://index.docker.io/v1/', 'docker-hub-credentials') {
            docker.image("${IMAGE_NAME}:latest").push()
          }
        }
      }
    }

    stage('Deploy to Kubernetes') {
      steps {
        sh 'kubectl apply -f k8s/'
      }
    }
  }
}
