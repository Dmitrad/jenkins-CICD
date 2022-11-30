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
                cd terraform
                terraform init
                terraform plan
            }
        }
        // stage('Deploy') {
        //     steps {
        //         echo 'Deploying....'
        //         cd terraform
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