docker build -t twoflowerapi .   

docker run --net=twoflower -it -p 127.0.0.1:5000:5000 twoflowerapi 
#docker run -it -p 127.0.0.1:5000:5000 twoflowerapi 
