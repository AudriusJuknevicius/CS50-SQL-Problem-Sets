-- Importing the data into a temporary folder in order to clean it before importing it into a normal table.

-- .import --csv meteorites.csv temp1


-- CREATE TABLE "temp2" (
--     "id" INTEGER,
--     "name" TEXT NOT NULL,
--     "class" TEXT,
--     "mass" NUMERIC,
--     "discovery" TEXT NOT NULL,
--     "year"
-- )




-- DELETE FROM "temp1"
-- WHERE "nametype" = "Relict"
-- ;

-- UPDATE "temp1"
-- SET "mass" = ROUND("mass", 2),
--     "lat" = ROUND("lat", 2),
--     "long" = ROUND("long", 2);

