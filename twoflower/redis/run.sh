docker build -t twoflowerredis .   

docker run --net=twoflower -it -p 127.0.0.1:9999:9999 twoflowerredis 
#docker run -it -p 127.0.0.1:9999:9999 twoflowerredis 
