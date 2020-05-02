https://github.com/PaperMC/Paper

docker build -t heywiki2/papermc:latest .
docker run -d -p 25565:25565 heywiki2/papermc:latest
docker exec -ti <container-id> /bin/bash
docker logs -f <container-id>

docker ps -a
docker rm <container-id>
docker images
docker rmi <image-id>

docker login
docker push heywiki2/papermc:latest
docker pull heywiki2/papermc:latest

docker volume create <volume-name>
docker volume inspect <volume-name>

https://www.spigotmc.org/wiki/start-up-parameters/


#https://github.com/mtoensing/Docker-Minecraft-PaperMC-Server/blob/master/Dockerfile
#https://www.spigotmc.org/wiki/start-up-parameters/
#-XX:+UseG1GC
#-XX:+UnlockExperimentalVMOptions
#-XX:MaxGCPauseMillis=100
#-XX:+DisableExplicitGC
#-XX:TargetSurvivorRatio=90
#-XX:G1NewSizePercent=50
#-XX:G1MaxNewSizePercent=80
#-XX:G1MixedGCLiveThresholdPercent=35
#-XX:+AlwaysPreTouch
#-XX:+ParallelRefProcEnabled
#-Dusing.aikars.flags=mcflags.emc.gs
