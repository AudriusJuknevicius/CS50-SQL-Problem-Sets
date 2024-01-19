--list the titles of episodes from season 6 (2008) that were released early, in 2007.
SELECT
    title
FROM
    "episodes"
WHERE
"season" = 6 and "air_date" is not "2008%"
;
