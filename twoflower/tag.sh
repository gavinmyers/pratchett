#!/bin/bash
docker login
cd ui 
echo $1
docker build -t gavinmyers/twoflowerui:$1 .   
docker push gavinmyers/twoflowerui:$1 
cd ../api
docker build -t gavinmyers/twoflowerapi:$1 .   
docker push gavinmyers/twoflowerapi:$1 
