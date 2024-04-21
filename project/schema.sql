-- https://cs50.harvard.edu/sql/2024/project/#entity-relationship-diagram
-- In this SQL file, write (and comment!) the schema of your database, including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc. statements that compose it


-- Hearify Schema

-- Below are the tables, index and view statements that are responsible for the hearify schema.


-- `users` Represent users in the music database with their information.
CREATE TABLE `users` (
    `id` INT AUTO_INCREMENT,
    `first_name` VARCHAR(32) NOT NULL,
    `last_name` VARCHAR(32) NOT NULL,
    `username` VARCHAR(32) NOT NULL UNIQUE,
    `display_name` VARCHAR(32) NOT NULL,
    `email` VARCHAR(64) NOT NULL UNIQUE,
    `password` VARCHAR(32) NOT NULL,
    `registration_date` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `date_of_birth` DATE,
    `profile_image` MEDIUMBLOB,
    PRIMARY KEY(`id`)
);

-- Represents tracks that a user has, with additional personal information such as play count etc.
CREATE TABLE `user_tracks` (
    `user_id` INT,
    `track_id` INT,
    `date_added` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `is_favourite` INT DEFAULT 0,
    `play_count` INT DEFAULT 0,
    `track_title` TEXT NOT NULL,
    PRIMARY KEY(`user_id`, `track_id`),
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`track_id`) REFERENCES `tracks`(`id`),
    FOREIGN KEY(`track_title`) REFERENCES `tracks`(`title`)
);

-- Represents the songs in the database, with further information such as their specific duration.
CREATE TABLE `tracks` (
    `id` INT AUTO_INCREMENT,
    `artist_id` INT,
    `artist_name` VARCHAR(32),
    `title` VARCHAR(32) NOT NULL,
    `duration` INT NOT NULL,
    `album_id` INT,
    `lyrics` TEXT,
    `release_date` DATE,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`album_id`) REFERENCES `albums`(`id`),
    FOREIGN KEY(`artist_id`) REFERENCES `artists`(`artist_id`)
    FOREIGN KEY(`artist_name`) REFERENCES `artists`(`artist_name`)
);

-- Represents individual playlists created by the user.
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

-- Represents tracks grouped together by user's preferences.
CREATE TABLE `playlist_tracks` (
    `playlist_id` INT,
    `track_id` INT,
    `track_order` INT,
    PRIMARY KEY (`playlist_id`, `track_id`),
    FOREIGN KEY (`playlist_id`) REFERENCES `playlists`(`playlist_id`),
    FOREIGN KEY (`track_id`) REFERENCES `tracks`(`id`)
);


-- Represents artists and their profiles.
CREATE TABLE `artists` (
    `artist_id` INT AUTO_INCREMENT,
    `artist_name` VARCHAR(32) NOT NULL,
    `artist_picture` MEDIUMBLOB,
    `biography` TEXT,
    PRIMARY KEY (`artist_id`)

);

-- Shows an album which is a collection of songs produced by an artist.
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



-- Database index to speed up queries and searches.
CREATE INDEX `username_search` ON `users` (`username`);
CREATE INDEX `song_title_search` ON `tracks` (`title`);
CREATE INDEX `artist_title_search` ON `artists` (`artist_name`);
CREATE INDEX `album_title_search` ON `albums` (`album_title`);


-- A view to find the top 10 played tracks of all time.
CREATE VIEW `top10_tracks` AS
SELECT
    t.id,
    t.artist_name,
    t.title,
    t.duration,
    SUM(u.play_count) AS times_listened
FROM tracks AS t
JOIN user_tracks AS u ON t.id = u.track_id
GROUP BY t.id, t.artist_name, t.title, t.duration
ORDER BY times_listened DESC
LIMIT 10
;



_______________________________________________________________________________________________

