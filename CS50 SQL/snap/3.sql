-- https://cs50.harvard.edu/sql/2024/psets/5/snap/


-- SELECT "username" from "users" where "ID" IN (
--     SELECT MAX("to_user_id") from "messages" where "from_user_id" = "creativewisdom377"
--     GROUP BY "id"
--     ORDER BY "to_user_id" DESC
--     LIMIT 3
-- )
-- ;

-- SELECT "username" from "users" where "ID" IN (
--     SELECT "to_user_id" from "messages" where "from_user_id" IN(
--         select "id" from "users" where "username" = "creativewisdom377"
--     )
-- )
-- ;
-- Select "username" from "users" where "id" IN (
--     Select "to_user_id" from "messages" where "from_user_id" in (
--         Select "id" from "users" where "username" = "creativewisdom377"
-- ))
-- ORDER BY "sent_timestamp" DESC
-- LIMIT 3
-- ;

-- Select "id" from "users" where "username" IN (
--     select "to_user_id" from "messages" where "from_user_id" in (
--         Select "id" from "users" where "username" = "creativewisdom377"
--     )
-- ORDER BY "sent_timestamp" DESC
-- LIMIT 3)
-- ;

-- SELECT "id" FROM "users" WHERE "id" IN (
--     SELECT "to_user_id" FROM "messages" WHERE "from_user_id" IN (
--         SELECT "id" FROM "users" WHERE "username" = 'creativewisdom377'
--     )
--     ORDER BY "sent_timestamp" DESC
--     LIMIT 3
-- );

SELECT "id" FROM "users" WHERE "id" IN (
    SELECT "to_user_id" FROM (
        SELECT "to_user_id", COUNT(*) as message_count FROM "messages"
        WHERE "from_user_id" IN (
            SELECT "id" FROM "users" WHERE "username" = 'creativewisdom377'
        )
        GROUP BY "to_user_id"
        ORDER BY message_count DESC
        LIMIT 3
    )
);
