-- write a SQL query to find the hometown (including city, state, and country) of Jackie Robinson.
SELECT
    birth_country,
    birth_state,
    birth_city
FROM
    "players"
WHERE
    "first_name" = "Jackie" and "last_name" = "Robinson"
    ;
