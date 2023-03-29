import visitor
from app import app
from flask import jsonify, render_template
	
@app.before_request
def track_visitor():
    visitor.track_visitor()

@app.route('/')
def index():
    return render_template('index.html', sum_of_visits=visitor.get_sum_of_visits())

@app.route("/health")
def health():
    return jsonify(status="UP")

if __name__ == '__main__':
    app.run(debug=True, port=5001)
