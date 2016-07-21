FROM ubuntu

MAINTAINER Simone Pasquini <simone.pasquini@gmail.com>

RUN apt-get -y update && apt-get install -y curl sudo
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - && apt-get install -y build-essential nodejs
