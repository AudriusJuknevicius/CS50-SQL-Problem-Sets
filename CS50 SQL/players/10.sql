-- write SQL query to answer a question of your choice. This query should:
-- Make use of AS to rename a column
-- Involve at least condition, using WHERE
-- Sort by at least one column using ORDER BY

-- Custom Question: Players born in the USA whos birth month was december, Ordered by the oldest to youngest.

SELECT
    first_name as [First Name],
    last_name as [Last Name],
    birth_year|| " " ||birth_month as [Birth Year and Month]


FROM
    "players"
WHERE
    "birth_month" = 12 and "birth_country" = "USA"
ORDER BY
"birth_year" ASC
;
