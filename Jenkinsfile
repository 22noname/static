pipeline {
	agent any
	
	stages {
		stage('Lint HTML') {
			steps {
				sh 'tidy -q -e *.html'
			}
		}
	}



	stages {
		stage('Upload to AWS') {
			steps {
				sh 'echo "Hello World"'
				sh '''
					echo "Multiline shell steps works too"
					ls -lah
				'''

				withAWS(region:'eu-west-3', credentials:'aws-static') {
					s3Upload(file:'index.html', bucket:'jpbjenkins', path:'index.html')
				}		
			}
		}
	}
}



