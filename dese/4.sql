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
"name",
count("district_id")

FROM
"schools"
GROUP BY city
LIMIT 10
;

