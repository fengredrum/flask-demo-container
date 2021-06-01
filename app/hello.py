import platform
import time
from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello_world():
    uname = platform.uname()
    time.sleep(1)
    return "<p>Hello, World!</p>" + f"Node Name: {uname.node}"
