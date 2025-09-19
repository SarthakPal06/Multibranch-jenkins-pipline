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
                sh 'docker build -t myapp:prod .'
            }
        }
        stage('Deploy Docker Container') {
            steps { 
                sh 'docker rm -f myapp_prod || true'
                sh 'docker run -d -p 8081:80 --name myapp_prod myapp:prod'
            }
        }
    }
}
