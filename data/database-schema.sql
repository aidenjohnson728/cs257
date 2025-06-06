CREATE TABLE matches (
    match_id integer NOT NULL,
    tournament text,
    match_date text
);

CREATE TABLE teams (
    team_id integer NOT NULL,
    name text
);

CREATE TABLE results (
    match_id integer NOT NULL,
    team_id integer NOT NULL,
    opponent_id integer NOT NULL,
    points_for integer,
    points_against integer
);

CREATE TABLE rankings (
    team_id integer NOT NULL,
    algorithm text, 
    as_of_date text, 
    rank integer
);

CREATE TABLE fun_facts (
    fact_id integer NOT NULL,
    team_id integer NOT NULL,
    fun_fact text,
    value integer NOT NULL
);
