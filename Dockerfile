FROM alpine:latest

WORKDIR /tmp
RUN apk add curl

RUN curl -Lo jdk-8u241-linux-x64.tar.gz 'https://download.oracle.com/otn/java/jdk/8u241-b07/1f5b5a70bf22433b84d0e960903adac8/jdk-8u241-linux-x64.tar.gz?AuthParam=1582210837_80985f9421f811d45c18c07e6d07d2f2'

RUN tar zxvf -C / jdk-8u241-linux-x64.tar.gz
ENV PATH /jdk1.8.0_241/bin:$PATH
RUN rm /tmp/jdk-8u241-linux-x64.tar.gz
