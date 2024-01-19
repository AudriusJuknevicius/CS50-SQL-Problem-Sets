-- write a SQL query to explore a question of your choice. This query should:
-- Involve at least one condition, using WHERE with AND or OR

--Question: Episodes that have aired during christmas between seasons 1 to 6.

SELECT
    title
FROM "episodes"
WHERE
    "air_date" like "____-12-__" and "season" between 1 and 6
    ;

