SELECT albums.name, group_concat(tracks.name, ' ,')
FROM tracks
JOIN albums on tracks.album_id = albums.id
GROUP BY albums.name;

