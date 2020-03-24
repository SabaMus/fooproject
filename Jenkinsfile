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
                sh 'newman run Restful_Booker.postman_collection.json --environment Restful_Booker.postman_environment.json --reporters junit'
            }
            post {
                always {
                        junit '**/*xml'
                    }
                }
             }
             stage('Robot Framework System tests with Selenium') {
                       steps {
                           sh 'robot --variable BROWSER:headlesschrome -d Results Tests Infotiv.robot'
                       }
                       post {
                           always {
                               script {
                                     step(
                                           [
                                             $class              : 'RobotPublisher',
                                             outputPath          : 'results',
                                             outputFileName      : '**/output.xml',
                                             reportFileName      : '**/report.html',
                                             logFileName         : '**/log.html',
                                             disableArchiveOutput: false,
                                             passThreshold       : 50,
                                             unstableThreshold   : 40,
                                             otherFiles          : "**/*.png,**/*.jpg",
                                           ]
                                        )
                                      }
                           }
                       }
                }
           }
        }
