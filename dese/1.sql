SELECT
    COUNT(*)
FROM
    "schools"
WHERE
    "state" = "MA" and "type" = "Public School" or "type" = "Charter School"
    ;

