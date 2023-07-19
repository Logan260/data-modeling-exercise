CREATE TABLE Teams (
    team_id INT PRIMARY KEY,
    team_name VARCHAR(100),
    coach_name VARCHAR(50)
);

CREATE TABLE Players (
    player_id INT PRIMARY KEY,
    player_name VARCHAR(100),
    team_id INT,
    position VARCHAR(50),
    date_of_birth DATE
);

CREATE TABLE Goals (
    goal_id INT PRIMARY KEY,
    player_id INT,
    game_id INT,
    goal_time TIME
);

CREATE TABLE Referees (
    referee_id INT PRIMARY KEY,
    referee_name VARCHAR(100)
);

CREATE TABLE Matches (
    game_id INT PRIMARY KEY,
    home_team_id INT,
    away_team_id INT,
    referee_id INT,
    match_date DATE
);

CREATE TABLE Seasons (
    season_id INT PRIMARY KEY,
    start_date DATE,
    end_date DATE
);