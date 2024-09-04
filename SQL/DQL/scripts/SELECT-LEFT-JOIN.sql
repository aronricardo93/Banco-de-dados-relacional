-- Seleciona todos os dados da tabela à esquerda (tbUsuarios) e os correspondentes da direita (tbReservas). 
-- Caso não haja correspondência, retorna NULL nas colunas da tabela da direita.
SELECT * FROM tbUsuarios us
LEFT JOIN tbReservas re 
ON us.id = re.id_usuarios 

-- LEFT JOIN e LEFT OUTER JOIN são comandos idênticos
SELECT * FROM tbUsuarios us
LEFT OUTER JOIN tbReservas re 
ON us.id = re.id_usuarios 
