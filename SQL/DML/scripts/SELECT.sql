-- Selecionar todos os registros da tabela usuarios
SELECT * FROM dbViagens.usuarios;

-- Selecionar o nome e email da tabela usuarios
SELECT u.nome, u.email FROM usuarios AS u;

-- Selecionar o nome, email e data de nascimento dos usuarios nascidos entre 01/10/1980 e 28/01/2023
SELECT u.nome, u.email, u.data_nascimento FROM usuarios AS u 
WHERE data_nascimento 
BETWEEN ('1980-01-01') AND ('2023-01-28');

-- Selecionar os usuários que possuem o nome "Cintia"
SELECT * FROM usuarios 
WHERE nome = 'Cintia';

-- Selecionar as reservas do dia 30, independentemente do mês e ano
SELECT * FROM reservas 
WHERE data_reserva LIKE "%30%"; 