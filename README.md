This is a minecraft paper mc docker container

https://github.com/PaperMC/Paper

It copies some default plugins (Mods) and a default server.properties
and ops.json (and other default files) to the data dir before
the server gets started (therefore this container actually defines
the default files, not paper default expansion)

Create a docker volume first
``
docker volume create --name papermc-data
``

Run with
``
docker run -d \
-p 25565:25565 \
--name papermc-server \
-v papermc-data:/data \
heywiki2/papermc:latest
``
