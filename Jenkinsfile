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
					sh "aws s3 cp s3://vel-bucket-manish15022026/2026Q1/car-showroom-1.0.war ."
					sh "aws s3 cp s3://vel-bucket-manish15022026/2026Q1/car-showroom-1.0 . --recursive"
					sh "chmod -R 777 index.html car-showroom-1.0.war"
					sh "sudo docker-compose up -d"
				}
			}
		}
}
