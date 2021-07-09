pipeline { 
// 
    environment { 
        registry = "imalka12" 
        registryUrl ="imalka12.azurecr.io"
        registryCredential = "ACR"
        dockerImage = '' 
    }

    agent any

    stages { 
        stage('Cloning our Git') { 
            steps { 
                git branch: 'main',
                credentialsId: 'GitHubPersonalAccessToken',
                url: 'https://github.com/ict17860/Demo.git'
                // git 'https://github.com/dimuit86/jenkins-pipeline.git' 
            }

            // steps { 
            //     git 'https://github.com/dimuit86/jenkins-pipeline.git' 
            // }
        } 
        stage('Building our image') { 
            steps { 
                script { 
                    dockerImage = docker.build registry + ":$BUILD_NUMBER" 
                }
            } 
        }
        stage('Deploy our image to ACR') { 
            steps { 
                script { 
                    docker.withRegistry( "http://${registryUrl}", registryCredential ) { 
                        dockerImage.push() 
                    }
                } 
            }
        } 
        stage('Cleaning up') { 
            steps { 
                sh "docker rmi $registry:$BUILD_NUMBER" 
            }
        } 
    }
}
