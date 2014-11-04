FROM onlinelabs/ubuntu:latest
MAINTAINER Manfred Touron "m@42.am"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get -qq -y install nodejs npm && \
    ln -s /usr/bin/nodejs /usr/bin/node && \
    apt-get clean

RUN mkdir /app && \
    npm install -g coffee-script

WORKDIR /app
CMD node
