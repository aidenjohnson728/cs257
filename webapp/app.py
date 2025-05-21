'''
    app.py
    Alden Harcourt and Aiden Johnson
    May 21st, 2025

    Frisbee app that has many features.
'''
import flask
import argparse
import api

app = flask.Flask(__name__, static_folder='static', template_folder='templates')
app.register_blueprint(api.api, url_prefix='/api')

@app.route('/') 
def home():
    return flask.render_template('index.html')

@app.route('/teams.html')
def teams():
    return flask.render_template('teams.html')

@app.route('/teampage.html')
def teampage():
    return flask.render_template('teampage.html')

@app.route('/leaderboard.html')
def leaderboard():
    return flask.render_template('leaderboard.html')

@app.route('/MTIBTYT.html')
def MTIBTYT():
    return flask.render_template('MTIBTYT.html')

@app.route('/fun_facts.html')
def fun_facts():
    return flask.render_template('fun_facts.html')

# Endpoint: /help, serves your help.html page
@app.route('/help')
def get_help():
    return flask.render_template('help.html')
    

if __name__ == '__main__':
    parser = argparse.ArgumentParser('A frisbee application, including API & DB')
    parser.add_argument('host', help='the host to run on')
    parser.add_argument('port', type=int, help='the port to listen on')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)


