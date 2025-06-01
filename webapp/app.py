'''
    app.py
    Alden Harcourt and Aiden Johnson
    May 21st, 2025

    Main Flask application for the Frisbee Stats web app.
    Serves HTML pages and registers the API blueprint.
'''
import flask
import argparse
import api

app = flask.Flask(__name__, static_folder='static', template_folder='templates')
app.register_blueprint(api.api, url_prefix='/api')

@app.route('/') 
def home():
    """Serve the home page."""
    return flask.render_template('index.html')

@app.route('/teams.html')
def teams():
    """Serve the teams list page."""
    return flask.render_template('teams.html')

@app.route('/teampage.html')
def teampage():
    """Serve the individual team page."""
    return flask.render_template('teampage.html')

@app.route('/leaderboard.html')
def leaderboard():
    """Serve the leaderboard page."""
    return flask.render_template('leaderboard.html')

@app.route('/MTIBTYT.html')
def MTIBTYT():
    """Serve the MTIBTYT (My Team Is Better Than Your Team) page."""
    return flask.render_template('MTIBTYT.html')

@app.route('/fun_facts.html')
def fun_facts():
    """Serve the fun facts page."""
    return flask.render_template('fun_facts.html')

# Endpoint: /help, serves your help.html page
@app.route('/help')
def get_help():
    """Serve the API help page."""
    return flask.render_template('help.html')
    

if __name__ == '__main__':
    # Parse host and port from command line and run the app
    parser = argparse.ArgumentParser('A frisbee application, including API & DB')
    parser.add_argument('host', help='the host to run on')
    parser.add_argument('port', type=int, help='the port to listen on')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)


