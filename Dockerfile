FROM ubuntu:14.04
MAINTAINER Joshua Smith "smithjg2@student.op.ac.nz"
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install openssh-server
RUN apt-get -y install apache2
RUN apt-get -y install supervisor

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 22 80
CMD ["/usr/bin/supervisord"]
