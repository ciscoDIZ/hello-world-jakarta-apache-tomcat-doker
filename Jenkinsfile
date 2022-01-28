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
                sh 'docker build -t hello-wolrd-jakarta .'
                sh 'docker run -d --rm -p 8082:8080 hello-wolrd-jakarta'
            }
        }
        stage('Test Integration') {
            steps {
                sh 'wget -m http://localhost:8082/app-web-demo'
            }
        }
    }
}