.mode json
SELECT
artists.name AS "artist_name",
albums.name AS "album_name",
AVG(features.danceability) AS "average_danceability",
AVG(features.energy) AS "average_energy",
AVG(features.speechiness) AS "average_speechniness",
AVG(features.acousticness) AS "avergae_acousticness",
AVG(features.liveness) AS "average_liveness"
FROM
artists
JOIN albums ON artists.id = albums.artist_id
JOIN tracks ON albums.id = tracks.album_id
JOIN features ON tracks.id = features.track_id
GROUP BY albums.id