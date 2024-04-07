-- In this SQL file, write (and comment!) the schema of your database, including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc. statements that compose it


-- `users` Represent users in the music database with their information.
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
    `profile_image` MEDIUMBLOB,
    PRIMARY KEY(`id`)
);

-- `user_tracks` Represents tracks that a user has, with additional personal information such as play count etc.
CREATE TABLE `user_tracks` (
    `user_id` INT,
    `track_id` INT,
    `date_added` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `is_favourite` INT DEFAULT 0,
    `play_count` INT DEFAULT 0,
    `name` TEXT NOT NULL,
    PRIMARY KEY(`user_id`, `track_id`),
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`track_id`) REFERENCES `tracks`(`id`)
);

-- `tracks` Represents the songs in the database, with further information such as their specific duration.
CREATE TABLE `tracks` (
    `id` INT AUTO_INCREMENT,
    `artist_name` VARCHAR(34),
    `title` VARCHAR(34) NOT NULL,
    `duration` INT NOT NULL,
    `album_id` INT,
    `lyrics` TEXT,
    `release_date`,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`album_id`) REFERENCES `albums`(`id`),
    FOREIGN KEY(`artist_name`) REFERENCES `artists`(`artist_name`)
);

-- `playlists` created by a user.
CREATE TABLE `playlists` (
    `playlist_id` INT AUTO_INCREMENT,
    `playlist_name` VARCHAR(34),
    `playlist_image` MEDIUMBLOB,
    `user_id` INT,
    `description` TEXT,
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `last_updated` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `public_or_private` ENUM(`public`, `private`) NOT NULL,
    PRIMARY KEY(`playlist_id`),
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`)
);

-- playlist tracks
CREATE TABLE `playlist_tracks` (
    `playlist_id` INT,
    `track_id` INT,
    `track_order` INT,
    PRIMARY KEY (`playlist_id, `track_id`)
    
);


-- Represent submissions of problems by students
CREATE TABLE `artists` (


);

-- Represent individual comments left by instructors
CREATE TABLE `albums` (

);


















-- Create indexes to speed common searches
CREATE INDEX `student_name_search` ON `students` (`first_name`, `last_name`);
CREATE INDEX `student_github_search` ON `students` (`github_username`);
CREATE INDEX `problem_name_search` ON `problems` (`name`);

_______________________________________________________________________________________________

