from flask import Flask, render_template
from flask import request
import urllib.request
import json
import os

app = Flask(__name__)

@app.route("/", methods = ["POST","GET"])
def handle_form():
    return render_template("chatbot.html")

if __name__ == "__main__" :
    app.run()