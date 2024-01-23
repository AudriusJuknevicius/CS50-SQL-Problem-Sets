CREATE TABLE "users" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "username" TEXT NOT NULL UNIQUE,
    "password" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "schools and universities" (
    "id" INTEGER,
    "school_name" TEXT NOT NULL,
    "school_type" TEXT NOT NULL,
    "school_location" TEXT NOT NULL,
    "school_founded_year" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY("passenger_id") REFERENCES "passengers"("id"),
    FOREIGN KEY("flight_id") REFERENCES "flights"("id")
);

CREATE TABLE "companies" (
    "id" INTEGER,
    "company_name" TEXT NOT NULL,
    "company_industry" TEXT NOT NULL,
    "company_location" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "flights" (
    "id" INTEGER,
    "flight_number" INTEGER,
    "airline_name" TEXT,
    "concourse_departure_name" TEXT,
    "concourse_destination_name" TEXT,
    "departure_time" TEXT,
    "arrival_time" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY("airline_name") REFERENCES "airlines"("id"),
    FOREIGN KEY("concourse_departure_name") REFERENCES "airlines" ("id"),
    FOREIGN KEY("concourse_destination_name") REFERENCES "airlines" ("id")
);



