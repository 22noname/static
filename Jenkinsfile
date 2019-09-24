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

                stage('Push Nginx Image on DockerHub') {
                        /* You need to create a "Docker Build and Publish" Building step on Jenkins
                                In my case, the Docker Host URI is 'docker-hub'
                                You can check it in the "Credential" menu on Jenkins web interface
                        */
                        steps {
                                script {
                        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub') {
                                app.push("${env.BUILD_NUMBER}")
                                app.push("lastest")
                                }
                        }
                        }
                }

        }

}
