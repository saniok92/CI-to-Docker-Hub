pipeline {
  agent { label 'linux' } 
   environment {
    DOCKERHUB_CREDENTIALS = credentials('saniok92-dockerhub')
  }

  stages {
    stage('Build') {
      steps {
        sh 'docker build -t saniok92/sample:1.1 .'
      }
    }
    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push saniok92/sample:1.1'
      }
    }
  } 
  post {
    always {
      sh 'docker logout'
    }
  }
}
