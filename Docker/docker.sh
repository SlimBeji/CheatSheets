#============docker management commands===================
#list images
docker images

#list instances
docker ps -a

#stop instances
docker stop silly _name

#remove instances
docker rm silly_name

#remove images; use -f to force delete
docker rmi image_name

#remove with a regex 
sudo docker rmi $(sudo docker images | grep 'openclassroom')

#clean up
sudo docker system prune

#persistency: create volume inside /var/lib/docker/volumes
docker volume create my-volume

#list all docker volumes
docker volume ls

#inspect a volume
docker volume inspect my-volume

#remove unused volumes
docker volume prune

#===============docker hub========================
#login to dockerhub
docker login

#push a container
docker push YOUR_USERNAME/ocr-docker-build:latest

#search for a public docker
docker search some_keywords

#download a container
docker pull creator/container_name

#tag a container, shortcut name
docker tag original_name shortcut_name

#==============Containers creation=============================
#get the history of an image
docker history my-first-docker

#building a container, the -t is for tag
docker build -t my-first-docker .

#Inspect a container in detail
docker inspect container_name_or_id

#run, d is for detached, p host_port:container_port is for port
docker run -d docker_image_name -p 5000:5000 

#run with a specified environment variable
docker run -e FLASK_ENV=developemnt

#Map a directory on the host to a container directory
docker run -v /opt/hostfolder:/var/lib/mysql mysql

#attach an instance back with the five first id
docker attach a0456 

#run the last started instance (run = create + start)
docker start `docker ps -q -l`

#log to instance, t to attach to the docker terminal => -it
docker exec -ti ID_RETOURNÉ_LORS_DU_DOCKER_RUN bash

#stop an instance
docker stop instance_id

#========================================================

#download the required containers
docker-compose pull

#run the containers
docker-compose up

#run a specific yaml configuration
docker-compose -f docker-compose-dev.yaml up

#rebuild a specific container
docker-compose build web

#check the containers stack
docker-compose ps

#stop stack services
docker-compose stop

#destroy a stack resources
docker-compose down

#check syntax of docker-compose.yaml
docker-compose config 
