from flask import Flask, render_template
import requests 
import os

app = Flask(__name__)

@app.route("/version")
def version():
  r = requests.get('http://twoflowerapi:5000/version')
  return r.text

@app.route("/env")
def env():
  return os.environ['FOO'] 


@app.route("/")
def index():
  return render_template("index.html")

if __name__ == "__main__":
  app.run(debug=True,host='0.0.0.0',port=5001)
