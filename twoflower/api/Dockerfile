FROM ubuntu:14.04
MAINTAINER gavin "gavin@gavinm.com"
RUN apt-get update

# Install Python.
RUN apt-get install -y -q build-essential python-gdal python-simplejson
RUN apt-get install -y python python-pip wget
RUN apt-get install -y python-dev

COPY src /src
WORKDIR /src
RUN pip install -r requirements.txt
CMD python main.py

