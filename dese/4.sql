SELECT
    DISTINCT city,
    count("name")
FROM
    "schools"
LIMIT 10
    ;
