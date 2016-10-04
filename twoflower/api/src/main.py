from flask import Flask
import requests, redis 

app = Flask(__name__)

@app.route("/")
def hello():
  r = redis.StrictRedis(host='redis', port=6379, db=0)
  r.set('foo', 'bar')
  return r.get('foo') 

if __name__ == "__main__":
  app.run(debug=True,host='0.0.0.0',port=5000)
