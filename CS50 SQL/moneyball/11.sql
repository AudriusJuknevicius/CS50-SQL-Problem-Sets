-- You need a player that can get hits. Who might be the most underrated?
--  In 11.sql, write a SQL query to find the 10 least expensive players per hit in 2001.

-- Your query should return a table with three columns, one for the players’ first names, one of their last names, and one called “dollars per hit”.
-- You can calculate the “dollars per hit” column by dividing a player’s 2001 salary by the number of hits they made in 2001. Recall you can use AS to rename a column.
-- Dividing a salary by 0 hits will result in a NULL value. Avoid the issue by filtering out players with 0 hits.
-- Sort the table by the “dollars per hit” column, least to most expensive. If two players have the same “dollars per hit”, order by first name, followed by last name, in alphabetical order.
-- As in 10.sql, ensure that the salary’s year and the performance’s year match.
-- You may assume, for simplicity, that a player will only have one salary and one performance in 2001.






SELECT
    pla.first_name,
    pla.last_name,
    sal.salary/per.h AS [dollars per hit]
FROM
    "players" as pla
JOIN "salaries" as sal on sal.player_id = pla.id
JOIN "performances" as per on per.player_id = pla.id
WHERE
    per.year = sal.year and per.year = 2001 and per.h > 0
ORDER BY "dollars per hit" ASC, pla.first_name ASC, pla.last_name ASC
LIMIT 10
;
