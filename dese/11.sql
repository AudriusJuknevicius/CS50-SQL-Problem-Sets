SELECT
    "d"."name",
    "e"."per_pupil_expenditure"
FROM
    "districts" as d
INNER JOIN
    "graduation_rates" as g ON
INNER JOIN
    "expenditures" as e ON d.id = e.district_id
ORDER BY "e"."per_pupil_expenditure" DESC
LIMIT 10
;
