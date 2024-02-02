-- https://cs50.harvard.edu/sql/2024/psets/5/snap/

-- EXPLAIN QUERY PLAN
-- SELECT "expires_timestamp" FROM "messages"
-- WHERE "id" IN (
-- SELECT "from_user_id"
-- FROM "messages"
-- WHERE "id" = 151)
-- ;

-- SELECT "expires_timestamp" from "messages" WHERE "from_user_id" IN (
--         SELECT "from_user_id" from "messages" where
-- )

-- EXPLAIN QUERY PLAN
SELECT "expires_timestamp" from "messages" where "id" = 151;


