import platform
from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello_world():
    uname = platform.uname()
    return "<p>Hello, World!</p>" + f"Node Name: {uname.node}"
