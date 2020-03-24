pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/xxxxxxx/mavenfooproject.git'
            }
        }
    }
}
stage('newman') {
            steps {
                sh 'newman run Restful_Booker.postman_collection.json --Restful_Booker.postman_environment.json --reporters junit'
            }
            post {
                always {
                        junit '**/*xml'
                    }
                }
        }
