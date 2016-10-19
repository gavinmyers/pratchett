from flask import Flask
import requests, redis 

app = Flask(__name__)

@app.route("/version")
def get_version():
  r = redis.StrictRedis(host='redis', port=6379, db=0)
  v = r.get('version')
  if v is None:
    r.set('version',0)
  v = int(r.get('version'))
  r.set('version',v+1)
  return '0.0.'+r.get('version') 

if __name__ == "__main__":
  app.run(debug=True,host='0.0.0.0',port=80)
