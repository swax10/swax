#!/bin/bash

while getopts c: flag
do
    case "${flag}" in
        c) cname=${OPTARG};;
    esac
done

docker build -t swax ./swax

docker run -it --rm -d -p 80:3000 --name "$cname" swax

docker exec -it "$cname" /bin/bash