FROM ubuntu:16.04
MAINTAINER Simone Pasquini "simone.pasquini@gmail.com"
RUN apt-get update && apt-get install -y bash curl file sudo gcc && rm -rf /var/lib/apt/lists/*
ENV SHELL /bin/bash
RUN curl -sSf https://static.rust-lang.org/rustup.sh | sh -s -- -y
