SELECT
    s.name
FROM
"districts" d
INNER JOIN "schools" s on d.id = s.district_id
WHERE
d."name" = "Cambridge"
;
