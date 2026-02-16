pipeline {
	agent {
		label {
			label "Slave"
			customWorkspace "/mnt/My_Custom_Workspace"	
		}
		
	}	
		stages {
			stage ("One"){
				steps {
					sh "sudo docker ps -aq | xargs -r sudo docker rm -f"
					sh "sudo docker rm -f \$(docker ps -aq) || true && sudo docker network prune -f"
					sh "sudo docker system prune -a -f"
					sh "aws s3 cp S3://vel-bucket-manish15022026/2026Q1/* ."
					sh "sudo docker-compose up"
				}
			}
		}
}
