#!/bin/bash
java -jar \
-Xms2G -Xmx2G \
-Dcom.mojang.eula.agree=true \
/opt/minecraft/paper-229.jar nogui \
--config /opt/minecraft/server.properties \
--plugins /opt/minecraft/plugins \
--world-dir /data \
--port 25565
