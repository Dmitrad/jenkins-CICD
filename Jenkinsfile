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
                cd files
                terraform init
                terraform plan
                '''
            }
        }
        // stage('Deploy') {
        //     steps {
        //         sh '''
        //         echo 'Deploying....'
        //         cd files
        //         terraform apply -auto-approve
        //         sh '''
        //     }
        // }
    }
    post { 
        always { 
            cleanWs()
        }
    }
}