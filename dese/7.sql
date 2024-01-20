SELECT
    d."name"
FROM
"districts" d
NATURAL JOIN "schools" s 
WHERE
d."name" = "Cambridge"
;
