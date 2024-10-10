CREATE TABLE IF NOT EXISTS playlists(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    name TEXT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS playlist_tracks(
    playlist_id INTEGER,
    track_id TEXT,
    FOREIGN KEY (playlist_id) REFERENCES playlists(id),
    FOREIGN KEY (track_id) REFERENCES tracks(id)
);

--INSERT INTO PLAYLISTS (user_id, name)
--VALUES(1, 'rock'),
--(2, 'pop'),
--(3, 'jazz'),
--(3, 'kitchen_tunes'),
--(5, 'classical'),
--(6, 'hip_hop'),
--(6, 'indie'),
--(8, 'lofi_beats'),
--(9, 'reggae'),
--(10, 'metal'),
--(10, 'folk'),
--(12, 'soul'),
--(13, 'punk'),
--(13, 'electronic'),
--(15, 'country'),
--(17, 'rnb'),
--(17, 'latin'),
--(19, 'blues'),
--(20, 'funk'),
--(20, 'ambient');


INSERT INTO playlist_tracks (playlist_id, track_id )
Values
(1, '7txV7LsVsYFUZWKupu7XF5'),
(2, '7qjCmoM2kKXAt2QIPhLVIg'),
(2, '7yBzVIXUUF4Hrarh1ODwpP'),
(3, '7tXSXFQh2V0rLDGHdaQEVc'),
(4, '7wcl0YJBQ0ygTUUaXLRM1g'),
(4, '7rLDARtJALM7QdiJDMXW7m'),
(5, '7skxtd9x0d05fjz4D7w3t2'),
(6, '7ugGN2cNJtdu10hAMH6ygQ'),
(6, '7txHCetvxNJeJzATqI0NBc'),
(7, '7rn89zBlXChGFTNHFZA8un'),
(8, '7zJld1LpGmLsPt8IGOc0KL'),
(9, '7q9Sr5kCkha0L49GAQctHl'),
(9, '7us9KL6g1bLBAoUSVu7Qzb'),
(10, '7y2mezWO3hkfyugI2s9WQp'),
(11, '7rxzL7rKUVa7epgDFjecGW'),
(12, '7pas6O1LYbaeChEFQBhPFU'),
(13, '7toYVidBIpAmM8Ife3LGrP'),
(13, '7v289GXTGa7BuLL6l1Y5ZA'),
(14, '7vzBuI9M5YOm9IvIpcIsCa'),
(15, '7yqQNA3zo9oOIdWE0QEjIh'),
(15, '7zLMYtNJcabv4h4wBnjNQI'),
(16, '7toYVidBIpAmM8Ife3LGrP'),
(17, '7us9KL6g1bLBAoUSVu7Qzb'),
(18, '7pas6O1LYbaeChEFQBhPFU'),
(19, '7y2mezWO3hkfyugI2s9WQp'),
(20, '7txV7LsVsYFUZWKupu7XF5');

Select *
from playlist_tracks
