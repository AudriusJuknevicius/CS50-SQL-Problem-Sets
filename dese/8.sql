SELECT
    d.name,
    e.pupils
FROM
"districts" d
INNER JOIN "expenditures" e on d.id = e.district_id
ORDER BY e.pupils DESC
;
