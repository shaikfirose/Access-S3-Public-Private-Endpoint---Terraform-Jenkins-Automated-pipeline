pipeline {
    agent any
    parameters {
        string(name: 'action', defaultValue: 'plan', description: 'Specify Terraform action (e.g., plan or apply)')
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('terraform init') {
            steps {
                sh 'terraform init -reconfigure'
            }
        }

        stage('terraform plan') {
            steps {
                sh 'terraform plan -out=tfplan'  // Saves the plan as "tfplan"
            }
        }

        stage('terraform Action') {
            steps {
                echo "Terraform action is --> ${params.action}"
                sh "terraform ${params.action} -auto-approve tfplan"  // Executes either 'plan' or 'apply' based on input
            }
        }
    }
}
