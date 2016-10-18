docker network rm twoflower
docker network create --driver bridge twoflower 
cd api
docker build -t twoflowerapi .
cd ../ui
docker build -t twoflowerui .
cd ../redis
docker build -t twoflowerredis .
cd ../
docker-compose build
docker-compose up
