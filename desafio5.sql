SELECT
  s.song AS cancao,
  COUNT(ph.song_id) AS reproducoes
FROM songs s
JOIN play_history ph
  ON ph.song_id = s.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;