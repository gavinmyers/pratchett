docker build -t twoflowerui .   

docker run --net=twoflower -it -p 127.0.0.1:5001:5001 twoflowerui 
#docker run -it -p 127.0.0.1:5001:5001 twoflowerui 
