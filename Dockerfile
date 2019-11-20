FROM ubuntu:16.04
MAINTAINER kusmirekwiktor@gmail.com

RUN apt-get update && \
 apt-get upgrade -y && \
 apt-get install -y wget # gcc python git build-essential

RUN wget https://sourceforge.net/projects/bbmap/files/BBMap_38.73.tar.gz

RUN tar -xvf BBMap*

RUN apt-get install -y default-jre

RUN apt-get install -y default-jdk

ENV PATH="/bbmap/:${PATH}"
