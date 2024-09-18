pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout code from version control
                git branch: 'main', url: 'https://github.com/rifaterdemsahin/jenkinsmigrationtoazuredevops.git'
            }
        }
        
        stage('Build') {
            steps {
                // Sample shell command for building the project
                sh 'code/build.sh'
            }
        }
        
        stage('Test') {
            steps {
                // Sample shell command for running tests
                sh 'code/run-tests.sh'
            }
        }
    }
    
    post {
        always {
            // Clean up workspace after build
            cleanWs()
        }
        
        success {
            // Notify if the build succeeded
            echo 'Build and tests succeeded.'
        }
        
        failure {
            // Notify if the build failed
            echo 'Build failed. Check the logs for details.'
        }
    }
}
