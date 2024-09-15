from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return 'Hello, World!'

@app.route('/api/data')
def data():
    return jsonify({'message': 'This is a sample response from the API'})

if __name__ == '__main__':
    app.run(debug=True)
