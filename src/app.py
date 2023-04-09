from flask import Flask
from flask_cors import CORS

import os

from dotenv import load_dotenv
from datetime import timedelta

load_dotenv()

MYSQL_DATABASE_USER = os.getenv('MYSQL_DATABASE_USER')
MYSQL_ROOT_PASSWORD = os.getenv('MYSQL_ROOT_PASSWORD')
MYSQL_DATABASE_DB = os.getenv('MYSQL_DATABASE_DB')
MYSQL_DATABASE_HOST = os.getenv('MYSQL_DATABASE_HOST')

app = Flask(__name__)
app.secret_key = "secret key"

CORS(app)

app.config["CORS_HEADERS"] = "Content-Type"
app.config['JSON_SORT_KEYS'] = False
app.config['PERMANENT_SESSION_LIFETIME'] =  timedelta(milliseconds=1000)

# MySQL configurations
app.config['MYSQL_DATABASE_USER'] = MYSQL_DATABASE_USER
app.config['MYSQL_DATABASE_PASSWORD'] = MYSQL_ROOT_PASSWORD
app.config['MYSQL_DATABASE_DB'] = MYSQL_DATABASE_DB
app.config['MYSQL_DATABASE_HOST'] = MYSQL_DATABASE_HOST
