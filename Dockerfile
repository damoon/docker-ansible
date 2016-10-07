FROM ubuntu:16.04

RUN 	apt-get update && \
	apt-get install -y software-properties-common && \
	apt-add-repository ppa:ansible/ansible && \
	apt-get update && \
	apt-get install -y ansible=2.1.2.0-1ppa~xenial && \
	rm -rf /var/lib/apt/lists/*

RUN mkdir /ansible
WORKDIR /ansible

CMD [ "ansible", "--version" ]
