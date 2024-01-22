-- Which teams might be the biggest competition for the A’s this year?
--  In 6.sql, write a SQL query to return the top 5 teams, sorted by the total number of hits by players in 2001.
-- Call the column representing total hits by players in 2001 “total hits”.
-- Sort by total hits, highest to lowest.
-- Your query should return two columns, one for the teams’ names and one for their total hits in 2001.


-- SELECT
--     tea.name,
--     SUM(DISTINCT per.H) as total_hits
-- FROM
--     "players" AS pla
-- INNER JOIN "performances" as per on per.player_id = pla.id
-- INNER JOIN "teams" AS tea on tea.id = per.team_id
-- -- INNER JOIN "salaries" as sal on sal.player_id = pla.id
-- WHERE
--     tea.year = 2001
-- GROUP BY tea.name
-- ORDER BY total_hits DESC
-- LIMIT 5
-- ;

-- SELECT
--     id,
--     player_id,
--     team_id,
--     "year",
--     "G",
--     "AB",
--     "H"
-- FROM
--     "performances"


SELECT
    tea.id,
    per.id,
    per.team_id,
    tea.year,
    per.year,
    tea.name,
    per.H as total_hits
FROM
    "teams" AS tea
INNER JOIN "performances" as per on tea.id = per.team_id
-- INNER JOIN "teams" AS tea on tea.id = per.team_id
-- INNER JOIN "salaries" as sal on sal.player_id = pla.id
WHERE
    per.year = 2001
ORDER BY total_hits DESC
LIMIT 50
;

