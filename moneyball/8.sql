-- How much would the A’s need to pay to get the best home run hitter this past season?
-- In 8.sql, write a SQL query to find the 2001 salary of the player who hit the most home runs in 2001.
-- Your query should return a table with one column, the salary of the player.

SELECT
    sal.salary
FROM
    "players" AS pla
INNER JOIN "performances" as per on per.player_id = pla.id
-- INNER JOIN "teams" AS tea on tea.id = per.team_id
INNER JOIN "salaries" as sal on sal.player_id = pla.id
WHERE
per.year = 2001
ORDER BY per.HR DESC
;
