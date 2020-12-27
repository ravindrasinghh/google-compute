pipeline {
    parameters {
       choice(name: 'environment', choices: ['dev','qa','stage','prod'], description: 'Setting this will deploy the services on selected environment')
    }
    agent any 
    options {
      buildDiscarder(logRotator(numToKeepStr: "10"))
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
                sh 'terraform init -input=false'
                sh 'pwd;cd /var/lib/jenkins/workspace/devops'
                sh 'rm -rf .terraform/*'
            }
        }
        stage ('terraform plan') {
            steps {
                sh 'terraform init'
                //sh 'terraform workspace new ${environment}'
                sh 'terraform workspace select ${environment}'
                sh 'terraform plan -input=false -out tfplan'
            }
        }
        stage ('terraform apply') {
            steps {
                sh 'terraform apply -input=false -auto-approve tfplan'
            }
        }
    }
}
