FROM debian:wheezy

MAINTAINER Simone Pasquini <simone.pasquini@gmail.com>
RUN apt-get update && apt-get install -y cowsay fortune
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
