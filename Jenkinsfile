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
        docker.withRegistry('https://hub.docker.com/repository/docker/saniok92/example', 'saniok92-dockerhub') {
          git 'git@github.com:saniok92/CI-to-DockerHub.git'
                               docker.build('example')
                               image.push('latest')
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
