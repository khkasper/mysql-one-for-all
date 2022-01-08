SELECT
  COUNT(ph.user_id) AS quantidade_musicas_no_historico
FROM play_history ph
JOIN users u
  ON u.user_id = ph.user_id
WHERE u.user = "Bill";