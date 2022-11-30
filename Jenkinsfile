pipeline {
    agent any

    stages {
        stage('Prep') {
            steps {
                echo 'Preparing....'
            }
        }
        stage('Build') {
            steps {
                echo 'Building....'
                cd files
                terraform init
                terraform plan
            }
        }
        // stage('Deploy') {
        //     steps {
        //         echo 'Deploying....'
        //         cd files
        //         terraform apply -auto-approve
        //     }
        // }
    }
    post { 
        always { 
            cleanWs()
        }
    }
}