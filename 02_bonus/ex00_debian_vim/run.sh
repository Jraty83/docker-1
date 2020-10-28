#!/bin/sh

docker build -t debian_vim .
docker run -it --name bonus1 --rm debian_vim
