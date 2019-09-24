pipeline {
        agent any

        stages {
                stage('Check Index.html file using Tidy linter') {
                        steps { 
                                sh 'tidy -q -e *.html'
                        }
                }

                stage('Build Docker Image') {
                        agent { dockerfile true }
                        }
                        steps { 
                                sh 'nginx -V'
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


