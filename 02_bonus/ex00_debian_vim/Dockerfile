FROM debian

MAINTAINER Janne Raty <jraty@student.hive.fi>

RUN apt-get update \
	&& apt-get upgrade -y \
	&& apt-get install vim -y
RUN echo "CODING WITH VIM INSIDE DEBIAN!!" > test.c
ENTRYPOINT ["vi", "test.c"]
