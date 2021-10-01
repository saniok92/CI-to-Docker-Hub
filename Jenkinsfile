pipeline {
  agent {label 'agent'}
 
  environment {
    DOCKERHUB_CREDENTIALS = credentials('saniok92-dockerhub')
  }
  stages {
    stage('Build'){
      steps {
        script {
          sh 'docker version'
          docker.withRegistry('https://hub.docker.com', 'saniok92-dockerhub') {
            def img=docker.build('saniok92/example')
            img.push('latest')
          }
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
