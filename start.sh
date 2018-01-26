# Start the mule container
docker run --net muleNetwork --ip 172.19.0.2 -v c:/Users/salon/Documents/project/muleInDocker/mule/apps:/home/muleindocker/mule/apps -v c:/Users/salon/Documents/project/muleInDocker/mule/logs:/home/muleindocker/mule/logs -dti --name muleContainer muleindocker/mule:latest

# Start the mavenContainer
docker run --net muleNetwork --ip 172.19.0.3 -v c:/Users/salon/Documents/project/muleInDocker/maven/sourceCode:/usr/src -dti --name mavenContainer muleindocker/maven:latest mvn clean install
