-- SELECT
--     DISTINCT city,
--     COUNT(MAX("name"))
-- FROM
--     "schools"
-- LIMIT 10
--     ;

SELECT
    "name",
    count(Distinct city)
FROM
    "schools"
LIMIT 10
;

