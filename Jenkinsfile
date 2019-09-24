pipeline {
        agent any

        stages {
                stage('Lint HTML') {
                        steps { 
                                sh 'tidy -q -e *.html'
                        }
                }

                stage('Test the Dockerfile') {
                        agent {
                            docker { image 'hadolint/hadolint' }
                        }
                        steps { 
                                sh 'hadolint < Dockerfile'
                        }
                }

        }

}


