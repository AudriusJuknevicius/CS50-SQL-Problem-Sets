-- You need to make a recommendation about which players the team should consider hiring.
-- With the team’s dwindling budget, the general manager wants to know which players were paid the lowest salaries in 2001.
-- In 4.sql, write a SQL query to find the 50 players paid the least in 2001.

SELECT
    pla.first_name,
    pla.last_name,
    sal.salary
FROM
    "players" as pla
INNER JOIN "salaries" as sal ON sal.player_id = pla.id
WHERE
sal.year = 2001
ORDER BY sal.salary ASC, pla.first_name ASC, pla.last_name ASC, pla.id ASC
LIMIT 50
;
