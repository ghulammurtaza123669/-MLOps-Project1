pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/ghulammurtaza123669/-MLOps-Project1.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t hello-world-app .'
            }
        }
        stage('Run Container') {
            steps {
                sh 'docker run --rm hello-world-app'
            }
        }
    }
    post {
        success {
            echo 'Pipeline completed successfully.'
        }
        failure {
            echo 'Pipeline failed. Check console output.'
        }
    }
}
