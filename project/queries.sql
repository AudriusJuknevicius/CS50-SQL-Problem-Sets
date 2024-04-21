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


