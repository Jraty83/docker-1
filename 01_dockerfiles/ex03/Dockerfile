FROM ubuntu:16.04

MAINTAINER Janne Raty <jraty@student.hive.fi>

ENV TERM=xterm

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y xterm ca-certificates openssh-server wget postfix

RUN wget https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh && chmod 777 script.deb.sh && ./script.deb.sh && apt-get install -y gitlab-ce

RUN apt update && apt install -y tzdata && \
	apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN sed -i "s/# grafana\['enable'\] = true/grafana['enable'] = false/g" /etc/gitlab/gitlab.rb

EXPOSE 443 80 22

ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && gitlab-ctl reconfigure && tail -f /dev/null

# TO BUILD THE IMAGE:
# docker build -t ex03 .

# TO RUN IT:
# docker run -dit -p 8080:80 -p 8443:443 -p 8022:22 --name my_gitlab --privileged ex03

# TO CHECK:
# docker logs -f my_gitlab

# TO TEST (when it says gitlab Reconfigured!):
# http://192.168.99.101:8080/
#		user: root
#		password: 12345678
# create a new repository 'repo'
# git clone http://192.168.99.101:8080/root/repo.git repo
#		-> enter username (root) - if needed...
#		-> enter password (12345678) - if needed...
# cd repo
# touch test.txt
# git add test.txt
# git commit -m"test"
# git push
# ...and check the repo from Gitlab
