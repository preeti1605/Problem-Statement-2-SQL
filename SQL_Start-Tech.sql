CREATE DATABASE ipl;

use ipl;
-- 1. Create a table named ‘matches’ with appropriate data types for columns

CREATE TABLE matches(
    id INT PRIMARY KEY,
    city VARCHAR(40),
    date DATE,
    player_of_match VARCHAR(40),
    venue VARCHAR(80),
    neutral_venue INT,
    team1 VARCHAR(80),
    team2 VARCHAR(80),
    toss_winner VARCHAR(80),
    toss_decision VARCHAR(20),
    winner VARCHAR(80),
    result VARCHAR(40),
    result_margin INT,
    eliminator VARCHAR(10),
    method VARCHAR(10),
    umpire1 VARCHAR(40),
    umpire2 VARCHAR(40)
);

-- 2. Create a table named ‘deliveries’ with appropriate data types for columns

CREATE TABLE deliveries (
    `id` INT,
    `inning` INT,
    `over` INT,
    `ball` INT,
    `batsman` VARCHAR(40),
    `non_striker` VARCHAR(40),
    `bowler` VARCHAR(40),
    `batsman_runs` INT,
    `extra_runs` INT,
    `total_runs` INT,
    `is_wicket` INT,
    `dismissal_kind` VARCHAR(40),
    `player_dismissed` VARCHAR(40),
    `fielder` VARCHAR(40),
    `extras_type` VARCHAR(40),
    `batting_team` VARCHAR(40),
    `bowling_team` VARCHAR(40),
     FOREIGN KEY(id) REFERENCES matches(id)
);

/* 3. Import data from CSV file ’IPL_matches.csv’ attached in resources to ‘matches’

4. Import data from CSV file ’IPL_Ball.csv’ attached in resources to ‘deliveries’ */

-- 5. Select the top 20 rows of the deliveries table.

SELECT * FROM deliveries
LIMIT 20;

-- 6. Select the top 20 rows of the matches table.

SELECT * FROM matches
LIMIT 20;

-- 7. Fetch data of all the matches played on 2nd May 2013.

SELECT * FROM matches
WHERE date = '2013-05-02';

-- 8. Fetch data of all the matches where the margin of victory is more than 100 runs.

SELECT * FROM matches
WHERE result_margin > 100;

-- 9. Fetch data of all the matches where the final scores of both teams tied and order it in descending order of the date.

SELECT * FROM matches
WHERE result = 'tie'
ORDER BY date DESC;

-- 10. Get the count of cities that have hosted an IPL match.

SELECT COUNT(DISTINCT city) 
FROM matches;




