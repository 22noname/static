pipeline {
        agent any

        stages {
                stage('Check Index.html file using Tidy linter') {
                        steps { 
                                sh 'tidy -q -e *.html'
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




