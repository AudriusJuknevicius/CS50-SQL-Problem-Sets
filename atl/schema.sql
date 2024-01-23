CREATE TABLE "passengers" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "age" INTEGER NOT NULL
    PRIMARY KEY("id")
);

CREATE TABLE "check-ins" (
    "id" INTEGER,
    "passenger_id" INTEGER,
    "datetime" TEXT,
    "flight_id" INTEGER
    PRIMARY KEY("id"),
    FOREIGN KEY("passenger_id") REFERENCES "passengers"("id"),
    FOREIGN KEY("flight_id") REFERENCES "flights"("id")
);

CREATE TABLE "airlines" (
    "id" INTEGER,
    "airline" TEXT,
    "concourse" TEXT
);

CREATE TABLE "flights" (
    "id" INTEGER,
    "flight_number" INTEGER,
    "airline_name" TEXT,
    "concourse_departure_name" TEXT,
    "concourse_destination_name" TEXT,
    "departure_time" TEXT,
    "arrival_time" TEXT
    PRIMARY KEY("id"),
    FOREIGN KEY("airline_name") REFERENCES "airlines"("id"),
    FOREIGN KEY("concourse_departure_name") REFERENCES "airlines" ("id"),
    FOREIGN KEY("concourse_destination_name") REFERENCES "airlines" ("id")
);
