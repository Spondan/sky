pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    // Build Docker image for Skywings
                    bat 'docker build -t skywings-site .'
                }
            }
        }
        stage('Push') {
            steps {
                script {
                    // Push Docker image to Docker Hub
                    bat 'docker push spondan/skywings-site:latest'
                }
            }
        }
    }
}
