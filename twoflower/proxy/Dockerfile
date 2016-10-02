FROM nginx
RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*
COPY html /usr/share/nginx/html
COPY nginx.conf /etc/nginx/
