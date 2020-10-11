#!/bin/sh
# usage: ./start_docker.sh <GPU number> 
docker build docker -t fastmri --build-arg UID=$(id -u) --build-arg GID=$(id -g) --build-arg  USER=$USER
docker run -u $(id -u) --rm --runtime=nvidia -it -v /data:/data -v /data2:/data2 -e CUDA_VISIBLE_DEVICES=$1 -e USER=$USER -e HOME=/data/$USER -w $PWD fastmri bash
