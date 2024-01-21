SELECT
    d.name,
    "e.per_pupil_expenditure"
FROM
    "districts" as d
INNER JOIN
    "expenditures" as e ON d.id = e.district_Id
WHERE
    d.type = "Public School"
ORDER BY e.per_pupil_expenditure DESC
LIMIT 20
;
