-- You need to make a recommendation about which player (or players) to avoid recruiting.
--  In 7.sql, write a SQL query to find the name of the player who’s been paid the highest salary, of all time, in Major League Baseball.
-- Your query should return a table with two columns, one for the player’s first name and one for their last name.


SELECT
    pla.first_name,
    pla.last_name
FROM
    "players" AS pla
INNER JOIN "performances" as per on per.player_id = pla.id
INNER JOIN "teams" AS tea on tea.id = per.team_id
INNER JOIN "salaries" as sal on sal.player_id = pla.id
ORDER BY sal.salary DESC
LIMIT 1 
;
