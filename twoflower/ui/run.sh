docker build -t twoflowerui .   

docker run --net=twoflower -it -p 127.0.0.1:80:80 twoflowerui 
#docker run -it -p 127.0.0.1:80:80 twoflowerui 
