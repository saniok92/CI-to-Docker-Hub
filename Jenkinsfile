pipeline {
  agent any
  tools {
        dockerTool 'Docker'
    }
  environment {
    DOCKERHUB_CREDENTIALS = credentials('saniok92-dockerhub')
  }
  stages {
    stage('Build'){
      steps {
        docker.withRegistry('https://index.docker.io/v1/', 'DOCKERHUB_CREDENTIALS') {
           sh' docker.build('example'), image.push('latest')'
        }
      }
    }
  }

  post {
    always {
      sh 'docker logout'
    }
  }
}
