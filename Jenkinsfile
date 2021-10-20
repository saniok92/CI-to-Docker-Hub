pipeline {
  agent { label 'linux' } 
<<<<<<< HEAD
     
   environment {
    DOCKERHUB_CREDENTIALS = credentials('saniok92-dockerhub')
  }
=======

>>>>>>> 1bf3c8b6375d4f50c7f765fb2f8a3e35875d076c

  stages {
    stage('Build') {
      steps {
        sh 'docker build -t saniok92/example:1.0 .'
      }
    }
    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push saniok92/example:1.0'
      }
    }
  }
  post {
    always {
      sh 'docker logout'
    }
  }
}