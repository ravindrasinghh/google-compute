pipeline {
    agent any 
    stages {
        stage ('checkout') {
            steps {
                script{
                    git "https://github.com/ravindrasinghh/google-compute.git"
                }
            }
        }
        stage {'terraform init'} {
            steps {
                sh 'ls'
            }
        }
    }
}
