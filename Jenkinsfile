pipeline {
    def branch = 'test' 
def args = [: ]
def executeDeployment = false
    agent any
    
    stages {
        stage('Code Checkout') {
            steps {
                checkout scm
                echo executeDeployment
            }
        }
    }
    
}
