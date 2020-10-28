FROM debian

MAINTAINER Janne Raty <jraty@student.hive.fi>

RUN apt-get update \
	&& apt-get upgrade -y \
	&& apt-get install vim -y
ENTRYPOINT ["vi", "test.c"]
