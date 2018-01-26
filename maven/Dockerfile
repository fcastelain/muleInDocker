FROM maven:3.5-jdk-7-alpine

COPY sourceCode /usr/src

# Expose the volume where we push the project
VOLUME /usr/src

# Set the work dir
WORKDIR /usr/src

# Build the project
CMD [ "mvn clean install" ]
