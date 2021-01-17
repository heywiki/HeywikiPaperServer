#!/bin/bash

java -jar \
-Xms2G -Xmx2G \
-Dcom.mojang.eula.agree=true \
/opt/minecraft/paper-1.16.5-428.jar nogui \
--plugins /opt/minecraft/plugins \
--port 25565
