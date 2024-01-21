SELECT
    dis.name,
    exp.per_pupil_expenditure,
    sta.exemplary
FROM
    "districts" as dis
INNER JOIN "staff_evaluations" as sta ON dis.id = sta.district_id
INNER JOIN "expenditures" as exp ON dis.id = exp.district_id
INNER JOIN "schools" as sch ON dis.id = sch.district_id
INNER JOIN "graduation_rates" as gra ON sch.id = gra.school_id
WHERE
    sch.type = "Public School" and
    exp.per_pupil_expenditure > (
        SELECT
        AVG(per_pupil_expenditure)
        FROM
            "expenditures"
    )
    and
    sta.exemplary > (
        SELECT
        AVG(exemplary)
        FROM
            "staff_evaluations"
    )
    
LIMIT 50
;


-- COLUMNS:

-- PUBLIC SCHOOL DISTRICT / Above Average Per Pupil Expenditures / Above Average Percentage of Teachers rated exemplary
