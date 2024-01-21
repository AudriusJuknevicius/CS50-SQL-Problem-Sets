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

SELECT
    *
FROM
    "districts" as dis
INNER JOIN "staff_evaluations" as sta ON dis.id = sta.district_id
INNER JOIN "expenditures" as exp ON dis.id = exp.district_id
INNER JOIN "schools" as sch ON dis.id = sch.district_id
INNER JOIN "graduation_rates" as gra ON sch.id = gra.school_id

LIMIT 50
;
