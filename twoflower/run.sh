docker network rm twoflower
docker network create --driver bridge twoflower 
cd api
docker build .
cd ../ui
docker build .
cd ../
docker-compose build
docker-compose up
