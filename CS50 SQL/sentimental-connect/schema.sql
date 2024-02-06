-- https://cs50.harvard.edu/sql/2024/psets/6/connect/


CREATE TABLE `users` (
    `id` INT AUTO_INCREMENT,
    `first_name` VARCHAR(34) NOT NULL,
    `last_name` VARCHAR(34) NOT NULL,
    `username` VARCHAR(34) NOT NULL UNIQUE,
    `password` VARCHAR(34) NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE `schools_and_universities` (
    `id` INT AUTO_INCREMENT,
    `school_pupil` INT NOT NULL,
    `pupil_affiliation_start` DATE NOT NULL,
    `pupil_affiliation_end` DATE,
    `pupil_degree_type` ENUM('BA', 'BSc', 'MA', 'PhD'),
    `school_name` VARCHAR(34) NOT NULL,
    `school_type` ENUM('Primary', 'Secondary', 'Higher Education') NOT NULL,
    `school_location` VARCHAR(34) NOT NULL,
    `school_founded_year` DATE,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`school_pupil`) REFERENCES `users`(`id`)
);

CREATE TABLE `companies` (
    `id` INT AUTO_INCREMENT,
    `company_employee` INT NOT NULL,
    `employee_start_date` DATE NOT NULL,
    `employee_finish_date` DATE,
    `employee_title` VARCHAR(34) NOT NULL,
    `company_name` VARCHAR(34) NOT NULL UNIQUE,
    `company_industry` ENUM('Technology', 'Education', 'Business') NOT NULL,
    `company_location` VARCHAR(34),
    PRIMARY KEY(`id`),
    FOREIGN KEY(`company_employee`) REFERENCES `users`(`id`)
);

CREATE TABLE `connections` (
    `id` INT AUTO_INCREMENT,
    `users_id` INT,
    `mutual_status` ENUM('Yes', 'No'),
    PRIMARY KEY(`id`),
    FOREIGN KEY(`users_id`) REFERENCES `users`(`id`)
);

