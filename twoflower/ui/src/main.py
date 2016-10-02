from flask import Flask, render_template
import requests 

app = Flask(__name__)

@app.route("/version")
def version():
  return "1.2.3" 

@app.route("/test")
def test():
  r = requests.get('http://twoflowerapi:5000')
  return r.text

@app.route("/")
def index():
  return render_template("index.html")

if __name__ == "__main__":
  app.run(debug=True,host='0.0.0.0',port=5001)
