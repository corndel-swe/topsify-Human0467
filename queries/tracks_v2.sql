.mode json
SELECT *
FROM tracks
WHERE explicit = true
ORDER BY duration_ms DESC
