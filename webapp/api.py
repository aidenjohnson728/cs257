import psycopg2           # PostgreSQL driver
import flask              # Flask web framework
import sys                # For stderr printing
import config             # Your DB credentials
from collections import deque  # For BFS in beat-chain
import argparse           # For command-line args in __main__


app = flask.Flask(__name__)


def get_connection():
    """Return a new database connection using credentials from config."""
    try:
        return psycopg2.connect(
            database=config.database,
            user=config.user,
            password=config.password
        )
    except Exception as e:
        print(e, file=sys.stderr)


# Endpoint: /leaderboard?algorithm=<SWCI|ELO|Massey>
@app.route('/leaderboard')
def leaderboard_endpoint():
    algo = flask.request.args.get('algorithm')
    if not algo:
        algo = 'USAU'   # default algorithm
    if algo not in ('SWCI', 'ELO', 'Massey', 'USAU'):
        return flask.jsonify({'error': 'Invalid ranking algorithm'}), 400

    lb = get_leaderboard(algo)    
    return flask.jsonify(lb)       


def get_leaderboard(algorithm):
    """
    Query the latest rankings for all teams under the given algorithm.
    Returns a list of {'name': team_name, 'rank': integer}.
    """
    leaderboard = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        query = '''
            SELECT teams.name, rankings.rank
              FROM teams
              JOIN rankings ON teams.team_id = rankings.team_id
             WHERE rankings.algorithm = %s
               AND rankings.as_of_date = (
                   SELECT MAX(as_of_date)
                     FROM rankings
                    WHERE algorithm = %s
               )
             ORDER BY rankings.rank ASC
        '''
        cursor.execute(query, (algorithm, algorithm))
        for row in cursor:
            leaderboard.append({'rank': row[1], 'team': row[0]})
    except Exception as e:
        print(e, file=sys.stderr)
    finally:
        connection.close()
    return leaderboard


# Endpoint: /MTIBTYT?teamOne=...&teamTwo=...
@app.route('/MTIBTYT')
def MTIBTYT_endpoint():
    teamOne = flask.request.args.get('teamOne')
    teamTwo = flask.request.args.get('teamTwo')
    # validate parameters
    if not teamOne or not teamTwo:
        return flask.jsonify({'error': 'Missing teamOne or teamTwo parameter'}), 400
    if teamOne == teamTwo:
        return flask.jsonify({'error': 'teamOne and teamTwo cannot be the same'}), 400
    if not team_exists(teamOne) or not team_exists(teamTwo):
        return flask.jsonify({'error': 'One or both teams do not exist'}), 400

    chain = get_MTIBTYT(teamOne, teamTwo)  # find beat-chain
    if chain is None:
        return flask.jsonify({'error':'No chain found'}), 404
    return flask.jsonify(chain)


def get_MTIBTYT(teamOne, teamTwo):
    """
    Build a graph of wins (winner -> loser) and run BFS to find
    a path from teamOne to teamTwo. Returns list of team names.
    """
    try:
        connection = get_connection()
        cursor = connection.cursor()

        # Load all teams into dicts for name id lookup
        cursor.execute('SELECT team_id, name FROM teams')
        team_rows = cursor.fetchall()
        name_to_id = {name: tid for tid, name in team_rows}
        id_to_name = {tid: name for tid, name in team_rows}

        start_id = name_to_id[teamOne]
        goal_id  = name_to_id[teamTwo]

        cursor.execute('''
            SELECT team_id AS winner, opponent_id AS loser
              FROM results
             WHERE points_for > points_against
        ''')
        edges = cursor.fetchall()

        # Build adjacency list for the directed graph
        graph = {}
        for winner, loser in edges:
            graph.setdefault(winner, []).append(loser)

        # BFS initialization
        queue = deque([start_id])
        visited = {start_id}
        prev = {}  # track path

        # Standard BFS to find goal_id
        while queue:
            curr = queue.popleft()
            if curr == goal_id:
                break
            for nbr in graph.get(curr, []):
                if nbr not in visited:
                    visited.add(nbr)
                    prev[nbr] = curr
                    queue.append(nbr)

        # If goal not reached, return None
        if goal_id not in prev and start_id != goal_id:
            return None

        # Reconstruct path of IDs, then map back to names
        path_ids = []
        node = goal_id
        while node != start_id:
            path_ids.append(node)
            node = prev[node]
        path_ids.append(start_id)
        path_ids.reverse()

    except Exception as e:
        print(e, file=sys.stderr)
        return None
    finally:
        connection.close()

    return [id_to_name[tid] for tid in path_ids]


def team_exists(team_name):
    """Return True if the given team name exists in the teams table."""
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(
            'SELECT team_id FROM teams WHERE name = %s',
            (team_name,)
        )
        row = cursor.fetchone()
        exists = (row is not None)
    except Exception as e:
        print(e, file=sys.stderr)
        exists = False
    finally:
        connection.close()
    return exists


# Endpoint: /fun_facts
@app.route('/fun_facts')
def fun_facts_endpoint():
    fun_facts = get_fun_facts()
    return flask.jsonify(fun_facts)


def get_fun_facts():
    """
    Return a list of fun facts with their associated team names and values.
    Expects fun_facts table to have a 'value' column.
    """
    facts = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        query = '''
            SELECT fun_facts.fun_fact, teams.name AS team_name, fun_facts.value
              FROM fun_facts
              JOIN teams ON fun_facts.team_id = teams.team_id
             ORDER BY fun_facts.fact_id
        '''
        cursor.execute(query)
        for fun_fact, team_name, value in cursor:
            facts.append({
                'fact': fun_fact,
                'team': team_name,
                'value': value
            })
    except Exception as e:
        print(e, file=sys.stderr)
    finally:
        connection.close()
    return facts


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


# Endpoint: /teampage?team=<name>&algorithm=<algo>
@app.route('/teampage')
def teampage_endpoint():
    team = flask.request.args.get('team')
    algorithm = flask.request.args.get('algorithm')
    if not team:
        return flask.jsonify({'error': 'Missing team parameter'}), 400
    if not algorithm:
        algorithm = 'USAU'  # default
    if algorithm not in ('SWCI', 'ELO', 'Massey', 'USAU'):
        return flask.jsonify({'error': 'Invalid ranking algorithm'}), 400
    if not team_exists(team):
        return flask.jsonify({'error': 'Team does not exist'}), 400

    matches = get_matches(team)
    ranking_records = get_ranking_records(team, algorithm)
    return flask.jsonify({'matches': matches, 'rankings': ranking_records})


def get_matches(team):
    """Fetch all games for the given team name, newest first."""
    matches = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        query = '''
            SELECT matches.match_date,
                   matches.tournament,
                   opp.name AS opponent_name,
                   results.points_for    AS our_score,
                   results.points_against AS opponent_score
              FROM results
              JOIN matches ON results.match_id = matches.match_id
              JOIN teams opp ON results.opponent_id = opp.team_id
              JOIN teams team ON results.team_id = team.team_id
             WHERE team.name = %s
             ORDER BY matches.match_date DESC
        '''
        cursor.execute(query, (team,))
        for row in cursor:
            matches.append({
                'date':           row[0],
                'tournament':     row[1],
                'opponent_name':  row[2],
                'our_score':      row[3],
                'opponent_score': row[4]
            })
    except Exception as e:
        print(e, file=sys.stderr)
    finally:
        connection.close()
    return matches


def get_ranking_records(team, algorithm):
    """Fetch historical rankings for the team and algorithm, newest first."""
    ranking_records = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        query = '''
            SELECT rankings.as_of_date, rankings.rank
              FROM rankings
              JOIN teams ON rankings.team_id = teams.team_id
             WHERE teams.name = %s
               AND rankings.algorithm = %s
             ORDER BY rankings.as_of_date DESC
        '''
        cursor.execute(query, (team, algorithm))
        for date, rank in cursor:
            ranking_records.append({'date': date, 'rank': rank})
    except Exception as e:
        print(e, file=sys.stderr)
    finally:
        connection.close()
    return ranking_records


# Endpoint: /help, serves your help.html page
@app.route('/help')
def get_help():
    return flask.render_template('help.html')


if __name__ == '__main__':
    # Parse host and port from command line
    parser = argparse.ArgumentParser('An Ultimate Frisbee API')
    parser.add_argument('host', help='host for this app to listen on')
    parser.add_argument('port', type=int, help='port for this app to listen on')
    arguments = parser.parse_args()
    # Start the Flask development server
    app.run(host=arguments.host, port=arguments.port, debug=True)
