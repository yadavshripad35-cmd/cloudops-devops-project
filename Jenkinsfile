pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out CloudOps source code'
                checkout scm
            }
        }

        stage('Validate Application') {
            steps {
                echo 'Validating application files'

                sh '''
                    test -f app/index.html
                    test -f Dockerfile

                    echo "Application files validated successfully"
                '''
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building CloudOps Docker image'

                sh '''
                    docker build -t cloudops-dashboard:${BUILD_NUMBER} .
                '''
            }
        }
    }

    post {
        success {
            echo 'CloudOps CI pipeline completed successfully!'
        }

        failure {
            echo 'Pipeline failed. Check the Jenkins console output.'
        }
    }
}
