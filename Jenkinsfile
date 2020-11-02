pipeline { 
    environment { 
        registry = "ctgraves16/ubuntu_jenkins" 
        registryCredential = 'dockerhub_id' 
        dockerImage = '' 
    }

    agent any 
    stages { 

        stage('Cloning our Git') { 
            steps { 
                git 'https://github.com/ctg123/dockerized-jenkins.git' 
            }
        } 
        stage('Building our image') { 
            steps { 
                script { 
                    dockerImage = docker.build registry + ":$BUILD_NUMBER" 
                }
            } 
        }
        stage('Deploy our image') { 
            steps { 
                script { 
                    docker.withRegistry( '', registryCredential ) { 
                        dockerImage.push() 
                    }
                } 
            }
        } 
    }
}
