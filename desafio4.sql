SELECT
  u.user AS usuario,
  IF(
    MAX(YEAR(ph.played_at)) = 2021, "Usuário ativo", "Usuário inativo"
  ) AS condicao_usuario
FROM play_history ph
JOIN users u
  ON u.user_id = ph.user_id
GROUP BY usuario
ORDER BY usuario;