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
					sh "sudo export AWS_ACCESS_KEY_ID=${AKIAYFIFSTOIQ46UQRF5}"
					sh "sudo export AWS_SECRET_ACCESS_KEY=${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}"
					sh "sudo export AWS_DEFAULT_REGION=ap-south-1"
					sh "aws s3 cp s3://vel-bucket-manish15022026/2026Q1/* . --recursive" 
					sh "sudo docker-compose up"
				}
			}
		}
}
