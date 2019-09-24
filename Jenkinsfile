pipeline {
        agent any

        stages {
                stage('Lint HTML') {
                        steps { 
                                sh 'tidy -q -e *.html'
                        }
                }

                stage('Test Nginx') {
                        agent {
                            docker { image '22noname/nginx' }
                        }
                        steps { 
                                sh 'nginx -V'
                        }
                }

        }

}



