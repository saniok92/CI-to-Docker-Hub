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
        docker.withRegistry('https://hub.docker.com', 'saniok92-dockerhub') {
          def img=docker.build('saniok92/example')
          img.push('latest')
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
