#!/bin/bash
docker login
cd ui 
echo $1
docker build -t gavinmyers/twoflowerui:$1 .   
docker push gavinmyers/twoflowerui:$1 
