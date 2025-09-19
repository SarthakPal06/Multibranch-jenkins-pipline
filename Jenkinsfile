pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t myapp:staging .'
            }
        }
        stage('Deploy Docker Container') {
            steps {
                // Remove existing container if exists
                sh 'docker rm -f myapp_staging || true'
                // Run new container on port 8082
                sh 'docker run -d -p 8082:80 --name myapp_staging myapp:staging'
            }
        }
    }
}

