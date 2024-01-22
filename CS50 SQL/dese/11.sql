-- Is there a relationship between school expenditures and graduation rates?
--  In 11.sql, write a SQL query to display the names of schools, their per-pupil expenditure, and their graduation rate.
--   Sort the schools from greatest per-pupil expenditure to least.
--  If two schools have the same per-pupil expenditure, sort by school name.


-- SELECT
--     *
-- FROM
--     "districts" as dis
-- INNER JOIN "schools" as sch ON dis.id = sch.id
-- INNER JOIN "graduation_rates" as gra ON sch.id = gra.id
-- INNER JOIN "expenditures" as exp ON dis.id = exp.district_id
-- INNER JOIN "staff_evaluations" as sta ON sta.id = dis.id

-- LIMIT 50
-- ;
-- SELECT
--     *
-- FROM
--     "districts" as dis
-- INNER JOIN "schools" as sch ON dis.id = sch.district_id
-- INNER JOIN "graduation_rates" as gra ON sch.id = gra.school_id
-- INNER JOIN "expenditures" as exp ON sch.district_id = exp.district_id
-- INNER JOIN "staff_evaluations" as sta ON exp.district_id = sta.district_id

-- LIMIT 50
-- ;
-- Time to face my fears of joins, actually started comprehending it properly below.

SELECT
    sch.name,
    exp.per_pupil_expenditure,
    gra.graduated
FROM
    "districts" as dis
-- INNER JOIN "staff_evaluations" as sta ON dis.id = sta.district_id
INNER JOIN "expenditures" as exp ON dis.id = exp.district_id
INNER JOIN "schools" as sch ON dis.id = sch.district_id
INNER JOIN "graduation_rates" as gra ON sch.id = gra.school_id
ORDER BY exp.per_pupil_expenditure DESC, sch.name ASC
;
