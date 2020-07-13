def branch = 'test' 
def args = [: ]
def executeDeployment = false
pipeline {
  
    agent any
    
    stages {
        stage('Code Checkout') {
            steps {
                checkout scm
                echo $branch
            }
        }
    }
    
}
