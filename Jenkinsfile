pipeline {
    agent any

    stages {
        stage('Build') {
            steps(maven: 'mvn') {
                sh 'mvn clean package'
            }
            
        }
        stage('Deploy') {
            steps {
                sh 'docker-compose up -d --build'
            }
        }
        stage('Test Integration') {
            steps {
                sh 'wget -m http://localhost:8082/app-web-demo'
            }
        }
    }
}