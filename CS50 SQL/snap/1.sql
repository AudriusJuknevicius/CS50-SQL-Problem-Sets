-- https://cs50.harvard.edu/sql/2024/psets/5/snap/

-- EXPLAIN QUERY PLAN
SELECT "username" FROM "users"
WHERE "last_login_date" >= "2024-01-01";
