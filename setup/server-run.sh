#!/bin/bash

java -jar \
-XX:MinRAMPercentage=50.0 \
-XX:MaxRAMPercentage=80.0 \
-Dcom.mojang.eula.agree=true \
/opt/minecraft/paper-1.19.3-393.jar nogui \
--plugins /opt/minecraft/plugins \
--port 25565
