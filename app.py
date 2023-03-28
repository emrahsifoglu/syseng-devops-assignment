from flask import Flask, jsonify
from flask_cors import CORS

app = Flask(__name__)

CORS(app)

app.config["CORS_HEADERS"] = "Content-Type"
app.config['JSON_SORT_KEYS'] = False

@app.route('/')
def home():
    return jsonify({"Message":"Hello world!"})

if __name__ == '__main__':
    app.run(debug=True, port=5001)
