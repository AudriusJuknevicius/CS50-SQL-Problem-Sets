SELECT
    "city",
    count("id") as [Number of Schools]
FROM
"schools"
WHERE
    "type" = "Public School"
HAVING
"Number of Schools" <= 3
GROUP BY city
ORDER BY "Number of Schools" DESC, "city" ASC

;
