-- There are 180 whole degrees of latitude. In 10.sql, write a SQL query to determine how many points of latitude we have at least one data point for.
-- (Why might we not have data points for all latitudes?) - This is because of land masses and continents.
SELECT
    Count(DISTINCT (Latitude))
FROM
    "normals"
;
