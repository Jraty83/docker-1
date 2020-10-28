FROM debian
ENV TS3SERVER_LICENSE=accept
WORKDIR /home/teamspeak
EXPOSE 9987/udp 10011 30033
RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y wget bzip2 && \
	wget https://files.teamspeak-services.com/releases/server/3.12.1/teamspeak3-server_linux_amd64-3.12.1.tar.bz2 && \
	tar -xvf teamspeak3-server_linux_amd64-3.12.1.tar.bz2
WORKDIR teamspeak3-server_linux_amd64
ENTRYPOINT sh ts3server_minimal_runscript.sh

# TO BUILD THE IMAGE:
# docker build -t ex01 .

# TO CHECK:
# docker image ls

# TO RUN IT:
# docker run --name my_teamspeak -p 9987:9987/udp -p 10011:10011 -p 30033:30033 -d ex01
# docker ps
# docker logs my_teamspeak (to check admin password etc.)

# OPEN TEAMSPEAK 3 CLIENT:
# -> Connections-> Connect (from menu bar)
# -> Server Nickname or Address (docker-machine ip Char)
# -> Server Password = token=XnShb8BAcoDJOiHo4oaYRE+OGxuz5BpoGXrdAFQ+ (the whole thing... from logs)
# -> Nickname = serveradmin (or choose one...)
# -> Connect
#		-> Privilege Key = token=XnShb8BAcoDJOiHo4oaYRE+OGxuz5BpoGXrdAFQ+ (same as server password)
