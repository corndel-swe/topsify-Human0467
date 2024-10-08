.mode json
SELECT
albums.name AS "album_name",
AVG(features.loudness) AS "average_loudness",
albums.release_date AS "release_date"
FROM
albums
JOIN tracks ON albums.id = tracks.album_id
JOIN features ON tracks.id = features.track_id
GROUP BY albums.id;
