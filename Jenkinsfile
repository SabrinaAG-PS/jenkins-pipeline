pipeline {
    agent any
stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/SabrinaAG-PS/jenkins-pipeline.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("sample-flask-app:v1")
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-credentials') {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}