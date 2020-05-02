FROM adoptopenjdk:11-jre-hotspot
MAINTAINER heywiki

RUN apt-get -y update
RUN apt-get -y install dos2unix
RUN apt-get -y install zip
RUN apt-get -y install vim
RUN apt-get -y install iputils-ping
RUN mkdir /data
RUN mkdir /data/plugins

# Volumes for the external data (Server, World, Config...)
VOLUME "/data"

ADD lib/paper-229.jar /data
ADD lib/plugins /data
ADD init/server.properties /data
ADD init/eula.txt /data

# Expose minecraft port
EXPOSE 25565/tcp
EXPOSE 25565/udp

# Set memory size
ARG memory_size=2G
ENV MEMORYSIZE=$memory_size

WORKDIR /data

#ENTRYPOINT java -jar -Xms$MEMORYSIZE -Xmx$MEMORYSIZE -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMillis=100 -XX:+DisableExplicitGC -XX:TargetSurvivorRatio=90 -XX:G1NewSizePercent=50 -XX:G1MaxNewSizePercent=80 -XX:G1MixedGCLiveThresholdPercent=35 -XX:+AlwaysPreTouch -XX:+ParallelRefProcEnabled -Dusing.aikars.flags=mcflags.emc.gs -Dcom.mojang.eula.agree=true /opt/minecraft/paperspigot.jar --nojline nogui
#ENTRYPOINT java -jar -Xms$MEMORYSIZE -Xmx$MEMORYSIZE -Dcom.mojang.eula.agree=true /data/paper-229.jar

ENTRYPOINT ["tail", "-f", "/dev/null"]
