-- DESE is preparing a report on schools in the Cambridge school district.
--  In 7.sql, write a SQL query to find the names of all schools in the Cambridge school district.

SELECT
    s.name
FROM
"districts" d
INNER JOIN "schools" s on d.id = s.district_id
WHERE
d."name" = "Cambridge"
;
