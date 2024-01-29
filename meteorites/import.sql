-- Importing the data into a temporary folder in order to clean it before importing it into a normal table.

CREATE TABLE "temp1" (
    "name" TEXT,
    "id" TEXT,
    "nametype" TEXT,
    "class" TEXT,
    "mass" TEXT,
    "discovery" TEXT,
    "year" TEXT,
    "lat" TEXT,
    "long" TEXT
);

.import --csv meteorites.csv temp1


--  Deleting rows with "relict" meteor nametype.

DELETE FROM "temp1"
WHERE "nametype" = "Relict"
;

-- Updating the three numeric numbers to be rounded to the nearest hundreth.

UPDATE "temp1"
SET "mass" = ROUND("mass", 2),
    "lat" = ROUND("lat", 2),
    "long" = ROUND("long", 2);

-- Updating zero values to be displayed as "NULL".

UPDATE "temp1"
SET
"mass" = CASE WHEN "mass" = 0.0 or 0.00 THEN "NULL" ELSE "mass" END,
"lat" = CASE WHEN "lat" = 0.0 or 0.00 THEN "NULL" ELSE "lat" END,
"long" = CASE WHEN "long" = 0.0 or 0.00 THEN "NULL" ELSE "long" END
"year" = CASE WHEN "year" = "" THEN "NULL" ELSE "year" END
;


-- Creating the table with the right data types and constraints.

CREATE TABLE "meteorites" (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT NOT NULL,
    "nametype" TEXT,
    "class" TEXT,
    "mass" NUMERIC,
    "discovery" TEXT,
    "year" TEXT,
    "lat" NUMERIC,
    "long" NUMERIC
);


-- Moving the cleaned data minus the ID number, letting Sqlite make new IDs dependant on the order by statement.

INSERT INTO "meteorites" ("name", "nametype", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "nametype", "class", "mass", "discovery", "year", "lat", "long" FROM "temp1"
ORDER BY "year" ASC, "name" ASC
;
