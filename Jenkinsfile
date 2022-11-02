pipeline {
    agent any

    tools {
        gradle 'gradle_new'
    }
    
    stages {
        stage('checkout SCM') {
            steps {
            git branch: 'main', url: "https://github.com/balavu/gradle-minimal.git"
            }
        }

        stage('Build') {
            steps {
                sh 'gradle build'
            }

        }

        stage('publish artifacts') {
            steps{
                sh 'gradle artifactoryPublish'
            }
        }
    }
}
