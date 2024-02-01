-- https://cs50.harvard.edu/sql/2024/psets/4/bnb/

-- CREATE VIEW "frequently_reviewed" AS
SELECT
    l.id,
    l.property_type,
    l.host_name,
    COUNT(r.comments) as reviews
FROM "listings" as l
JOIN "reviews" as r ON l.id = r.listing_id
GROUP BY r.comments
ORDER BY r.comments DESC
LIMIT 100
;

