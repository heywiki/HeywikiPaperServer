FROM adoptopenjdk:11-jre-hotspot
MAINTAINER heywiki



# Volumes for the external data (Server, World, Config...)
VOLUME "/data"

ENTRYPOINT ["tail", "-f", "/dev/null"]