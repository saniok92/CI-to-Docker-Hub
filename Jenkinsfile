pipelene {
  agent any

  environment {
    DOCKERHUB_CREDENTIALS = credentials ('docker-hub')
  }        
  stages{
    stage('Build'){
      steps{
        sh 'docker build -t saniok92/example:v1 .'
      }
    }
    stage('login'){
      steps{
        sh 'echo @DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push saniok92/example:v1'
      }
    }
  }
  post {
    always {
      sh 'docker logout'
    }
  }
}
