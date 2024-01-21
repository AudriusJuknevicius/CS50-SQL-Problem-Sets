SELECT
    d.name,
    e.per_pupil_expenditure
FROM
    "districts" d
INNER JOIN
    "expenditures" e ON d.id = e.id
WHERE
    d.type = "Public School"
ORDER BY e.per_pupil_expenditure DESC
LIMIT 20
;
