#!/bin/sh

docker build -t ex02 .
docker run -it --name bonus3 --rm ex02
