-- https://cs50.harvard.edu/sql/2024/project/#entity-relationship-diagram
-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database


-- Returns each playlist's name along with the total number of tracks in each, sorted
-- in a descending order by the number of tracks.
SELECT
    p.playlist_name,
    COUNT(pt.track_id) AS total_tracks
FROM playlists AS p
JOIN playlist_tracks AS pt ON p.playlist_id = pt.playlist_id
GROUP BY p.playlist_id, p.playlist_name
ORDER BY total_tracks DESC
;

-- Find top 5 users who have the most tracks.
SELECT
    u.id,
    display_name,
    COUNT(ut.track_id) AS total_tracks_added
FROM users AS u
JOIN user_tracks AS UT ON u.id = ut.user_id
GROUP BY u.id
ORDER BY total_tracks_added DESC
LIMIT 5
;


-- Find top 10 tracks that have been added to the most playlists, also includes number of playlists each track is in and total play count
-- across all of the playlists. Added a minimum requirement of a track being in 5 playlists.

SELECT
    t.id AS track_id,
    t.title,
    COUNT(pt.playlist_id) AS playlists_count,
    SUM(ut.play_count) AS total_play_count
FROM tracks AS t
JOIN playlist_tracks AS pt ON t.id = pt.track_id
JOIN user_tracks AS ut ON t.id = ut.track_id
GROUP BY t.id, t.title
HAVING playlists_count >= 5
ORDER BY total_play_count DESC
LIMIT 10
;

-- Register a new user.

INSERT INTO users (first_name, last_name, username, display_name, email, password, date_of_birth)
VALUES ('Audrius', 'Juknevicius', 'ajmusic01', 'AJ<3Hearify','ajhearify@gmail.com','ilovemusic123', NULL);


