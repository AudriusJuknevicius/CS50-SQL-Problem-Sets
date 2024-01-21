SELECT
    *
FROM
    "districts" as dis
INNER JOIN "schools" as sch ON dis.id = sch.id
INNER JOIN "graduation_rates" as gra ON sch.id = gra.id
INNER JOIN "expenditures" as exp ON dis.id = exp.district_id
INNER JOIN "staff_evaluations" as sta ON sta.id = dis.id

LIMIT 50
;
