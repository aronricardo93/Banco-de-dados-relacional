USE dbViagens;

-- Insert individualizado
INSERT INTO usuarios(id, nome, email, data_nascimento, endereco) 
VALUES (1, 'Aron', 'aronricardo@hotmail.com', '1993-03-03', 'Rua lambda');
INSERT INTO usuarios(id, nome, email, data_nascimento, endereco) 
VALUES (2, 'Cintia', 'cintianeryo@hotmail.com', '1987-02-01', 'Rua B');
INSERT INTO usuarios(id, nome, email, data_nascimento, endereco) 
VALUES (3, 'Isis', 'isis@hotmail.com', '2023-01-29', 'Rua das flores');

-- Insert em conjunto
INSERT INTO destinos (id, nome, descricao) VALUES 
(1, 'Praia do Forte', 'Localizada na linha verde a 82 km de Salvador'),
(2, 'Cachoeira do Vale Verde', 'Uma cachoeira exuberante cercada por natureza'),
(3, 'Cidade Histórica de Pedra Alta', 'Uma cidade rica em história e arquitetura');


INSERT INTO reservas(id, id_usuarios, id_destinos, data_reserva,status) VALUES 
(1, 1, 2, '2024-09-10', 'CONFIRMADA'),
(2, 2, 1, '2024-11-05', 'PENDENTE'),
(3, 3, 3, '2025-01-20', 'CANCELADA'),
(4, 1, 1,'2024-12-30','PENDENTE');
