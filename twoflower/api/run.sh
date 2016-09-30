docker build -t twoflower-api .   

docker run -it -p 5000:5000 twoflower-api /deployment/env/bin/python /deployment/app.py
