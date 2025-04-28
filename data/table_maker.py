#!/usr/bin/env python3

import sys
import csv

def main(input_file):
    teams = {}        # name -> id mapping
    matches = []      # list of {'match_id','tournament','date'}
    results = []      # list of {'match_id','team_id','opponent_id','points_for','points_against'}

    next_team_id = 1
    next_match_id = 1

    with open(input_file, newline='', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        for row in reader:
            # Register teams
            t1 = row['teamOneName'].strip()
            t2 = row['teamTwoName'].strip()
            for t in (t1, t2):
                if t not in teams:
                    teams[t] = next_team_id
                    next_team_id += 1

            # Create match record
            match_id = next_match_id
            next_match_id += 1
            matches.append({
                'match_id': match_id,
                'tournament': row.get('tournament', '').strip(),
                'date': row['date'].strip()
            })

            # Create results from each team's perspective
            id1 = teams[t1]
            id2 = teams[t2]
            results.append({
                'match_id': match_id,
                'team_id': id1,
                'opponent_id': id2,
                'points_for': row['scoreOne'],
                'points_against': row['scoreTwo']
            })
            results.append({
                'match_id': match_id,
                'team_id': id2,
                'opponent_id': id1,
                'points_for': row['scoreTwo'],
                'points_against': row['scoreOne']
            })

    # Write teams.csv
    with open('teams.csv', 'w', newline='', encoding='utf-8') as f:
        writer = csv.writer(f)
        writer.writerow(['team_id', 'name'])
        for name, tid in sorted(teams.items(), key=lambda kv: kv[1]):
            writer.writerow([tid, name])

    # Write matches.csv (formerly games.csv)
    with open('matches.csv', 'w', newline='', encoding='utf-8') as f:
        writer = csv.writer(f)
        writer.writerow(['match_id', 'tournament', 'date'])
        for m in sorted(matches, key=lambda x: x['match_id']):
            writer.writerow([m['match_id'], m['tournament'], m['date']])

    # Write results.csv with both team IDs per row
    with open('results.csv', 'w', newline='', encoding='utf-8') as f:
        writer = csv.writer(f)
        writer.writerow(['match_id', 'team_id', 'opponent_id', 'points_for', 'points_against'])
        for r in results:
            writer.writerow([r['match_id'], r['team_id'], r['opponent_id'], r['points_for'], r['points_against']])

    print("✅ Generated teams.csv, matches.csv, and results.csv.")

if __name__ == '__main__':
    if len(sys.argv) != 2:
        print(f"Usage: {sys.argv[0]} games.csv", file=sys.stderr)
        sys.exit(1)
    main(sys.argv[1])
