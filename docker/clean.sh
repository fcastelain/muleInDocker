# stop all the docker
docker stop muleContainer

# remove the network
docker network rm muleNetwork

# remove the container
docker rm muleContainer

# remove the images
docker rmi muleindocker/mule:latest

# clean all the volume
docker volume rm $(docker volume ls -qf dangling=true)
