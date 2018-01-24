# muleInDocker

The project id to being able to build a full mule project and to run it on a Docker container.

# Simple exemple to get java version

You can (it's not an obligation) use the script to make it easier.
First I use the script clean.sh to clean the docker engine:
-> stop the container
-> remove the network
-> remove the images
-> remove the volumes

Now you have nothing on you docker engine you can work.
Use the script build to build the mule image from the Docker in ./mule/Dockerfile

You can start the container with the image muleindocker/mule:latest.
To do that use the script start.sh (the container will shutdown directly).
It normal because it's only run a simple java version command.
To be sure it's work you can that:
-> $ docker run -t muleindocker/mule:latest
