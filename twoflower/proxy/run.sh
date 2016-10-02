docker build -t twoflower-proxy .   

docker run --net=twoflower -it -p 127.0.0.1:80:80 twoflower-proxy 
#docker run -it -p 127.0.0.1:80:80 twoflower-proxy 
