pipeline {
  agent { label 'linux'}
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  environment {
    DOCKERHUB_CREDENTIALS = credentials('docker-hub')
  }        
  stages{
    stage('Build'){
      steps{
        sh 'docker build -t saniok92/example:1 .'
      }
    }
    stage('login'){
      steps{
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
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
