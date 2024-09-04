-- Seleciona todos os dados da tabela à direita (tbDestinos) e os correspondentes da esquerda (tbReservas).
-- Caso não haja correspondência, retorna NULL nas colunas da tabela da esquerda.
SELECT * FROM tbReservas re
RIGHT JOIN tbDestinos de
ON de.id = re.id_destinos 

-- RIGHT JOIN e RIGHT OUTER JOIN são comandos idênticos
SELECT * FROM tbReservas re
RIGHT OUTER JOIN tbDestinos de
ON de.id = re.id_destinos 