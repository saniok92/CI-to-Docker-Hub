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

    stage('Push') {
      steps {
        withDockerRegistry(credentialsId: 'docker_hub', url: 'https://index.docker.io/v1/'){
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
