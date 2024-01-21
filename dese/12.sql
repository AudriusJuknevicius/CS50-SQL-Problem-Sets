-- SELECT
--     dis.name,
--     exp.per_pupil_expenditure,
--     sta.
-- FROM
--     "districts" as dis
-- INNER JOIN "staff_evaluations" as sta ON dis.id = sta.district_id
-- INNER JOIN "expenditures" as exp ON dis.id = exp.district_id
-- INNER JOIN "schools" as sch ON dis.id = sch.district_id
-- INNER JOIN "graduation_rates" as gra ON sch.id = gra.school_id
-- WHERE
--     sch.type = "Public School"
-- ORDER BY exp.per_pupil_expenditure DESC, sch.name ASC
-- ;

SELECT
*
FROM
"staff_evaluations"
;
