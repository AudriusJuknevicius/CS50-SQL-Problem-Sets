SELECT
    s.name,
    e.pupils
FROM
"schools" s
INNER JOIN "expenditures" e on s.district_id = e.district_id
;
