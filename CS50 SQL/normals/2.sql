-- write a SQL query to find the normal temperature of the deepest sensor near the Gulf of Maine, at the same coordinate above.
Select
    "225m"
FROM "normals"
Where
"latitude" = 42.5 and "longitude" = -69.5
;
