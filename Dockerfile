FROM alpine:latest
  
# WORKDIR /tmp
# RUN apk add --no-cache curl

# RUN curl -Lo jdk-8u241-linux-x64.tar.gz 'https://download.oracle.com/otn/java/jdk/8u241-b07/1f5b5a70bf22433b84d0e960903adac8/jdk-8u241-linux-x64.tar.gz?AuthParam='

ADD ./jdk-8u111-linux-x64.tar.gz  /

RUN tar -zxvf jdk-8u111-linux-x64.tar.gz && rm ./jdk-8u111-linux-x64.tar.gz -f

#RUN ls -al /jdk1.8.0_111/
# RUN tar zxvf -C / jdk-8u111-linux-x64.tar.gz
ENV PATH /jdk1.8.0_111/bin:$PATH
# RUN rm /tmp/jdk-8u241-linux-x64.tar.gz
