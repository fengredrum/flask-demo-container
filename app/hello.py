import platform
import time
from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello_world():
    sleep_time = 1
    uname = platform.uname()
    time.sleep(sleep_time)
    return "<p>Hello, World!</p>" + \
        f"</p>Node Name: {uname.node}</p>" + \
        f"</p>Sleep time: {sleep_time}</p>"
