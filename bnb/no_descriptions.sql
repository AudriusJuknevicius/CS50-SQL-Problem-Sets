-- https://cs50.harvard.edu/sql/2024/psets/4/bnb/

CREATE VIEW "no_descriptions" as
SELECT
    "id",
    "property_type",
    "host_name",
    "acommodates",
    "bedrooms"
FROM
    "listings"
;
