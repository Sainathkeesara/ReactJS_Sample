pipeline {
    agent any

    stages {
        stage('Check for file changes') {
            steps {
                script {
                    // Get the current SHA of the repository
                    def currentSha = sha()
                    // Get the previous SHA of the repository
                    def previousSha = currentSha - 1
                    // Get the file status of the specific file
                    def fileStatus = sh 'git diff --name-status ${previousSha} ${currentSha} -- path/to/file'
                    // Check if the file has been modified
                    if (fileStatus.contains("M")) {
                        // Trigger the Jenkins job
                        build job: 'jobs'
                    }
                }
            }
        }
    }
}
