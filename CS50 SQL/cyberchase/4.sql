--write a query to find the titles of episodes that do not yet have a listed topic.

    SELECT
    title
    FROM
    "episodes"
    Where
    "topic" is NULL
    ;