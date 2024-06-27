import flask

app = flask.Flask( __name__, instance_relative_config=True )

@app.route("/")
def hello():
    resp = flask.make_response( "Hello, world from webserver!\n", 200 )
    resp.headers["Content-Type"] = "text/plain; charset=utf-8"
    return resp
