SELECT
    "city",
    count("name") as [Number of Schools]
FROM
"schools"
WHERE
    "type" = "Public School" and "Number of Schools" <= 3
GROUP BY city
ORDER BY "Number of Schools" DESC, "city" ASC

;
