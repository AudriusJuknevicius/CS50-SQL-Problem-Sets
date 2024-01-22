-- Hits are great, but so are RBIs! In 12.sql, write a SQL query to find the players among the 10 least expensive players per hit and among the 10 least expensive players per RBI in 2001.

-- Your query should return a table with two columns, one for the players’ first names and one of their last names.
-- You can calculate a player’s salary per RBI by dividing their 2001 salary by their number of RBIs in 2001.
-- You may assume, for simplicity, that a player will only have one salary and one performance in 2001.
-- Order your results by player ID, least to greatest (or alphabetically by last name, as both are the same in this case!).
-- Keep in mind the lessons you’ve learned in 10.sql and 11.sql!






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
