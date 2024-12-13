pipeline {
  agent any

  stages {
    stage('Build Docker Image') {
      steps {
        sh 'docker build -t flask-app .'
      }
    }

    stage('Run Docker Container') {
      steps {
          sh 'docker run -d -p 8080:8080 flask-app'
      }
    }
  }

  post {
    always {
      sh 'echo "Running on port 8080" '
    }
  }
}