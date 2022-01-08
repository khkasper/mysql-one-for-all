SELECT
  ar.artist AS artista,
  ab.album AS album
FROM artists ar
JOIN albums ab
  ON ar.artist_id = ab.artist_id
WHERE artist = "Walter Phoenix"
ORDER BY album;