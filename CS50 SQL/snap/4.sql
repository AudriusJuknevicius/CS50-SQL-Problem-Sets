-- https://cs50.harvard.edu/sql/2024/psets/5/snap/


-- Select "username" from "users" where "ID" in (
--     SELECT COUNT("to_user_id") as message_count from "messages"
--     GROUP BY "to_user_id"
-- )
-- LIMIT 1
-- ;

-- SELECT u."username"
-- FROM "users" u
-- JOIN (
--     SELECT "to_user_id"
--     FROM "messages"
--     GROUP BY "to_user_id"
--     ORDER BY COUNT(*) DESC
--     LIMIT 1
-- ) m ON u."id" = m."to_user_id";

-- SELECT "username" from "users" where "id" in (
--     SELECT "to_user_id" from (
--         SELECT "to_user_id", COUNT(*) as topsms from "messages"
--             JOIN "users" on "users"."id" = "messages"."to_user_id"
--                 WHERE "sent_timestamp" BETWEEN '2023-01-01 00:00:00' AND '2023-12-31 23:59:59'
--                     GROUP BY "to_user_id", "username"
--                         ORDER BY topsms DESC, "username" ASC
--                             LIMIT 1
-- ))
-- ;

SELECT "username" from "users" where "id" in (
    SELECT "to_user_id" from (
        SELECT "to_user_id", COUNT("messages"."id") as topsms from "messages"
            JOIN "users" on "users"."id" = "messages"."to_user_id"
                -- WHERE "sent_timestamp" BETWEEN '2023-01-01 00:00:00' AND '2023-12-31 23:59:59'
                    GROUP BY "to_user_id", "username"
                        ORDER BY topsms DESC, "username" ASC
                            LIMIT 1
))
;

