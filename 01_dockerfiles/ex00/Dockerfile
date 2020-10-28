FROM alpine:latest
RUN apk update \
	&& apk add vim
ENTRYPOINT ["vi", "test.c"]

# TO BUILD THE IMAGE:
# docker build -t ex00 .

# TO CHECK:
# docker image ls

# TO RUN IT:
# docker run -it --name my_alpine ex00
# docker ps
