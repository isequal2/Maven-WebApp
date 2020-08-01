//def branch = 'test' 
//def args = [: ]
//def executeDeployment = false
pipeline {
  
    agent any
    
    stages {
        stage('Code Checkout') {
            steps {
                checkout scm
                echo $branch
            }
        }
		stage('UCD Publish') {
            steps{
                ucd components: [[baseDir: '${WORKSPACE}',
                componentName: 'TestDeploy',
                deployVersion: '',
                description: 'test deploy'
                versionsName: '{BUILD_NUMBER}']],
                serverName: 'prod'
}
        }
    }
    
}
