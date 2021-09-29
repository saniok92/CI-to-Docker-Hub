pipeline {
  agent any
  tools {
        dockerTool 'Docker'
    }
  environment {
    DOCKERHUB_CREDENTIALS = credentials('docker_hub')
  }
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t saniok92/example:1 .'
      }
    }
      stage('Login') {
      steps {
        sh 'docker login --username saniok92 --password-stdin < ~/docker_hub'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push saniok92/example:1'
      }
    }
  }

  post {
    always {
      sh 'docker logout'
    }
  }
}
