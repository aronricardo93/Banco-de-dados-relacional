-- Renomeia as tabelas 
ALTER TABLE usuarios  RENAME tbUsuarios;
ALTER TABLE destinos  RENAME tbDestinos;
ALTER TABLE reservas  RENAME tbReservas;


-- Alterar a coluna de endereço para suportar 150 caracteres e não aceitar valor nulo
ALTER TABLE tbUsuarios 
MODIFY COLUMN endereco VARCHAR(150) NOT NULL;

-- Adicionar auto incremento e definir a coluna id como PK na tabela usuarios(Com um único comando)
ALTER TABLE tbUsuarios 
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY(id);

-- Adicionar auto incremento e definir a coluna id como PK na tabela destinos(Comandos separados)
ALTER TABLE tbDestinos ADD PRIMARY KEY(id);
ALTER TABLE tbDestinos MODIFY COLUMN id INT AUTO_INCREMENT;

-- Adicionar uma PK auto incrementável(id) e duas FKs(Chaves estrangeiras) na tabela reservas
ALTER TABLE tbReservas 
MODIFY COLUMN id INT AUTO_INCREMENT PRIMARY KEY,
ADD CONSTRAINT FK_reservas_usuarios FOREIGN KEY(id_usuarios) REFERENCES tbUsuarios(id),
ADD CONSTRAINT FK_reservas_destinos FOREIGN KEY(id_destinos) REFERENCES tbDestinos(id);

