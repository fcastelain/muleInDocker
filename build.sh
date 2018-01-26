# now we create the network of production
docker network create --subnet=172.19.0.0/16 muleNetwork

# Build the image of the muleInDocker/mule
docker build ./mule/ --tag muleindocker/mule:latest

# Build the image of the maven container to biuld the mule's project
docker build ./maven/ --tag muleindocker/maven:latest

# Build the image of the newman test container
docker build ./newman/ --tag muleindocker/newman:latest
