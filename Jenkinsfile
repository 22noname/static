pipeline {
        agent any

        stages {
                stage('Check Index.html file using Tidy linter') {
                        steps { 
                                sh 'tidy -q -e *.html'
                        }
                }
                 
         agent { dockerfile true }
                stages {  
                        stage ('Nginx Docker build Test") {
                        steps { 
                                sh 'nginx -V'
                        }
                }        
                }


        }

}



