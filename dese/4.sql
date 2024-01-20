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
count("name") as [Number of Schools]

FROM
"schools"
GROUP BY city
ORDER BY "Number of Schools" DESC
LIMIT 10
;

