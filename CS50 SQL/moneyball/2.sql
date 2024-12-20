-- Your general manager (i.e., the person who makes decisions about player contracts)
-- asks you whether the team should trade a current player for Cal Ripken Jr., a star player who’s likely nearing his retirement.
-- In 2.sql, write a SQL query to find Cal Ripken Jr.’s salary history.

-- Sort by year in descending order.
-- Your query should return a table with two columns, one for year and one for salary.

SELECT
    sal.year,
    sal.salary

FROM
    "players" AS pla
INNER JOIN "salaries" as sal ON sal.player_id = pla.id
WHERE
    pla.first_name = "Cal" and pla.last_name like "Ripken%"
ORDER BY sal.year DESC
;
