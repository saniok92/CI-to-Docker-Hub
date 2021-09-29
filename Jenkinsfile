pipeline {
  agent any
  tools {
        dockerTool 'Docker'
    }
  environment {
    DOCKERHUB_CREDENTIALS = credentials('docker')
  }
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t saniok92/example:1 .'
      }
    }
    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS | docker login -u saniok92 -password'
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
