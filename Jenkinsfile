pipeline {
	agent {
		label {
			label "Slave"
			customWorkspace "/mnt/Slave"	
		}
		
	}	
		stages {
			stage ("One"){
				steps {
					sh "sudo docker-compose up -d"
				}
			}
		}
}
