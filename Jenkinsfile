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
                sh 'newman run Restful_Booker_Facit.postman_collection.json --environment Restful_Booker.postman_environment.json --reporters junit'
            }
            post {
                always {
                        junit '**/*xml'
                    }
                }
        }
