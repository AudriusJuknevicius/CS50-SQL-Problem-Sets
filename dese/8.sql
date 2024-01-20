SELECT Count(*)
FROM(
SELECT
    d.name,
    e.pupils
FROM
"districts" d
INNER JOIN "schools" s ON d.id. = s.district.id
INNER JOIN "expenditures" e on s.district_id = e.district_id
ORDER BY e.pupils DESC
)
;
