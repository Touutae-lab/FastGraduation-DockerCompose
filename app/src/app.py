import redis
from flask import Flask

import os
from core import get_hit_count

app = Flask(__name__)
cache = redis.Redis(host="redis", port=6379)


@app.route("/")
def hello():
    count: int = get_hit_count(cache)
    return "Hello World! I have been seen {} times.\n".format(count)


@app.route("/getall")
def getAll():
    return "kuy"


@app.route("/hee")
def hee():
    return "CMU SO FUN"

