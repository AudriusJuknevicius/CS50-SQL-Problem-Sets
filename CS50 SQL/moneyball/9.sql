-- What salaries are other teams paying?

--  In 9.sql, write a SQL query to find the 5 lowest paying teams (by average salary) in 2001.
-- Round the average salary column to two decimal places and call it “average salary”.
-- Sort the teams by average salary, least to greatest.
-- Your query should return a table with two columns, one for the teams’ names and one for their average salary.


SELECT
    tea.name,
    ROUND(AVG(sal.salary),2) as [average salary]
FROM
    "teams" as tea
INNER JOIN "salaries" as sal on sal.team_id = tea.id
WHERE
sal.year = 2001
GROUP BY tea.id
ORDER BY sal.salary ASC
LIMIT 5
;
