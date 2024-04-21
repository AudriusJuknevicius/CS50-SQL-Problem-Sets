-- https://cs50.harvard.edu/sql/2024/psets/4/bnb/

CREATE VIEW "frequently_reviewed" AS
SELECT
    l.id,
    l.property_type,
    l.host_name,
    COUNT(r.id) as reviews
FROM "listings" as l
JOIN "reviews" as r ON l.id = r.listing_id
GROUP BY l.id
ORDER BY reviews DESC, l.property_type ASC, l.host_name ASC
LIMIT 100
;



CREATE VIEW `top10_tracks` AS
SELECT
    t.id,
    t.artist_name,
    t.title,
    t.duration,
    SUM(u.play_count) AS times_listened
FROM `tracks` AS t
JOIN `user_tracks` AS u ON t.id = u.track_id
GROUP BY t.id, t.artist_name, t.title, t.duration
ORDER BY times_listened DESC
LIMIT 10
;




