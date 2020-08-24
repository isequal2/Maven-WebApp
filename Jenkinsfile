pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                echo 'build'
            }
        }
        stage('Test') { 
            steps {
                echo 'test'
            }
        }
        stage('Deploy') { 
            steps {
                echo 'deploy'
            }
        }
        stage('checkou code'){
            steps{
                checkout scm
              def url = sh(returnStdout: true, script: 'git config remote.origin.url').trim()
                echo $url
            }
        }
    }
}
