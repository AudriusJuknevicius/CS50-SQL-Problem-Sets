-- UPDATE "user_logs"
-- SET "new_password" = (
--     SELECT "password"
--     FROM "users"
--     WHERE "username" = "admin"
-- )
-- WHERE "user_logs" = (
--     SELECT "new_password"
--     FROM "user_logs"
--     WHERE "new_username" = "emily33"
-- )


