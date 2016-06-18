FROM fedora:23

RUN dnf -y install ansible && \
    dnf clean all

RUN mkdir /ansible
WORKDIR /ansible

CMD [ "/usr/bin/ansible", "--version" ]
