SELECT
    DISTINCT city,
    COUNT(MAX("name"))
FROM
    "schools"
LIMIT 10
    ;
