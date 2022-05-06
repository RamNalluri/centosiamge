[root@localhost ~]# cd /home/centos
[root@localhost centos]# vi dockerfile1
FROM centos:8

LABEL maintainer="rambabu.nalluri@gmail.com"
RUN dnf update -y
RUN dnf upgrade -y
RUN dnf install epel-release -y
RUN dnf install nginx -y
EXPOSE 81
CMD ["nginx", "-g", "daemon off;"]