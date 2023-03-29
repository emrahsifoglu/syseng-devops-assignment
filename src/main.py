import visitor
from app import app
from flask import jsonify	
	
@app.before_request
def track_visitor():
    visitor.track_visitor()

@app.route('/')
def home():
    return jsonify({'msg' : 'hello'})

@app.route("/health")
def health():
    return jsonify(status="UP")

if __name__ == '__main__':
    app.run(debug=True, port=5001)
