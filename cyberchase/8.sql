--write a query that counts the number of episodes released in the last 6 years, from 2018 to 2023, inclusive.
SELECT
    count("air_date")
FROM "episodes"
where
"air_date" between "2018-01-01" and "2023-12-31"
;

