FROM ubuntu:16.04
MAINTAINER kusmirekwiktor@gmail.com

RUN apt-get update && \
 apt-get upgrade -y && \
 apt-get install -y wget # gcc python git build-essential

RUN wget https://sourceforge.net/projects/bbmap/files/BBMap_38.73.tar.gz

RUN tar -xvf BBMap*

RUN apt-get install -y default-jre

RUN apt-get install -y default-jdk

# RUN wget https://repo.anaconda.com/archive/Anaconda3-5.3.1-Linux-x86_64.sh

# RUN bash Anaconda3-5.3.1-Linux-x86_64.sh -y

# RUN conda install -y -c bioconda bbmap=38.63

# RUN git clone https://github.com/galaxy001/pirs.git

# RUN apt-get install -y zlib1g-dev libboost-all-dev

# RUN cd pirs; make

# RUN cp -r /pirs/src/pirs/Profiles /usr/local/share/pirs

# ENV PATH="/pirs/:${PATH}"
