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



--  Deleting rows with "relict" meteor nametype.

-- DELETE FROM "temp1"
-- WHERE "nametype" = "Relict"
-- ;

-- Updating the three numeric numbers to be rounded to the nearest hundreth.

-- UPDATE "temp1"
-- SET "mass" = ROUND("mass", 2),
--     "lat" = ROUND("lat", 2),
--     "long" = ROUND("long", 2);

-- Updating zero values to be displayed as "NULL".

-- UPDATE "temp1"
-- SET
-- "mass" = CASE WHEN "mass" = 0.0 or 0.00 THEN "NULL" ELSE "mass" END,
-- "lat" = CASE WHEN "lat" = 0.0 or 0.00 THEN "NULL" ELSE "lat" END,
-- "long" = CASE WHEN "long" = 0.0 or 0.00 THEN "NULL" ELSE "long" END
-- "year" = CASE WHEN "year" = "" THEN "NULL" ELSE "year" END
-- ;


CREATE TABLE "meteorites" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "class" TEXT,
    "mass" NUMERIC,
    "discovery" TEXT NOT NULL,
    "year"
)

