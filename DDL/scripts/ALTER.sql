-- Renomeia as tabelas 
ALTER TABLE usuarios  RENAME tbUsuarios;
ALTER TABLE destinos  RENAME tbDestinos;
ALTER TABLE reservas  RENAME tbReservas;


-- Alterar a coluna de endereço para suportar 150 caracteres e não aceitar valor nulo
ALTER TABLE tbUsuarios 
MODIFY COLUMN endereco VARCHAR(150) NOT NULL;