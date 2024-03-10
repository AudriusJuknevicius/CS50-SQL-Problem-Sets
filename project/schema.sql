-- In this SQL file, write (and comment!) the schema of your database, including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc. statements that compose it


-- Represent users in the music database.
CREATE TABLE `users` (
    `id` INT AUTO_INCREMENT,
    `first_name` VARCHAR(24) NOT NULL,
    `last_name` VARCHAR(24) NOT NULL,
    `username` VARCHAR(24) NOT NULL UNIQUE,
    `display_name` VARCHAR(24) NOT NULL,
    `email` VARCHAR(24) NOT NULL UNIQUE,
    `Password` VARCHAR(24) NOT NULL,
    `registration_date` DATE,
    `date_of_birth` DATE,
    `profile_image` LONGBLOB,
    PRIMARY KEY(`id`)
);

-- Represent problems in the course
CREATE TABLE `user_tracks` (
    `user_id` INT,
    `problem_set` INTEGER NOT NULL,
    `name` TEXT NOT NULL,
    PRIMARY KEY(`user_id`)
);

CREATE TABLE `tracks` (
    `id` INTEGER,
    `first_name` TEXT NOT NULL,
    `last_name` TEXT NOT NULL,
    PRIMARY KEY(`id`)
);

-- Represent instructors in the course
CREATE TABLE `playlists` (
    `id` INTEGER,
    `first_name` TEXT NOT NULL,
    `last_name` TEXT NOT NULL,
    PRIMARY KEY(`id`)
);

-- Represent submissions of problems by students
CREATE TABLE `artists` (
    `id` INTEGER,
    `student_id` INTEGER,
    `problem_id` INTEGER,
    `submission_path` TEXT NOT NULL,
    `correctness` NUMERIC NOT NULL CHECK(`correctness` BETWEEN 0 AND 1),
    `timestamp` NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`student_id`) REFERENCES `students`(`id`),
    FOREIGN KEY(`problem_id`) REFERENCES `problems`(`id`)
);

-- Represent individual comments left by instructors
CREATE TABLE `albums` (
    `id` INTEGER,
    `instructor_id` INTEGER,
    `submission_id` INTEGER,
    `contents` TEXT NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`submission_id`) REFERENCES `submissions`(`id`)
    FOREIGN KEY(`instructor_id`) REFERENCES `instructors`(`id`)
);


-- Create indexes to speed common searches
CREATE INDEX `student_name_search` ON `students` (`first_name`, `last_name`);
CREATE INDEX `student_github_search` ON `students` (`github_username`);
CREATE INDEX `problem_name_search` ON `problems` (`name`);

_______________________________________________________________________________________________

