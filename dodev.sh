#!/bin/bash
#Script file to sped up Docker development
#alias dodev='bash dodev.sh'

if [[ $EUID -ne 0 ]];
then
    echo "Must be root to run script, hint: use 'sudo -i'"
    exit 1
fi

if [ $# -eq 0 ]; then
  echo "Please indicate a docker dev step (build|run|cleanup|exec|logs)"
fi

imageName=heywiki2/papermc
imageVersion=latest
container=papermc-server
data=/home/tester/minecraft/data
image=$imageName:$imageVersion

if [ "$1" == "build" ]; then
    docker build -t $image .

elif [ "$1" == "run" ]; then
  docker run -d \
  -p 25565:25565 \
  --name $container \
  -v $data:/data \
  $image

elif [ "$1" == "cleanup" ]; then
    docker stop $container
    docker rm $container
    docker rmi $image

elif [ "$1" == "exec" ]; then
    docker exec -ti $container /bin/bash

elif [ "$1" == "logs" ]; then
    docker logs -f $container

elif [ "$1" == "push" ]; then

    tag="$imageName:latest"
    if [ -z "$2" ]; then
        echo "para 2 not set: set version to latest"
    else
        tag="$imageName:$2"
    fi

    echo "docker push $tag"
    docker push $tag

else
   echo "unknown command $1"
fi
