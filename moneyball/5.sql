-- It’s a bit of a slow day in the office.
-- Though Satchel no longer plays, in 5.sql, write a SQL query to find all teams that Satchel Paige played for.
-- Your query should return a table with a single column, one for the name of the teams.

SELECT
    DISTINCT tea.name
FROM
    "players" AS pla
INNER JOIN "performances" as per on per.player_id = pla.id
INNER JOIN "teams" AS tea on tea.id = per.team_id
INNER JOIN "salaries" as sal on sal.player_id = pla.id
WHERE
pla.first_name = "Satchel" and pla.last_name = "Paige"
;

-- SELECT
--     *
-- FROM
--     "players"
-- WHERE
-- "first_name" = "Satchel" and "last_name" = "Paige"
-- ;


-- SELECT
--     *
-- FROM
--     "performances"
-- WHERE
-- "player_id" = 14190
-- ;
