-- https://cs50.harvard.edu/sql/2024/project/#entity-relationship-diagram
-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database


SELECT
    p.playlist_name,
    COUNT(pt.track_id) AS total_tracks
FROM playlists as p
JOIN playlist_tracks as pt ON p.playlist_id = pt.playlist.id
GROUP BY p.playlist_id, p.playlist_name
;

