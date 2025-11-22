pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'echo "Building application..."'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t myapp-image .'
            }
        }

        stage('Push to Registry') {
            steps {
                sh 'echo "Simulating push to registry"'
            }
        }

        stage('Deploy to EC2') {
            steps {
                sh 'ssh -o StrictHostKeyChecking=no ubuntu@EC2_PUBLIC_IP "docker pull myapp-image && docker run -d -p 80:80 myapp-image"'
            }
        }
    }
}