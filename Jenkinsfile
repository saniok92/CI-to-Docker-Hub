pipeline {
  agent { label 'linux' } 
   environment {
    DOCKERHUB_CREDENTIALS = credentials('dockerhub-token')
  }

  stages {
    stage('Build') {
      steps {
        sh 'docker build -t saniok92/jenkins:1.0'
      }
    }
    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push saniok92/jenkins:1.0'
      }
    }
  } 
  post {
    always {
      sh 'docker logout'
    }
  }
}
