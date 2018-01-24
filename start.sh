# now we create the network of production
docker network create --subnet=172.19.0.0/16 prodNetwork

# add the mysql prod to the network
docker run --net prodNetwork --ip 172.19.0.5 -dti --name muleContainer muleInDocker/mule:latest
