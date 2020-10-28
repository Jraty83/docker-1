#!/bin/sh

git clone https://github.com/gabrielecirulli/2048.git
cp Dockerfile 2048/Dockerfile
cd 2048
docker build -t twentyfortyeight .
docker run -d --name bonus2 -p 80:80 twentyfortyeight
