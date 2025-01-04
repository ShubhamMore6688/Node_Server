pipeline{
    environment{
        REPO_URL =  'https://github.com/ShubhamMore6688/Node_Server.git' 
        DOCKER_IMAGE = 'smore6688/node-server:latest'

    }

    stages{
        stage('code'){
            steps{
                echo ' Code checkout'
                git: 'https://github.com/ShubhamMore6688/Node_Server.git' branch: 'master'
            }
        }
        stage('build image'){
            steps{
                echo 'build docker image'
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }
        stage('push image'){
            steps{
                echo 'push docker image to dockerhub'
                withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]){
                    sh 'docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD'
                    sh 'docker push $DOCKER_IMAGE'
                }
            }
        }
    }
}