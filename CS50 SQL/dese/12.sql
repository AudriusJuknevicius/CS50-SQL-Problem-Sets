-- A parent asks you for advice on finding the best public school districts in Massachusetts.
-- In 12.sql, write a SQL query to find public school districts with above-average per-pupil expenditures and an above-average percentage of teachers rated “exemplary”.
-- Your query should return the districts’ names, along with their per-pupil expenditures and percentage of teachers rated exemplary.
-- Sort the results first by the percentage of teachers rated exemplary (high to low), then by the per-pupil expenditure (high to low).

SELECT
    DISTINCT dis.name,
    exp.per_pupil_expenditure,
    sta.exemplary
FROM
    "districts" as dis
INNER JOIN "staff_evaluations" as sta ON dis.id = sta.district_id
INNER JOIN "expenditures" as exp ON dis.id = exp.district_id
INNER JOIN "schools" as sch ON dis.id = sch.district_id
-- INNER JOIN "graduation_rates" as gra ON sch.id = gra.school_id
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
    ORDER BY sta.exemplary DESC, exp.per_pupil_expenditure DESC
    ;


-- COLUMNS:

-- PUBLIC SCHOOL DISTRICT / Above Average Per Pupil Expenditures / Above Average Percentage of Teachers rated exemplary
