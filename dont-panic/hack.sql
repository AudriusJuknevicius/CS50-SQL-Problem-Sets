UPDATE "user_logs"
SET "new_password" = (
    SELECT "password"
    FROM "users"
    WHERE "username" = "admin"
)
WHERE 
