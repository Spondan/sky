pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    // Build Docker image for Skywings
                    sh 'docker build -t skywings-site .'
                }
            }
        }
        stage('Push') {
            steps {
                script {
                    // Push Docker image to Docker Hub
                    sh 'docker push spondan/skywings-site:latest'
                }
            }
        }
    }
}
