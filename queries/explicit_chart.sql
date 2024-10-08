.mode json
SELECT artists.name AS artist_name,
COUNT(tracks.explicit) AS "explicit_track_count"
FROM artists JOIN albums
ON artists.id = albums.artist_id
JOIN tracks
ON albums.id = tracks.album_id
WHERE tracks.explicit == true
GROUP BY artists.id
ORDER BY explicit_track_count DESC;

