SELECT
  s.song AS nome,
  COUNT(*) AS reproducoes
FROM play_history ph
JOIN songs s
  ON ph.song_id = s.song_id
JOIN users u
  ON ph.user_id = u.user_id
JOIN plans p
  ON p.plan_id = u.plan_id
WHERE p.plan IN("gratuito", "pessoal")
GROUP BY nome
ORDER BY nome;