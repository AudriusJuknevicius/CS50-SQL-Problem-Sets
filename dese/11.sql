SELECT
    "d"."name",
    "e"."per_pupil_expenditure"
FROM
    "districts" as dis
INNER JOIN "schools" as sch
INNER JOIN "graduation_rates" as gra ON
INNER JOIN "expenditures" as exp ON d.id = e.district_id
INNER JOIN "staff_evaluations" as sta

ORDER BY "e"."per_pupil_expenditure" DESC
LIMIT 10
;
