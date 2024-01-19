-- list the season number of, and title of, the first episode of every season.
SELECT
    season,
    title
from
    "Episodes"
where "episode_in_season" = 1
