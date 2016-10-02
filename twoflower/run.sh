docker network rm twoflower
docker network create --driver bridge twoflower 
cd api
nohup sh api/run.sh &
cd ../proxy
nohup sh proxy/run.sh &
