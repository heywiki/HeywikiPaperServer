FROM adoptopenjdk:11-jre-hotspot
MAINTAINER heywiki

ADD lib/paper-229.jar

# Volumes for the external data (Server, World, Config...)
VOLUME "/data"

ENTRYPOINT ["tail", "-f", "/dev/null"]