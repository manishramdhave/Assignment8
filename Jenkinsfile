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
					sh "sudo docker ps -aq | xargs -r sudo docker rm -f"
					sh "sudo docker rm -f \$(docker ps -aq) || true && sudo docker network prune -f"
					sh "sudo docker system prune -a -f"
					sh "chmod -R 777 Access.sh"
					sh "./Access.sh"
					sh "aws s3 cp s3://vel-bucket-manish15022026/2026Q1/index.html ."
					sh "aws s3 cp s3://vel-bucket-manish15022026/2026Q1/F1CarShowroom.war ."
					sh "chmod -R 777 F1CarShowroom.war"
					sh "chmod -R 777 index.html"
					sh "sudo docker-compose up -d"
					sh "sudo docker exec -itd slave-httpd_service-1 sudo chmod -R 777 /usr/local/apache2/htdocs"
				}
			}
		}
}
