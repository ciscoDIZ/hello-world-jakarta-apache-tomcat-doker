pipeline {
    agent any

    stages {
        stage('Build') {
            withMaven(maven: 'mvn') {
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