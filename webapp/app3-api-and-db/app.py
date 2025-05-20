'''
    app.py
    Jeff Ondich, 25 April 2016
    Updated 8 November 2021

    A small Flask application that provides a barelywebsite with an accompanying
    API (which is also tiny) to support that website.
'''
import flask
import argparse
import api
import config             # Your DB credentials
from collections import deque  # For BFS in beat-chain     

app = flask.Flask(__name__, static_folder='static', template_folder='templates')
app.register_blueprint(api.api, url_prefix='/api')

@app.route('/') 
def home():
    return flask.render_template('index.html')

# Endpoint: /help, serves your help.html page
@app.route('/help')
def get_help():
    return flask.render_template('help.html')

# Endpoint: /teams
@app.route('/teams')
def teams_endpoint():
    teams = get_teams()
    return flask.jsonify(teams)


def get_teams():
    """Return all team names in alphabetical order."""
    teams = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute('SELECT name FROM teams ORDER BY name ASC')
        for row in cursor:
            teams.append({'name': row[0]})
    except Exception as e:
        print(e, file=sys.stderr)
    finally:
        connection.close()
    return teams

if __name__ == '__main__':
    parser = argparse.ArgumentParser('A books-and-authors application, including API & DB')
    parser.add_argument('host', help='the host to run on')
    parser.add_argument('port', type=int, help='the port to listen on')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)


