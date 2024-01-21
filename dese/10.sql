SELECT
    d.name,
    e.per_pupil_expenditure
FROM
    "districts" d
INNER JOIN
    "expenditures" e ON d.id = e.id
    ;
