pipeline {
    parameters {
       choice(name: 'environment', choices: ['dev','qa','stage','prod'], description: 'Setting this will deploy the services on selected environment')
    }
    agent any {
        credentials = 'test'        
    }
    stages {
        stage ('checkout') {
            steps {
                script{
                    git "https://github.com/ravindrasinghh/google-compute.git"
                }
            }
        }
        stage ('terraform init') {
            steps {
                sh 'terraform init -input=false -credentials=env.credentials'
            }
        }
        stage ('terraform plan') {
            steps {
                sh 'terraform workspace new ${environment}'
                sh 'terraform workspace select ${environment}'
                sh 'terraform workspace show'
            }
        }
    }
}
