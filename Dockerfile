FROM centos:6.9
MAINTAINER Jaeger <JaegerCode@gmail.com>

ADD install.sh /root/
ADD start.sh /

USER root

RUN yum update -y && yum -y install initscripts && yum clean all

RUN sh /root/install.sh 2>&1 | tee /root/install.log

EXPOSE 80 8888 888 443 20 21

RUN chmod +x /start.sh 

CMD /start.sh


