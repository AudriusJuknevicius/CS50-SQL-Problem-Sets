SELECT
    DISTINCT "city"
(SELECT
    count("name")
    FROM
    "schools"
    )
FROM
    "schools"
LIMIT 10
;

