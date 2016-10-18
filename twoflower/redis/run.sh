docker build -t twoflowerredis .   

docker run --net=twoflower -it -p 127.0.0.1:5000:5000 twoflowerredis 
#docker run -it -p 127.0.0.1:5000:5000 twoflowerredis 
