FROM debian:stretch-slim

MAINTAINER Markus Frosch <markus@lazyfrosch.de>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get dist-upgrade -y \
 && rm -rf /var/lib/apt/lists/* # 20190120
