-- SELECT
--     "name",
--     "City"
-- FROM
--     "schools"
-- HAVING COUNT("school_ID") > 2
-- ORDER BY COUNT("school_ID")
-- LIMIT 10
-- ;

SELECT
"city",
count("name") as q

FROM
"schools"
WHERE
    "type" = "Public School"
GROUP BY "city"
ORDER BY COUNT("q"), "city" DESC
LIMIT 10
;

