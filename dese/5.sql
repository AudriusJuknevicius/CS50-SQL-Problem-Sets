SELECT
"city",
count("name") as [Number of Schools],
"name"

FROM
"schools"
WHERE
    "type" = "Public School"
GROUP BY city
ORDER BY "Number of Schools" DESC, "city" ASC

;
