Stuff used to create this container: links and ispiration

https://www.spigotmc.org/wiki/start-up-parameters/

#https://github.com/mtoensing/Docker-Minecraft-PaperMC-Server/blob/master/Dockerfile

Does one really need these optimisations?
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
