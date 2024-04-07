-- In this SQL file, write (and comment!) the schema of your database, including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc. statements that compose it


-- `users` Represent users in the music database with their information.
CREATE TABLE `users` (
    `id` INT AUTO_INCREMENT,
    `first_name` VARCHAR(32) NOT NULL,
    `last_name` VARCHAR(32) NOT NULL,
    `username` VARCHAR(32) NOT NULL UNIQUE,
    `display_name` VARCHAR(32) NOT NULL,
    `email` VARCHAR(32) NOT NULL UNIQUE,
    `Password` VARCHAR(32) NOT NULL,
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
    `artist_name` VARCHAR(32),
    `title` VARCHAR(32) NOT NULL,
    `duration` INT NOT NULL,
    `album_id` INT,
    `lyrics` TEXT,
    `release_date` DATE,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`album_id`) REFERENCES `albums`(`id`),
    FOREIGN KEY(`artist_name`) REFERENCES `artists`(`artist_name`)
);

-- `playlists` created by a user.
CREATE TABLE `playlists` (
    `playlist_id` INT AUTO_INCREMENT,
    `playlist_name` VARCHAR(32) NOT NULL,
    `playlist_image` MEDIUMBLOB,
    `user_id` INT,
    `playlist_description` TEXT,
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `last_updated` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `public_or_private` ENUM(`public`, `private`) NOT NULL DEFAULT `public`,
    PRIMARY KEY(`playlist_id`),
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`)
);

-- playlist tracks
CREATE TABLE `playlist_tracks` (
    `playlist_id` INT,
    `track_id` INT,
    `track_order` INT,
    PRIMARY KEY (`playlist_id`, `track_id`),
    FOREIGN KEY (`playlist_id`) REFERENCES `playlists`(`playlist_id`),
    FOREIGN KEY (`track_id`) REFERENCES `tracks`(`id`)
);


-- Artists
CREATE TABLE `artists` (
    `artist_id` INT AUTO_INCREMENT,
    `artist_name` VARCHAR(32) NOT NULL,
    `artist_picture` MEDIUMBLOB,
    `biography` TEXT,
    PRIMARY KEY (`artist_id`)

);

-- Albums
CREATE TABLE `albums` (
    `album_id` INT AUTO_INCREMENT,
    `album_title` VARCHAR(32) NOT NULL,
    `release_date` DATE,
    `album_cover` MEDIUMBLOB,
    `album_genre` VARCHAR(32),
    `artist_id` INT,
    `album_description` TEXT,
    PRIMARY KEY (`album_id`),
    FOREIGN KEY (`artist_id`) REFERENCES `artists`(`artist_id`)

);


















-- Create indexes to speed common searches
CREATE INDEX `student_name_search` ON `students` (`first_name`, `last_name`);
CREATE INDEX `student_github_search` ON `students` (`github_username`);
CREATE INDEX `problem_name_search` ON `problems` (`name`);

_______________________________________________________________________________________________

