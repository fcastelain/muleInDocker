# add the mysql prod to the network
docker run --net muleNetwork --ip 172.19.0.2 -v c:/Users/salon/Documents/project/muleInDocker/docker/mule/logs:/home/muleindocker/mule/logs -v c:/Users/salon/Documents/project/muleInDocker/docker/mule/apps:/home/muleindocker/mule/apps -dti --name muleContainer muleindocker/mule:latest
