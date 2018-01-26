# stop all the docker
docker stop muleContainer

# remove the network
docker network rm muleNetwork

# remove the container
docker rm muleContainer
docker rm mavenContainer
docker rm newmanContainer

# remove the images
docker rmi muleindocker/mule:latest
docker rmi muleindocker/maven:latest
docker rmi muleindocker/newman:latest

# clean all the volume
docker volume rm $(docker volume ls -qf dangling=true)
