pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout code from version control
                git branch: 'main', url: 'https://github.com/rifaterdemsahin/jenkinsmigrationtoazuredevops.git'
            }
        }
        
        stage('Set Permissions') {
            steps {
                // Give execute permissions to the build and test scripts
                sh 'chmod +x code/build.sh'
                sh 'chmod +x code/run-tests.sh'
            }
        }

        stage('Build') {
            steps {
                // Run the build script
                sh './code/build.sh'
            }
        }
        
        stage('Test') {
            steps {
                // Run the test script
                sh './code/run-tests.sh'
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
