pipeline { 

    environment { 

        registry = "dimuit86/node-demo-app" 

        registryCredential = 'DockerHubAuth' 

        dockerImage = '' 

    }

    agent any 

    stages { 

        stage('Cloning our Git') { 

            steps { 
                git branch: 'main',
                credentialsId: 'GitHubPersonalAccessToken',
                url: 'https://github.com/dimuit86/jenkins-pipeline.git'
                // git 'https://github.com/dimuit86/jenkins-pipeline.git' 

            }

        } 

        // stage('Building our image') { 

        //     steps { 

        //         script { 

        //             dockerImage = docker.build registry + ":$BUILD_NUMBER" 

        //         }

        //     } 

        // }

        // stage('Deploy our image') { 

        //     steps { 

        //         script { 

        //             docker.withRegistry( '', registryCredential ) { 

        //                 dockerImage.push() 

        //             }

        //         } 

        //     }

        // } 

        // stage('Cleaning up') { 

        //     steps { 

        //         sh "docker rmi $registry:$BUILD_NUMBER" 

        //     }

        // } 

    }

}