pipeline {
    agent any

    stages {
        state('Build') {
            sh 'mvn clean install'
        }
        stage('Deploy') {
            sh 'docker-compose up -d --build'
        }
    }
}