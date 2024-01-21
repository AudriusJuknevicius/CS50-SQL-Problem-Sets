-- DESE wants to assess which schools achieved a 100% graduation rate.
--  In 6.sql, write a SQL query to find the names of schools (public or charter!) that reported a 100% graduation rate.

SELECT
    sch.name
FROM
"schools" AS sch
JOIN "graduation_rates" gra on gra.school_id = sch.id
WHERE
gra.graduated = 100
