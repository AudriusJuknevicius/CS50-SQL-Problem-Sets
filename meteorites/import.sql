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
    "long" TEXT,
    PRIMARY KEY("id")
);

.import --csv --skip 1 meteorites.csv temp1


--  Deleting rows with "relict" meteor nametype.

DELETE FROM "temp1"
WHERE "nametype" = "Relict"
;

-- Updating zero values to be displayed as "NULL".

UPDATE "temp1"
SET
"mass" = CASE WHEN "mass" = "" THEN "NULL" ELSE "mass" END,
"lat" = CASE WHEN "lat" = "" THEN "NULL" ELSE "lat" END,
"long" = CASE WHEN "long" = "" THEN "NULL" ELSE "long" END,
"year" = CASE WHEN "year" = "" THEN "NULL" ELSE "year" END
;

-- Updating the three numeric numbers to be rounded to the nearest hundreth.

UPDATE "temp1"
SET "mass" = ROUND("mass", 2),
    "lat" = ROUND("lat", 2),
    "long" = ROUND("long", 2);


-- Creating the table with the right data types and constraints.

CREATE TABLE "meteorites" (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT NOT NULL,
    "class" TEXT,
    "mass" NUMERIC,
    "discovery" TEXT,
    "year" TEXT,
    "lat" NUMERIC,
    "long" NUMERIC
);


-- Moving the cleaned data minus the ID number, letting Sqlite make new IDs dependant on the order by statement.

INSERT INTO "meteorites" ("name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "class", "mass", "discovery", "year", "lat", "long" FROM "temp1"
ORDER BY "year" ASC, "name" ASC
;


