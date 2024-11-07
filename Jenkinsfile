pipeline {
    agent any
    parameters {
        string(name: 'action', defaultValue: 'plan', description: 'Specify Terraform action (apply or destroy)')
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
                script {
                    if (params.action == 'apply') {
                        sh 'terraform apply -auto-approve tfplan'  // Uses saved plan for apply
                    } else if (params.action == 'destroy') {
                        sh 'terraform destroy -auto-approve'  // Executes destroy with auto-approve
                    } else {
                        error "Invalid action: ${params.action}. Only 'apply' or 'destroy' are allowed."
                    }
                }
            }
        }
    }
}
