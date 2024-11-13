from flask import Flask

app = Flask(__name__)

@app.route('/healthz')
def healthz():
    return '''
        <html>
            <body>
                <h1>Service is Healthy!</h1>
            </body>
        </html>
    ''', 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
