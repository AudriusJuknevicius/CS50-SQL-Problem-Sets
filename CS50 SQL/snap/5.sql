-- https://cs50.harvard.edu/sql/2024/psets/5/snap/


-- SELECT "user_id" FROM "friends" WHERE "friend_id" IN (
--     SELECT "id" from "users" WHERE "username" = "lovelytrust487" and "username" = "exceptionalinspiration482"
-- );

-- SELECT "

-- SELECT "id" from "users" where "username" = "lovelytrust487" and "username" = "exceptionalinspiration482"
-- UNION


-- SELECT "user_id" from "friends" where "friend_id" IN (
--     SELECT "id" from "users" where "username" = "lovelytrust487" or "username" = "exceptionalinspiration482"
-- );

SELECT "user_id" from "friends" where "friend_id" = (SELECT "id" from "users" where "username" = "lovelytrust487")
INTERSECT
SELECT "user_id" from "friends" where "friend_id" = (SELECT "id" from "users" where "username" = "exceptionalinspiration482")
