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
                sh 'docker build -t myapp:dev .'
            }
        }
        stage('Deploy Docker Container') {
            steps {
                // Remove existing container if exists
                sh 'docker rm -f myapp_dev || true'
                // Run new container on port 8083
                sh 'docker run -d -p 8083:80 --name myapp_dev myapp:dev'
            }
        }
    }
}
