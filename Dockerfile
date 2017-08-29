FROM asera79/java8:alpine

MAINTAINER asera79@gmail.com

ENV ANT_HOME=/usr/lib/ant/apache-ant-1.10.1

RUN apk update && apk add bash libstdc++ libuuid sudo && \
    mkdir -p /usr/lib/ant && cd /usr/lib/ant && wget -qO- http://mirror.netinch.com/pub/apache//ant/binaries/apache-ant-1.10.1-bin.tar.gz | tar xvz && ln -s $ANT_HOME/bin/ant /usr/bin/ant
