-- What salaries are other teams paying?

--  In 9.sql, write a SQL query to find the 5 lowest paying teams (by average salary) in 2001.
-- Round the average salary column to two decimal places and call it “average salary”.
-- Sort the teams by average salary, least to greatest.
-- Your query should return a table with two columns, one for the teams’ names and one for their average salary.


SELECT
    sal.salary
FROM
    "players" AS pla
INNER JOIN "performances" as per on per.player_id = pla.id
INNER JOIN "teams" AS tea on tea.id = per.team_id
INNER JOIN "salaries" as sal on sal.player_id = pla.id
WHERE
per.year = 2001
ORDER BY per.HR DESC
LIMIT 1
;
