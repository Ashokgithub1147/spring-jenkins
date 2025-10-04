pipeline{
    agent any
    tools{
        maven 'maven_3_9_11'
    }
    stages{
        stage('Build Maven'){
            steps{
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Ashokgithub1147/spring-jenkins']])
                bat 'mvn clean install'
            }
        }
        stage('Build Docker Image'){
            steps{
                bat 'docker build -t ashok1147/devops-integration .'
            }
        }
        stage('Push docker image to docker hub'){
            steps{
                withCredentials([usernamePassword(credentialsId: 'dockerhub-pwd', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    bat """
                    echo %DOCKER_PASS% | docker login -u %DOCKER_USER% --password-stdin
                    docker push %DOCKER_USER%/devops-integration
                    """
                }

            }
        }
        
    }
}