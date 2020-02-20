FROM alpine:latest

WORKDIR /tmp
RUN apk add curl

RUN curl -Lo jdk-8u241-linux-x64.tar.gz 'https://download.oracle.com/otn/java/jdk/8u241-b07/1f5b5a70bf22433b84d0e960903adac8/jdk-8u241-linux-x64.tar.gz?AuthParam=1582204558_95425e65068c56998a715ca4283d3398'

RUN tar zxvf -C / jdk-8u241-linux-x64.tar.gz
ENV PATH /jdk1.8.0_241/bin:$PATH
RUN rm /tmp/jdk-8u241-linux-x64.tar.gz
