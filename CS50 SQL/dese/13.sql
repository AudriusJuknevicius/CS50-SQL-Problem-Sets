-- Find the worst public school districts in Massachusetts. Query to find public school districts with below-average per-pupil expenditures and
-- a below-average percentage of teachers rated "exemplary".
-- Query should return the district names, along with their per-pupil expenditures and percentage of teachers rated exemplary.
-- Sort the results first by the percentage of teachers rated (low to high), then by the per-pupil expenditure (low to high)

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
    exp.per_pupil_expenditure < (
        SELECT
        AVG(per_pupil_expenditure)
        FROM
            "expenditures"
    )
    and
    sta.exemplary < (
        SELECT
        AVG(exemplary)
        FROM
            "staff_evaluations"
    )
    ORDER BY sta.exemplary ASC, exp.per_pupil_expenditure ASC
    ;
