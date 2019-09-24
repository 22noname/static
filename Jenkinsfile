pipeline {
        agent any

        stages {
                stage('Lint HTML') {
                        steps { 
                                sh 'tidy -q -e *.html'
                        }
                }

                stage('Test the Dockerfile') {
                        steps { 
                                sh 'docker run --rm -i hadolint/hadolint < Dockerfile'
                        }
                }

        }

}


