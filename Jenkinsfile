pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building the Docker image...'
                sh 'docker build -t jenkins-cicd-task2:1.0 .'
            }
        }

        stage('Test') {
            steps {
                echo 'Testing the application...'
                sh 'docker run --rm jenkins-cicd-task2:1.0 node -e "const http = require('\''http'\''); const server = http.createServer((req, res) => res.end('\''OK'\'')); server.listen(3000, '\''127.0.0.1'\'', () => server.close());"'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
                sh '''
                    docker rm -f jenkins-task2-app || true
                    docker run -d --name jenkins-task2-app -p 3001:3000 jenkins-cicd-task2:1.0
                '''
            }
        }
    }
}
