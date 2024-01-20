SELECT
    "city",
    "name"
    (SELECT
    count(Distinct "city")
    FROM
    "schools"
    )
FROM
    "schools"
LIMIT 10
;

