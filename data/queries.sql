SELECT teams.team_id, teams.name, results.opponent_id
FROM teams, results
WHERE teams.team_id = results.team_id;


SELECT fun_facts.team_id, fun_facts.fun_fact
FROM fun_facts
WHERE fun_facts.team_id = 30;


SELECT matches.tournament, matches.match_date
FROM matches 
WHERE match.match_id = 1658;
