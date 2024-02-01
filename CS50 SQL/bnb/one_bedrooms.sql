-- https://cs50.harvard.edu/sql/2024/psets/4/bnb/

CREATE VIEW "one_bedrooms" AS
SELECT
    "id",
    "property_type",
    "host_name",
    "accommodates"
FROM
    "listings"
WHERE
    "bedrooms" = 1
;
