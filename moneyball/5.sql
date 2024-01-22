-- It’s a bit of a slow day in the office.
-- Though Satchel no longer plays, in 5.sql, write a SQL query to find all teams that Satchel Paige played for.
-- Your query should return a table with a single column, one for the name of the teams.

SELECT
    tea.name
FROM
    "players" AS pla
FULL OUTER JOIN "salaries" as sal on sal.player_id = pla.id
FULL OUTER JOIN "teams" AS tea on tea.id = sal.team_id
WHERE
pla.first_name = "Satchel"
;

