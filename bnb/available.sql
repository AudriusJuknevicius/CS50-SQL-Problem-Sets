-- https://cs50.harvard.edu/sql/2024/psets/4/bnb/

CREATE VIEW "available" AS
SELECT
    l.id,
    l.property_type,
    l.host_name,
    a.date
FROM "listings" as l
JOIN "availabilities" as a ON l.id = a.listing_id
WHERE
    a.available = "TRUE"
;

