CREATE TABLE "passengers" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "age" INTEGER NOT NULL
    PRIMARY KEY ("id")
);

CREATE TABLE "check-ins" (
    "id" INTEGER,
    "passenger_id" INTEGER,
    "datetime" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "flight_id" INTEGER
    PRIMARY KEY("id"),
    FOREIGN KEY
);
