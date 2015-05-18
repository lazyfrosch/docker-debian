FROM debian:jessie
MAINTAINER Markus Frosch <markus.frosch@lazyfrosch.de>

ENV DEBIAN_FRONTEND=noninteractive

RUN \
  echo 'APT::Install-Recommends 0;' >> /etc/apt/apt.conf.d/01norecommends && \
  echo 'APT::Install-Suggests 0;' >> /etc/apt/apt.conf.d/01norecommends && \
  apt-get update && \
  apt-get dist-upgrade -y && \
  apt-get install -y adduser curl wget vim.tiny sudo ca-certificates unzip

#  rm -rf /var/lib/apt/lists/*
