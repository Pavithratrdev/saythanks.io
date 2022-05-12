pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Package directory'
                sh("""
                    cd $WORKSPACE
                    zip -r saythanks *
                """)
            }
        }
        stage('Deploy in Test Server') {
            steps {
                echo 'Deploy package in Test server '
                sh("""
                    ./deploy_script.sh
                """)
            }
        }
        stage('Run Automation tests') {
            steps {
                echo 'Run Automation Tests'
            }
        }

        stage('Deploy in Production') {
            steps {
                echo 'Deploying changes in Production server'
            }
        }

    }
}
