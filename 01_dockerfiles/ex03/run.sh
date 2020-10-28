#!/bin/sh

docker build -t ex03 .
docker run -dit -p 8080:80 -p 8443:443 -p 8022:22 --name my_gitlab --privileged ex03
docker logs -f my_gitlab
