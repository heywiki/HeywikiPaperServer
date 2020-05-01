FROM adoptopenjdk:11-jre-hotspot
MAINTAINER heywiki

RUN apt-get -y update
RUN apt-get -y install dos2unix
RUN apt-get -y install zip
RUN apt-get -y install vim
RUN apt-get -y install iputils-ping

# Volumes for the external data (Server, World, Config...)
# VOLUME "/data"

ADD lib/paper-229.jar /

ENTRYPOINT ["tail", "-f", "/dev/null"]
