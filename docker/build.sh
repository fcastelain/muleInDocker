# now we create the network of production
docker network create --subnet=172.19.0.0/16 muleNetwork

# Build the image of the muleInDocker/mule
docker build ./mule/ --tag muleindocker/mule:latest
