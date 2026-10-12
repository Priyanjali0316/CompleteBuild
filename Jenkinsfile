
pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Maven Build') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Test Application') {
            steps {
                bat 'java -jar target/complete-build-1.0.jar'
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t complete-build:latest .'
            }
        }
    }
}
