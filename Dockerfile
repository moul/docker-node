FROM ubuntu:latest
MAINTAINER Manfred Touron "m@42.am"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq -y install python-software-properties && \
    apt-get clean

RUN add-apt-repository ppa:chris-lea/node.js && \
    echo "deb http://archive.ubuntu.com/ubuntu precise main universe" >> /etc/apt/sources.list && \
    apt-get -qq -y update && \
    apt-get -qq -y install nodejs && \
    apt-get clean

RUN mkdir /app && \
    npm install -g coffee-script

WORKDIR /app
CMD node
