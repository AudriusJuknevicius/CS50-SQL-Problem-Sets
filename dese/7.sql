SELECT
    "name"
FROM
"districts"
JOIN "schools" on "id"."id" = "district_id"."id"
WHERE
"name" = "Cambridge"
;
