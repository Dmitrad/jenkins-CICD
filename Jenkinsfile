pipeline {
    agent any

    stages {
        stage('Prep') {
            steps {
                sh '''
                echo 'Preparing....'
                '''
            }
        }
        stage('Build') {
            steps { 
                sh '''
                echo 'Building....'
                cd files/environments
                terraform init
                '''
            }
        }
        stage('Deploy') {
            steps {
                sh '''
                echo 'Deploying....'
                cd files/environments
                terraform destroy -auto-approve
                sh '''
            }
        }
    }
    post { 
        always { 
            cleanWs()
        }
    }
}