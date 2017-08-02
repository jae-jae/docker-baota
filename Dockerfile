FROM centos:7
MAINTAINER Jaeger <JaegerCode@gmail.com>

ADD install.sh /root/
ADD start.sh /root/

USER root

RUN yum -y install initscripts && yum clean all

RUN sh /root/install.sh 2>&1 | tee /root/install.log

EXPOSE 80 8888 888 443 20 21

RUN chmod +x /root/start.sh 

CMD /root/start.sh


