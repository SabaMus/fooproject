pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/SabaMus/fooproject.git'
            }
        }
        stage('junit build') {
                    steps {
                        sh "mvn compile"
                    }
          }
           stage('junit test') {
                 steps {
                     sh "mvn test"
                    }
                    post {
                        always {
                            junit '**/TEST*.xml'
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
           }
        }
