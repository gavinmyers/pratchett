docker build -t twoflower-ui .   

docker run -it -p 5000:5000 twoflower-ui /deployment/env/bin/python /deployment/app.py
