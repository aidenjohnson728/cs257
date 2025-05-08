import psycopg2
import flask
import sys
import config
from collections import deque


app = flask.Flask(__name__)


def get_connection():
    try:
        return psycopg2.connect(database=config.database,
                                user=config.user,
                                password=config.password)
    except Exception as e:
        print(e, file=sys.stderr)
        exit()

#endpoitn for leaderboard. Usage: /leaderboard?algorithm=SWCI (or ELO or Massey)
@app.route('/leaderboard')
def leaderboard_endpoint():
    algo = flask.request.args.get('algorithm')
    if algo not in ('SWCI', 'ELO', 'Massey'):
        return flask.jsonify({'error': 'Invalid ranking algorithm'}), 400

    lb = get_leaderboard(algo)
    return flask.jsonify(lb)


def get_leaderboard(algorithm):
    leaderboard = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        query = '''SELECT teams.name, rankings.rank
                    FROM teams
                    JOIN rankings ON teams.team_id = rankings.team_id
                    WHERE rankings.algorithm = %s
                    AND rankings.as_of_date = (SELECT MAX(as_of_date) FROM rankings WHERE algorithm = %s)
                    ORDER BY rankings.rank ASC'''
        
        cursor.execute(query, (algorithm, algorithm))
        for row in cursor:
            leaderboard.append({'name': row[0], 'rank': row[1]})
        
    except Exception as e:
        print(e, file=sys.stderr)

    connection.close()
    return leaderboard


@app.route('/MTIBTYT')
def MTIBTYT_endpoint():
    teamOne = flask.request.args.get('teamOne')
    teamTwo = flask.request.args.get('teamTwo')
    if not teamOne or not teamTwo:
        return flask.jsonify({'error': 'Missing teamOne or teamTwo parameter'}), 400
    if teamOne == teamTwo:
        return flask.jsonify({'error': 'teamOne and teamTwo cannot be the same'}), 400
    if not team_exists(teamOne) or not team_exists(teamTwo):
        return flask.jsonify({'error': 'One or both teams do not exist'}), 400

    chain = get_MTIBTYT(teamOne, teamTwo)
    if chain is None:
        return flask.jsonify({'error':'No chain found'}), 404
    return flask.jsonify(chain)

def get_MTIBTYT(teamOne, teamTwo):
    try:
        connection = get_connection()
        cursor = connection.cursor()
        query = 'SELECT team_id, name FROM teams;'
        cursor.execute(query)
        team_rows = cursor.fetchall()
        name_to_id = {name: tid for tid, name in team_rows}
        id_to_name = {tid: name for tid, name in team_rows}

        start_id = name_to_id[teamOne]
        goal_id = name_to_id[teamTwo]

        query2 = '''SELECT team_id AS winner, opponent_id AS loser
                    FROM results
                    WHERE points_for > points_against'''
        cursor.execute(query2)
        edges = cursor.fetchall()

        graph = {}
        for winner, loser in edges:
            graph.setdefault(winner, []).append(loser)

        queue = deque([start_id])
        visited = {start_id}
        prev = {} # to reconstruct the path

        while queue:
            curr = queue.popleft()
            if curr == goal_id:
                break
            for neighbor in graph.get(curr, []):
                if neighbor not in visited:
                    visited.add(neighbor)
                    prev[neighbor] = curr
                    queue.append(neighbor)
        
        if goal_id not in prev and start_id != goal_id:
            return None
        

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
    
    return [id_to_name[tid] for tid in path_ids]

def team_exists(team_name):
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute('SELECT team_id FROM teams WHERE name = %s',
                       (team_name,))
        row = cursor.fetchone()
        if row:
            exists = True
        else:
            exists = False

        connection.close()
        return exists
    
    except Exception as e:
        connection.close()
        print(e, file=sys.stderr)
        return False
    

@app.route('/fun_facts')
def fun_facts_endpoint():
    fun_facts = get_fun_facts()
    return flask.jsonify(fun_facts)

def get_fun_facts():
    fun_facts = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        query = 'SELECT * FROM fun_facts'
        cursor.execute(query)
        for row in cursor:
            fun_facts.append({'fact': row[0], 'team': row[1]})
    except Exception as e:
        print(e, file=sys.stderr)
    finally:
        connection.close()
    return fun_facts

@app.route('/teams')
def teams_endpoint():
    teams = get_teams()
    return flask.jsonify(teams)

def get_teams():
    teams = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        query = 'SELECT name FROM teams ORDER BY name ASC'
        cursor.execute(query)
        for row in cursor:
            teams.append({'name':row[0]})
    except Exception as e:
        print(e, file=sys.stderr)
    connection.close()
    return teams

@app.route('/teampage')
def teampage_endpoint():
    team = flask.request.args.get('team')
    algorithm = flask.request.args.get('algorithm')
    if not team:
        return flask.jsonify({'error': 'Missing team parameter'}), 400
    if not algorithm:
        algorithm = 'SWCI'
    if algorithm not in ('SWCI', 'ELO', 'Massey'):
        return flask.jsonify({'error': 'Invalid ranking algorithm'}), 400
    if not team_exists(team):
        return flask.jsonify({'error': 'Team does not exist'}), 400
    matches = get_matches(team)
    ranking_records = get_ranking_records(team, algorithm)
    return flask.jsonify({'matches': matches, 'rankings': ranking_records})

def get_matches(team):
    matches = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        query = '''SELECT matches.match_date, matches.tournament,
                    opp.name AS opponent_name, results.points_for  AS our_score,
                    results.points_against AS opponent_score
                    FROM results
                    JOIN matches ON results.match_id = matches.match_id
                    JOIN teams opp ON results.opponent_id = opp.team_id
                    JOIN teams team ON results.team_id = team.team_id
                    WHERE team.name = %s
                    ORDER BY matches.match_date DESC;'''
        cursor.execute(query, (team,))
        for row in cursor:
            matches.append({
                'date': row[0],
                'tournament': row[1],
                'opponent_name': row[2],
                'our_score': row[3],
                'opponent_score': row[4]
            })
        
    except Exception as e:
        print(e, file=sys.stderr)

    connection.close()
    return matches

def get_ranking_records(team, algorithm):
    ranking_records = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        query = '''SELECT rankings.as_of_date, rankings.rank
                    FROM rankings
                    JOIN teams ON rankings.team_id = teams.team_id
                    WHERE teams.name = %s AND rankings.algorithm = %s
                    ORDER BY rankings.as_of_date DESC'''
        cursor.execute(query, (team, algorithm))
        for row in cursor:
            ranking_records.append({'date': row[0], 'rank': row[1]})
    
    except Exception as e:
        print(e, file=sys.stderr)
    
    finally:
        connection.close()

    return ranking_records
                

        
    





    