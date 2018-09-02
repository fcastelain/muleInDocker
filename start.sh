# Start the mule container
docker run --net muleNetwork --ip 172.19.0.2 -v /home/castefl/Documents/muleInDocker/mule/apps:/home/muleindocker/mule/apps -v /home/castefl/Documents/muleInDocker/mule/logs:/home/muleindocker/mule/logs -dti --name muleContainer muleindocker/mule:latest

# Start the mavenContainer
docker run --net muleNetwork --ip 172.19.0.3 -v /home/castefl/Documents/muleInDocker/maven/sourceCode:/usr/src -dti --name mavenContainer muleindocker/maven:latest mvn clean install
