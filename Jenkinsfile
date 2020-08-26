def repoName
def branchName
def repoURL
pipeline {
    agent any 
	environment{
		shortCommit = "${sh(returnStdout: true, script: "git log -n 1 --pretty=format:'%h'").trim()}"
	}
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
                script{
	 repoName = determineRepoName()
         branchName = getGitBranchName() 
         repoURL = determineRepoURL()
                    def scmVars = checkout([
        $class: 'GitSCM'
      ])
      echo "env.GIT_COMMIT"
      echo "${env.GIT_COMMIT}"
	 }
		    sh 'rm -rf *.properties'
                sh "echo jobName=${env.JOB_NAME} >> variable.properties"
sh "echo buildNumber=${env.BUILD_NUMBER} >> variable.properties"
sh "echo repoName=$repoName >> variable.properties"
sh "echo branchName=$branchName >> variable.properties"
sh "echo repoURL=$repoURL >> variable.properties"
sh "echo commitID=${env.shortCommit} >> variable.properties"
sh "echo BlackDuckProject=Canada-Application >> variable.properties"
sh "echo BlackDuckVersion=${env.BUILD_NUMBER} >> variable.properties"
		  
            }
        }
    }
	post {
        always {
            
            archiveArtifacts artifacts: "variable.properties"
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
    return scm.branches[0].name
}

