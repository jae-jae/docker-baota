FROM centos:7
MAINTAINER Jaeger <JaegerCode@gmail.com>

USER root

RUN yum install -y wget && wget -O install.sh http://download.bt.cn/install/install.sh && sh install.sh

EXPOSE 80

