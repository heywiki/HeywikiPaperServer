https://github.com/PaperMC/Paper


docker build -t heywiki2/papermc:latest .
docker run -d -p 25565:25565 heywiki2/papermc:latest
docker exec -t -i /bin/bash
