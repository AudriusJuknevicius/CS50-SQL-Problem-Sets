-- SELECT
--     DISTINCT city,
--     COUNT(MAX("name"))
-- FROM
--     "schools"
-- LIMIT 10
--     ;

SELECT
    count(Distinct city)
FROM
    "schools"
WHERE
    "
LIMIT 10
;

