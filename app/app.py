import redis
from flask import Flask

import core

app: Flask = Flask(__name__)
cache: redis.Redis = redis.Redis(host="redis", port=6379)


@app.route("/")
def hello() -> str:
    count: int = core.get_hit_count(cache)
    return "Hello World! I have been seen {} times.\n".format(count)


@app.route("/getall")
def getAll() -> str:
    return "kuy"


@app.route("/hee")
def hee() -> str:
    return "CMU SO FUN"
