pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                echo 'Cloning repository...'
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    bat 'docker build -t skywings:latest .'
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    // Optional: stop and remove any running container
                    bat 'docker rm -f skywings-container || exit 0'

                    // Run Docker container and map port 80 to host port 3000
                    bat 'docker run -d --name skywings-container -p 3000:80 skywings:latest'
                }
            }
        }

        stage('Done') {
            steps {
                echo 'Build and Run complete!'
            }
        }
    }
}
