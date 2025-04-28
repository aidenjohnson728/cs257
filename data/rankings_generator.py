#!/usr/bin/env python3
"""
rankings_generator.py

Generates per-tournament ranking snapshots for SWCI, ELO, and Massey.
Outputs rankings_tuned.csv with columns: team_id,algorithm,as_of_date,rank
"""
import csv
from datetime import datetime
import numpy as np
from scipy.linalg import lstsq

# --- 1) Load teams.csv into a list of ids ---
team_ids = []  # sorted list of team_ids
with open('teams.csv', newline='', encoding='utf-8') as f:
    reader = csv.DictReader(f)
    for row in reader:
        team_ids.append(int(row['team_id']))
team_ids.sort()
id_to_idx = {tid: i for i, tid in enumerate(team_ids)}
idx_to_id = {i: tid for i, tid in enumerate(team_ids)}
n = len(team_ids)

# --- 2) Load matches.csv into dict of metadata ---
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

# --- 3) Load results.csv and pair into games list ---
# each game: {match_id, date, tournament, team1_id, team2_id, score1, score2}
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
# sort games by date
games.sort(key=lambda g: g['date'])

# --- 4) Hard-coded SWCI weights ---
swci_weights = {'win_pct': 0.45, 'margin_pct': 0.10, 'sos': 0.45}

# --- 5) SWCI update function ---
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
    # SOS update
    sos = np.zeros(n)
    for g in game_list:
        i = id_to_idx[g['team1_id']]
        j = id_to_idx[g['team2_id']]
        sos[i] += win_pct[j]; sos[j] += win_pct[i]
    sos = np.divide(sos, played, out=np.zeros_like(sos), where=played>0)
    return (weights['win_pct'] * win_pct +
            weights['margin_pct'] * margin_pct +
            weights['sos'] * sos)

# --- 6) Elo initialization & helper ---
elo = np.full(n, 1500.0)
K = 20
def update_elo(r_i, r_j, s_i, s_j):
    mf = np.log1p(abs(s_i - s_j))
    e_i = 1/(1+10**((r_j-r_i)/400))
    score_i = 1 if s_i > s_j else 0
    k_eff = K * mf
    return (r_i + k_eff*(score_i - e_i), r_j + k_eff*((1-score_i)-(1-e_i)))

# --- 7) Snapshot containers & helper ---
rank_history = {tid: [] for tid in team_ids}
prev_rank = {tid: np.inf for tid in team_ids}
def record_snapshot(algo, scores, date):
    # scores: numpy array length n
    order = np.argsort(-scores)
    ranks = np.empty_like(order)
    for rank, idx in enumerate(order, start=1):
        ranks[idx] = rank
    for idx, tid in idx_to_id.items():
        if prev_rank[tid] != ranks[idx]:
            rank_history[tid].append({'algorithm':algo,'as_of_date':date,'rank':int(ranks[idx])})
    return {tid: ranks[id_to_idx[tid]] for tid in team_ids}

# --- 8) Per-tournament snapshots ---
# Determine tournament order and end dates
tourney_ends = {}
for g in games:
    tourney_ends[g['tournament']] = max(tourney_ends.get(g['tournament'], g['date']), g['date'])
for tourney, end_date in sorted(tourney_ends.items(), key=lambda x: x[1]):
    # process matches in this tournament for ELO
    for g in filter(lambda x: x['tournament']==tourney, games):
        i = id_to_idx[g['team1_id']]; j = id_to_idx[g['team2_id']]
        elo[i], elo[j] = update_elo(elo[i], elo[j], g['score1'], g['score2'])
    # SWCI snapshot up to end_date
    swci_scores = update_swci([g for g in games if g['date']<=end_date], swci_weights)
    prev_rank = record_snapshot('SWCI', swci_scores, end_date)
    # ELO snapshot
    prev_rank = record_snapshot('ELO', elo, end_date)
    # Massey snapshot
    A = np.zeros((n,n)); b = np.zeros(n)
    for g in filter(lambda x: x['date']<=end_date, games):
        i = id_to_idx[g['team1_id']]; j = id_to_idx[g['team2_id']]
        m = g['score1'] - g['score2']
        A[i,i]+=1; A[j,j]+=1; A[i,j]-=1; A[j,i]-=1
        b[i]+=m; b[j]-=m
    A[-1,:]=1; b[-1]=0
    massey, *_ = lstsq(A, b)
    prev_rank = record_snapshot('Massey', massey, end_date)

# --- 9) Export rankings_tuned.csv ---
with open('rankings.csv', 'w', newline='', encoding='utf-8') as f:
    writer = csv.writer(f)
    writer.writerow(['team_id','algorithm','as_of_date','rank'])
    for tid in team_ids:
        for rec in rank_history[tid]:
            writer.writerow([tid, rec['algorithm'], rec['as_of_date'].strftime('%Y-%m-%d'), rec['rank']])
print("✅ rankings.csv generated.")
