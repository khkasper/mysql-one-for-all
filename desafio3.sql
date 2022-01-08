SELECT
  u.user AS usuario,
  COUNT(ph.user_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(s.duration) / 60, 2) AS total_minutos
FROM play_history ph
JOIN users u
  ON u.user_id = ph.user_id
JOIN songs s
  ON s.song_id = ph.song_id
GROUP BY usuario
ORDER BY usuario;