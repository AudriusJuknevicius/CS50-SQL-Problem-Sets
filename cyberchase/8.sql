--write a query that counts the number of episodes released in the last 6 years, from 2018 to 2023, inclusive.

-- SELECT
--     count("air_date")
-- FROM "episodes"
-- where
-- "air_date" between "2018-01-01" and "2023-12-31"
-- ;


SELECT
    count("air_date")
FROM "episodes"
where
"air_date" like "2018%" and "air_date" like "2019%" and "air_date" like "2020%" and "air_date" like "2021%" and "air_date" like "2022%" and "air_date" like "2023%"
;

