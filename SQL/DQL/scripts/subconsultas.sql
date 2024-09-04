-- Seleciona todos os usuário que não tem nenhuma reserva
SELECT * FROM tbUsuarios
WHERE id NOT IN(SELECT re.id_usuarios  FROM tbReservas AS re)

-- Seleciona todos os destinos que não possuem reserva vinculada
SELECT * FROM tbDestinos
WHERE id NOT IN(SELECT re.id_destinos  FROM tbReservas AS re)