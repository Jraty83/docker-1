FROM debian

MAINTAINER Janne Raty <jraty@student.hive.fi>

RUN apt-get update \
	&& apt-get upgrade -y \
	&& apt-get install vim -y
RUN echo "CODING WITH VIM INSIDE DEBIAN!!" > test.c
ENTRYPOINT ["vi", "test.c"]

# TO MANUALLY GO INSIDE THE CONTAINER:
# docker image rm debian_vim
#	-> comment out ENTRYPOINT
# docker build -t deb .
# docker run -it --rm --name ex00 deb
# ls -l \
# cat test.c \
# vi test.c ...
