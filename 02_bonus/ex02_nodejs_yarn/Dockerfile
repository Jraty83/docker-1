FROM ubuntu

LABEL maintainer="jraty@student.hive.fi"

RUN apt-get update && apt-get upgrade -y && \
	apt-get install -y tzdata && \
	apt-get install -y nodejs npm git build-essential vim
RUN npm install npm --global
RUN npm install yarn --global
