FROM centos

RUN yum install wget -y

RUN sudo curl https://download.docker.com/linux/centos/docker-ce.repo -o /etc/yum.repos.d/docker-ce.repo

RUN sudo dnf -y install docker-ce --nobest 

RUN sudo systemctl enable --now docker

RUN docker pull httpd
