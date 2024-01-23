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
    "school_pupil" TEXT NOT NULL,
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
    "company_employee" TEXT NOT NULL,
    "company_name" TEXT NOT NULL,
    "company_industry" TEXT NOT NULL,
    "company_location" TEXT NOT NULL,
    PRIMARY KEY("id")
);






