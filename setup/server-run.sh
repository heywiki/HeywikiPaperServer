#!/bin/bash

java -jar \
-Xms2G -Xmx2G \
-Dcom.mojang.eula.agree=true \
/opt/minecraft/paper-1.19.1-91.jar nogui \
--plugins /opt/minecraft/plugins \
--port 25565
