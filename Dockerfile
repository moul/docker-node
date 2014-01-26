FROM ubuntu:latest
MAINTAINER Manfred Touron "m@42.am"

RUN echo "deb http://archive.ubuntu.com/ubuntu precise universe" >> /etc/apt/sources.list

RUN apt-get -qqy update && \
    apt-get -qqy install python-software-properties python g++ make && \
    apt-get -qqy update && \
    apt-get -qqy purge python-software-properties python g++ make && \
    apt-get clean

RUN apt-get -qqy install -y nodejs && \
    apt-get clean
