SELECT
    "name",
    "City"
FROM
    "schools"
(SELECT
    count("name")
    FROM
    "schools"
    )
LIMIT 10
;

