FROM ubuntu:14.04
MAINTAINER gavin "gavin@gavinm.com"
RUN apt-get update

# Install Python.
RUN apt-get install -y -q build-essential python-gdal python-simplejson
RUN apt-get install -y python python-pip wget
RUN apt-get install -y python-dev

# Install supervisor
RUN apt-get update && apt-get install -y supervisor


# Install Redis.
RUN \
  cd /tmp && \
  wget http://download.redis.io/redis-stable.tar.gz && \
  tar xvzf redis-stable.tar.gz && \
  cd redis-stable && \
  make && \
  make install && \
  cp -f src/redis-sentinel /usr/local/bin && \
  mkdir -p /etc/redis && \
  cp -f *.conf /etc/redis && \
  rm -rf /tmp/redis-stable* && \
  sed -i 's/^\(bind .*\)$/# \1/' /etc/redis/redis.conf && \
  sed -i 's/^\(daemonize .*\)$/# \1/' /etc/redis/redis.conf && \
  sed -i 's/^\(dir .*\)$/# \1\ndir \/data/' /etc/redis/redis.conf && \
  sed -i 's/^\(logfile .*\)$/# \1/' /etc/redis/redis.conf

# Define mountable directories.
VOLUME ["/data"]

# Define working directory.
WORKDIR /data


COPY redis.conf /etc/conf/redis.conf 
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf 
COPY src /src
WORKDIR /src
RUN pip install -r requirements.txt

#CMD python main.py && redis-server /etc/redis/redis.conf
#CMD redis-server /etc/redis/redis.conf && python main.py

ENTRYPOINT ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]

# Expose ports.
EXPOSE 6379
EXPOSE 9999
