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
                echo determineRepoName()
                echo determineRepoURL()
                echo getGitBranchName()
            }
        }
    }
}
String determineRepoName() {
    return scm.getUserRemoteConfigs()[0].getUrl().tokenize('/')[3].split("\\.")[0]
}
String determineRepoURL() {
    return scm.getUserRemoteConfigs()[0].getUrl()
}
String getGitBranchName() {
    return scm.branches[0].name.tokenize("*")[0].split("\\/")[1]
}
