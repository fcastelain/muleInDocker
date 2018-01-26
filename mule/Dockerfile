FROM openjdk:7-jre-jessie

MAINTAINER fcastelain@excilys.com

# Download mule standalone 3.7.0
RUN wget https://repository.mulesoft.org/nexus/content/repositories/releases/org/mule/distributions/mule-standalone/3.7.0/mule-standalone-3.7.0.tar.gz

# Untar the mulesoft and clean the working repository
RUN mkdir /home/muleindocker
RUN tar xvzf mule-standalone-3.7.0.tar.gz -C /home/muleindocker
RUN rm mule-standalone-3.7.0.tar.gz

# Add the permission to run mulesoft
RUN chmod u+x /home/muleindocker/mule-standalone-3.7.0/lib/boot/exec/wrapper*

# Use a symbolic link to be agnostic of the name (with the version)
RUN ln -s /home/muleindocker/mule-standalone-3.7.0 /home/muleindocker/mule

# Expose volumes (logs and apps)
VOLUME /home/muleindocker/mule-standalone-3.7.0/apps
VOLUME /home/muleindocker/mule-standalone-3.7.0/logs

# Start mule standalone
CMD [ "/home/muleindocker/mule/bin/mule" ]
