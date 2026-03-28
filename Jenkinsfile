pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/ghulammurtaza123669/mlops-project1.git'
            }
        }
        stage('Build Image') {
            steps {
                sh 'docker build -t app .'
            }
        }
        stage('Deploy') {
            steps {
                // Purana container stop aur remove karne ke liye
                sh 'docker ps -q --filter "name=my-app" | xargs -r docker stop'
                sh 'docker ps -aq --filter "name=my-app" | xargs -r docker rm'
                // Naya container chalane ke liye
                sh 'docker run -d -p 80:80 --name my-app app'
            }
        }
    }
}
