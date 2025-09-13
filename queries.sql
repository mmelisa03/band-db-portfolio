-- 1) Albums with track count and total duration
SELECT
  a.album_id,
  a.title AS album_title,                     -- clearer column name
  a.release_date,
  COUNT(s.song_id) AS track_count,            -- how many songs belong to this album
  COALESCE(SUM(s.duration), INTERVAL '0') AS total_duration -- adds up song durations, defaults to 0
FROM album a                                  -- album is the parent, song is the child
LEFT JOIN song s ON s.album_id = a.album_id
GROUP BY a.album_id, a.title, a.release_date  -- need GROUP BY because of aggregates
ORDER BY a.release_date DESC NULLS LAST, a.title; -- newest albums first, ties broken alphabetically

-- 2) Shows with fan photo engagement
SELECT
  sh.show_id,                                -- parent key
  sh.venue,
  sh.city,
  sh.date,
  COUNT(pg.photo_id) AS fan_photo_count       -- counts only non-NULL photo IDs
FROM show sh
LEFT JOIN photo_gallery pg ON pg.show_id = sh.show_id -- child rows (photos) linked to parent (show)
GROUP BY sh.show_id, sh.venue, sh.city, sh.date
ORDER BY sh.date DESC, sh.venue;

-- 3) Media library joined to songs and albums
SELECT
  m.media_id,
  m.title       AS media_title,
  m.media_type,
  m.url,
  s.title       AS song_title,
  a.title       AS album_title
FROM media m
LEFT JOIN song s  ON s.song_id  = m.song_id
LEFT JOIN album a ON a.album_id = s.album_id
ORDER BY m.media_type, album_title, song_title, media_title;
