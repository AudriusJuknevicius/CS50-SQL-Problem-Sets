-- https://cs50.harvard.edu/sql/2024/psets/4/bnb/

SELECT
    l.id,
    l.property_type,
    l.host_name,
    COUNT(a.listing_id) as days_vacant
FROM
    "listings" as l
JOIN "availabilities" as a on l.id = a.listing_id
WHERE
    a.available = TRUE and date = between  "2023-06-01"  "2023-06-30"
GROUP BY l.id
;
