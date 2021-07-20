pipeline {
    agent any
    tools {
        terraform 'terraform'
}
    stages{
          stage('Git Checkout'){
            steps{
                git credentialsId: '109e62b7-301b-4a33-a8f2-a9a7cc7b0668', url: 'https://github.com/phanick/tf-demo.git'
            }
        }
          stage('Build'){
            steps{
                build quietPeriod: 5, job: 'TestMaven'
            }
        }
        stage('Terraform Init'){
            steps{
                sh 'terraform init'
            }
        }
         stage('Terraform Apply'){
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
    }
}