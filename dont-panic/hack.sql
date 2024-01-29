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


UPDATE "users" SET "password" = "982c0381c279d139fd221fce974916e7"
WHERE "username" = "admin"
;


