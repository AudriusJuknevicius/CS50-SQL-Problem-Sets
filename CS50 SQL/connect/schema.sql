CREATE TABLE "users" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "username" TEXT NOT NULL UNIQUE,
    "password" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "schools_and_universities" (
    "id" INTEGER,
    "school_pupil" TEXT NOT NULL,
    "pupil_affiliation_start" TEXT NOT NULL,
    "pupil_affiliation_end" TEXT,
    "pupil_degree_type" TEXT CHECK("pupil_degree_type" IN ('BA', 'BSc', 'MA', 'PhD')),
    "school_name" TEXT NOT NULL,
    "school_type" TEXT NOT NULL,
    "school_location" TEXT NOT NULL,
    "school_founded_year" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY("school_pupil") REFERENCES "users"("id")
);

CREATE TABLE "companies" (
    "id" INTEGER,
    "company_employee" TEXT NOT NULL,
    "employee_start_date" TEXT NOT NULL,
    "employee_finish_date" TEXT,
    "employee_title" TEXT NOT NULL,
    "company_name" TEXT NOT NULL,
    "company_industry" TEXT NOT NULL,
    "company_location" TEXT NOT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY("company_employee") REFERENCES "users"("id")
);






