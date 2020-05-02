FROM adoptopenjdk:11-jre-hotspot
MAINTAINER heywiki

RUN apt-get -y update
#RUN apt-get -y install dos2unix
#RUN apt-get -y install zip
RUN apt-get -y install vim
RUN apt-get -y install iputils-ping

#copy all files from setup to container
ADD setup /opt/minecraft
RUN chmod +x /opt/minecraft/*.sh

# Volumes for the external data (Server, World, Config...)
RUN mkdir /data
VOLUME "/data"

# Expose minecraft port
EXPOSE 25565/tcp
EXPOSE 25565/udp

WORKDIR /data

ENTRYPOINT ["/opt/minecraft/entrypoint.sh"]

#Test... (see also tail -f in entrypoint.sh)
#ENTRYPOINT ["tail", "-f", "/dev/null"]
