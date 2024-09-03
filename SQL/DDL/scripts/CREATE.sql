CREATE DATABASE dbViagens;

CREATE TABLE dbViagens.usuarios(
	id INT,
	nome VARCHAR(255) NOT NULL,
	email VARCHAR(100) NOT NULL UNIQUE,
	endereco VARCHAR(50) NOT NULL,
	data_nascimento DATE NOT NULL
);

CREATE TABLE dbViagens.destinos(
	id INT,
	nome VARCHAR(255) NOT NULL UNIQUE,
	descricao VARCHAR(255) NOT NULL
);

CREATE TABLE dbViagens.reservas(
	id INT,
	id_usuarios INT,
	id_destinos INT,
	data_reserva DATE,
	status VARCHAR(255) DEFAULT 'PENDENTE' 
);