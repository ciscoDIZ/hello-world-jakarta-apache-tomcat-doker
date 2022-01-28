pipeline {
    agent any

    stages {
        state('Build') {
            steps {
                sh 'mvn clean install'
            }
            
        }
        stage('Deploy') {
            steps {
                sh 'docker-compose up -d --build'
            }
        }
    }
}