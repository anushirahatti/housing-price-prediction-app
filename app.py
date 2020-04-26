#push
from flask import Flask
from flask import jsonify

app = Flask(__name__)

@app.route('/')
def hello():
    """Return a friendly HTTP greeting."""
    return '<center><h1>Hello Cloud Run!</h1></center>'

@app.route('/deliver')
def hey():
    """Return a friendly HTTP greeting."""
    return '<center><h1>Continuous Delivery on GCP Success!</h1><center>'
    
@app.route('/name/<value>')
def name(value):
    val = {"value": value}
    return jsonify(val)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080, debug=True)