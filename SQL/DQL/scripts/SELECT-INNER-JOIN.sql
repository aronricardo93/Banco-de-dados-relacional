-- Seleciona e junta todos os atributos da tbUsuario e dois campos da tbReservas
SELECT us.*, re.data_reserva, re.status FROM tbUsuarios us
INNER JOIN tbReservas re
ON us.id = re.id_usuarios 

-- Seleciona e junta todos os campos das tabelas de usuarios, destinos e reservas
SELECT * FROM tbUsuarios us
INNER JOIN tbDestinos ds ON us.id = ds.id 
INNER JOIN tbReservas re ON ds.id = re.id 