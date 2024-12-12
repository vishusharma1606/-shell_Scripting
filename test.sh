#!/bin/bash 

#remove any docker file 
docker_container=$(docker ps -a -q)

if [[ $docker_container ]]
then
	echo "Docker container is running"
	# stop and remove  docker container
	if [[ $(docker stop $docker_container) && $(docker rm $docker_container) ]]
	then
		echo "Docker container stop and remove successfull"
        docker ps -a
	else 	
		echo "Docker container not stopped"
        docker ps -a
	fi 
else 	
	echo "No Docker container is running"
    docker ps -a  
fi

docker_image=$(docker images -a  | grep "myapp" | awk '{print $3}')

#Check if Docker image exist
if [[ $docker_image ]]
then
	echo "Image 'myapp' exists"
    docker images
else 
	echo "Image 'myapp' does not exist, building"
	#build a docker images 
	if docker build -t myapp . 
    then
		echo "Image Build successfull"
        docker images 
	else 
		echo "Failed to build image"
	fi
fi

# Run docker image
if [[ $(docker run -d -p 8081:80 myapp) ]] ; then
	echo "Container running successfully"
    docker ps 
else 
	echo "Failed to run container"
fi 