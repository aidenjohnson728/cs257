# Made by Aiden Johnson and Alden Harcourt 
# Sections 5, 6 and 7 - (lines 184-191, 208-229) are written by ChatGPT

import sys
import csv
from datetime import datetime
import numpy as np
from scipy.linalg import lstsq

def generate_tables(input_file):
    teams = {}
    matches = []
    results = []
    fun_facts = []

    next_team_id = 1
    next_match_id = 1

    # Read the input file and process rows
    with open(input_file, newline='', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        for row in reader:
            # Register teams
            team_one = row['teamOneName'].strip()
            team_two = row['teamTwoName'].strip()

            if team_one not in teams:
                teams[team_one] = next_team_id
                next_team_id += 1

            if team_two not in teams:
                teams[team_two] = next_team_id
                next_team_id += 1

            # Create match record
            match_id = next_match_id
            next_match_id += 1
            matches.append([match_id, row.get('tournament', '').strip(), row['date'].strip()])

            # Create results for both teams
            team_one_id = teams[team_one]
            team_two_id = teams[team_two]
            results.append([match_id, team_one_id, team_two_id, int(row['scoreOne']), int(row['scoreTwo'])])
            results.append([match_id, team_two_id, team_one_id, int(row['scoreTwo']), int(row['scoreOne'])])

    # Calculate fun facts
    games_played = {team_id: 0 for team_id in teams.values()}
    point_differentials = {team_id: 0 for team_id in teams.values()}
    total_points = {team_id: 0 for team_id in teams.values()}

    for result in results:
        team_id = result[1]
        points_for = result[3]
        points_against = result[4]

        # Update statistics
        games_played[team_id] += 1
        point_differentials[team_id] += points_for - points_against
        total_points[team_id] += points_for

    # Determine fun facts
    most_games_team = max(games_played, key=games_played.get)
    largest_point_diff_team = max(point_differentials, key=point_differentials.get)
    smallest_point_diff_team = min(point_differentials, key=point_differentials.get)
    most_points_team = max(total_points, key=total_points.get)

    # Add fun facts to the list
    fun_facts.append([1, most_games_team, "The team that played the most games"])
    fun_facts.append([2, largest_point_diff_team, "The team with the largest point differential"])
    fun_facts.append([3, smallest_point_diff_team, "The team with the smallest point differential"])
    fun_facts.append([4, most_points_team, "The team with the most points"])

    # Write teams.csv
    with open('teams.csv', 'w', newline='', encoding='utf-8') as f:
        writer = csv.writer(f)
        writer.writerow(['team_id', 'name'])
        for team_name, team_id in teams.items():
            writer.writerow([team_id, team_name])

    # Write matches.csv
    with open('matches.csv', 'w', newline='', encoding='utf-8') as f:
        writer = csv.writer(f)
        writer.writerow(['match_id', 'tournament', 'date'])
        for match in matches:
            writer.writerow(match)

    # Write results.csv
    with open('results.csv', 'w', newline='', encoding='utf-8') as f:
        writer = csv.writer(f)
        writer.writerow(['match_id', 'team_id', 'opponent_id', 'points_for', 'points_against'])
        for result in results:
            writer.writerow(result)

    # Write fun_facts.csv
    with open('fun_facts.csv', 'w', newline='', encoding='utf-8') as f:
        writer = csv.writer(f)
        writer.writerow(['fact_id', 'team_id', 'fun_fact'])
        for fact in fun_facts:
            writer.writerow(fact)

    print("✅ Generated teams.csv, matches.csv, results.csv, and fun_facts.csv.")


# ChatGPT wrote sections 5) 6) and 7) of this function.
def generate_rankings():
    # --- 1) Load teams.csv ---
    team_ids = []
    with open('teams.csv', newline='', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        for row in reader:
            team_ids.append(int(row['team_id']))
    team_ids.sort()
    id_to_idx = {tid: i for i, tid in enumerate(team_ids)}
    idx_to_id = {i: tid for i, tid in enumerate(team_ids)}
    n = len(team_ids)

    # --- 2) Load matches.csv ---
    matches = {}
    with open('matches.csv', newline='', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        for row in reader:
            mid = int(row['match_id'])
            date = datetime.strptime(row['date'], '%Y-%m-%d')
            matches[mid] = {
                'tournament': row['tournament'],
                'date': date
            }

    # --- 3) Load results.csv ---
    games = []
    results_group = {}
    with open('results.csv', newline='', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        for row in reader:
            mid = int(row['match_id'])
            if mid not in results_group:
                results_group[mid] = []
            results_group[mid].append(row)
    for mid, group in results_group.items():
        if len(group) != 2:
            continue
        r1, r2 = group[0], group[1]
        meta = matches[mid]
        games.append({
            'tournament': meta['tournament'],
            'date':       meta['date'],
            'team1_id':   int(r1['team_id']),
            'team2_id':   int(r2['team_id']),
            'score1':     int(r1['points_for']),
            'score2':     int(r2['points_for'])
        })
    games.sort(key=lambda g: g['date'])

    # --- 4) SWCI ---
    swci_weights = {'win_pct': 0.45, 'margin_pct': 0.10, 'sos': 0.45}
    def update_swci(game_list, weights):
        wins = np.zeros(n)
        played = np.zeros(n)
        margin = np.zeros(n)
        for g in game_list:
            i = id_to_idx[g['team1_id']]
            j = id_to_idx[g['team2_id']]
            s1, s2 = g['score1'], g['score2']
            played[i] += 1; played[j] += 1
            margin[i] += s1 - s2; margin[j] += s2 - s1
            if s1 > s2:
                wins[i] += 1
            elif s2 > s1:
                wins[j] += 1
        win_pct = np.divide(wins, played, out=np.zeros_like(wins), where=played>0)
        max_m = max(margin.max(), 1)
        margin_pct = margin / max_m
        sos = np.zeros(n)
        for g in game_list:
            i = id_to_idx[g['team1_id']]
            j = id_to_idx[g['team2_id']]
            sos[i] += win_pct[j]; sos[j] += win_pct[i]
        sos = np.divide(sos, played, out=np.zeros_like(sos), where=played>0)
        return (weights['win_pct'] * win_pct +
                weights['margin_pct'] * margin_pct +
                weights['sos'] * sos)

    # The following Elo rating system was written by ChatGPT
    #  --- 5) Elo ---
    elo = np.full(n, 1500.0)
    K = 20
    def update_elo(r_i, r_j, s_i, s_j):
        mf = np.log1p(abs(s_i - s_j))
        e_i = 1/(1+10**((r_j-r_i)/400))
        score_i = 1 if s_i > s_j else 0
        k_eff = K * mf
        return (r_i + k_eff*(score_i - e_i), r_j + k_eff*((1-score_i)-(1-e_i)))

    rank_history = {tid: [] for tid in team_ids}
    prev_rank = {tid: np.inf for tid in team_ids}
    def record_snapshot(algo, scores, date):
        order = np.argsort(-scores)
        ranks = np.empty_like(order)
        for rank, idx in enumerate(order, start=1):
            ranks[idx] = rank
        for idx, tid in idx_to_id.items():
            if prev_rank[tid] != ranks[idx]:
                rank_history[tid].append({'algorithm':algo,'as_of_date':date,'rank':int(ranks[idx])})
        return {tid: ranks[id_to_idx[tid]] for tid in team_ids}

    # Process Tournaments 
    # Records tournament start and end dates to ensure that rankings are only updated once per tournament
    # This section was written by ChatGPT
    tourney_ends = {}
    for g in games:
        tourney_ends[g['tournament']] = max(tourney_ends.get(g['tournament'], g['date']), g['date'])
    for tourney, end_date in sorted(tourney_ends.items(), key=lambda x: x[1]):
        for g in filter(lambda x: x['tournament']==tourney, games):
            i = id_to_idx[g['team1_id']]; j = id_to_idx[g['team2_id']]
            elo[i], elo[j] = update_elo(elo[i], elo[j], g['score1'], g['score2'])
        swci_scores = update_swci([g for g in games if g['date']<=end_date], swci_weights)
        prev_rank = record_snapshot('SWCI', swci_scores, end_date)
        prev_rank = record_snapshot('ELO', elo, end_date)
        A = np.zeros((n,n)); b = np.zeros(n)

        # Massey least squares rating
        # The following Massey rating system was written by ChatGPT
        for g in filter(lambda x: x['date']<=end_date, games):
            i = id_to_idx[g['team1_id']]; j = id_to_idx[g['team2_id']]
            m = g['score1'] - g['score2']
            A[i,i]+=1; A[j,j]+=1; A[i,j]-=1; A[j,i]-=1
            b[i]+=m; b[j]-=m
        A[-1,:]=1; b[-1]=0
        massey, *_ = lstsq(A, b)
        prev_rank = record_snapshot('Massey', massey, end_date)

    # --- 8) Export rankings.csv ---
    with open('rankings.csv', 'w', newline='', encoding='utf-8') as f:
        writer = csv.writer(f)
        writer.writerow(['team_id','algorithm','as_of_date','rank'])
        for tid in team_ids:
            # Group rankings by date and algorithm
            written_dates = set()
            for rec in rank_history[tid]:
                if rec['as_of_date'] in tourney_ends.values() and (rec['as_of_date'], rec['algorithm']) not in written_dates:
                    writer.writerow([tid, rec['algorithm'], rec['as_of_date'].strftime('%Y-%m-%d'), rec['rank']])
                    written_dates.add((rec['as_of_date'], rec['algorithm']))
    print("✅ rankings.csv generated.")

if __name__ == '__main__':
    if len(sys.argv) != 2:
        print(f"Usage: {sys.argv[0]} games.csv", file=sys.stderr)
        sys.exit(1)
    generate_tables(sys.argv[1])
    generate_rankings()
