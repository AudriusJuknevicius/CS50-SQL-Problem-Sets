--write a SQL query to list the titles of all episodes in Cyberchase’s original season, Season 1.

select
    id,
    season,
    title
from "Episodes"
where "season" = 1
;
