pipeline {
    agent any
    stages {
         stage('docker image build') {
            steps {
                sh 'docker build -t nileshbhadana/flask-helloworld  .'
            }
        }
         stage('docker container run') {
            steps {
                sh 'docker-compose up -d'
            }
        }
         stage('docker image push to dockerhub') {
            steps {
                sh 'docker push nileshbhadana/flask-helloworld'
            }
        }
         stage('confirmation') {
            steps {
                sh 'echo "check your browser with public-ip:80"'
            }
        }
    }
}
