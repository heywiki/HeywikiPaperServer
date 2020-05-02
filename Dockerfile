FROM adoptopenjdk:11-jre-hotspot
MAINTAINER heywiki

RUN apt-get -y update
#RUN apt-get -y install dos2unix
#RUN apt-get -y install zip
RUN apt-get -y install vim
RUN apt-get -y install iputils-ping
RUN mkdir /data
RUN mkdir /opt/minecraft
RUN mkdir /opt/minecraft/plugins

# Volumes for the external data (Server, World, Config...)
VOLUME "/data"

ADD setup/paper-229.jar /opt/minecraft
ADD setup/plugins /opt/minecraft/plugins
ADD setup/server.properties /opt/minecraft
ADD setup/entrypoint.sh /opt/minecraft

RUN chmod +x /opt/minecraft/*.sh

# Expose minecraft port
EXPOSE 25565/tcp
EXPOSE 25565/udp

# Set memory size (not used right now)
#ARG memory_size=2G
#ENV MEMORYSIZE=$memory_size

WORKDIR /data

ENTRYPOINT ["/opt/minecraft/entrypoint.sh"]
#ENTRYPOINT ["tail", "-f", "/dev/null"]
