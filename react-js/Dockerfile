FROM ubuntu

MAINTAINER Simone Pasquini <simone.pasquini@gmail.com>

RUN groupadd -r nodejs && useradd -r -g nodejs nodejs
RUN apt-get -y update && apt-get install -y build-essential curl sudo
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - && apt-get install -y nodejs
