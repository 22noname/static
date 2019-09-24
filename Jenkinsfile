pipeline {
        agent any

        stages {
                stage('Check Index.html file using Tidy linter') {
                        steps { 
                                sh 'tidy -q -e *.html'
                        }
                }

                stage('Check Nginx Docker Image Building') {
                        steps {
                                sh 'docker build --network=host . -t 22noname/nginx'
                        }
                }

                stage('Check if Nginx is Running') {
                        agent {
                            docker { image '22noname/nginx' }
                        }
                        steps { 
                                sh 'nginx -V'
                        }
                }

        }

}


