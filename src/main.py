from app import app
from flask import jsonify

import pymysql
from db import mysql

@app.route('/')
def home():
    conn = mysql.connect()
    conn.close()

    return jsonify({'msg' : conn.charset})

@app.route("/health")
def health():
    return jsonify(status="UP")

if __name__ == '__main__':
    app.run(debug=True, port=5001)
