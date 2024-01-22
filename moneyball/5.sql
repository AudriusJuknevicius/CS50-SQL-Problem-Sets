-- It’s a bit of a slow day in the office.
-- Though Satchel no longer plays, in 5.sql, write a SQL query to find all teams that Satchel Paige played for.
-- Your query should return a table with a single column, one for the name of the teams.

SELECT
    tea.name
FROM
    "players" AS pla
INNER JOIN "teams" AS tea on tea.id = pla.id
WHERE
pla.first_name = "Satchel"
GROUP BY tea.year
;

