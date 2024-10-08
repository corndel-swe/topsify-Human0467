.mode json
SELECT albums.name, albums.release_date,
albums.image_url, artists.name "artist_name"
FROM
albums
JOIN artists ON albums.artist_id = artists.id
ORDER BY artist_name;