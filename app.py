from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return "Hello World! This ia test for Continous Delivery!"

if (__name__ == '__main__'):
    app.run(port=5000, threaded=True, host=('0.0.0.0'))
