SELECT
  ar.artist AS artista,
  ab.album AS album,
  COUNT(fl.artist_id) AS seguidores
FROM albums ab
JOIN artists ar
  ON ar.artist_id = ab.artist_id
JOIN follows fl
  ON ar.artist_id = fl.artist_id
GROUP BY ab.album_id
ORDER BY seguidores DESC, artista, album;