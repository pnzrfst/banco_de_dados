SELECT * FROM manutencao
SELECT * FROM vendedor
SELECT * FROM veiculo
SELECT * FROM fabricante
SELECT * FROM venda
SELECT * FROM cliente

/* Para filtrar um valor na tabela*/
SELECT * FROM veiculo WHERE preco_venda = '20000'

/* Função que calcula a média de uma coluna*/
SELECT AVG(preco_venda) FROM veiculo 

/* Função para somar valores, podendo passar um filtro também*/
SELECT SUM(preco_venda) FROM veiculo WHERE modelo = 'Golf'
SELECT SUM (valor_venda) FROM venda

/* Função para somar o valor de venda da coluna baseado numa condição*/
SELECT SUM(valor_venda) FROM venda WHERE data_venda BETWEEN '2024/11/01' AND '2024/11/25' 

/* Função para ordenar os dados da tabela dado uma condilão*/
SELECT * FROM venda ORDER BY valor_venda DESC

/* Criando um tipo de dado, e alterando uma tabela para inserir uma coluna com esse tipo de dado*/
CREATE TYPE metodo_pagamento AS ENUM ('PIX', 'DINHEIRO', 'BOLETO')
ALTER TABLE venda ADD COLUMN metodo_pagamento metodo_pagamento

/* Inserção de dados na tabela*/
INSERT INTO venda(data_venda, valor_venda, id_vendedor, id_cliente, id_veiculo) VALUES 
('2002/05/12 22:40:21', '50000', '7b8fe8bc-af06-4056-97fd-92acd5d742d0', 'f26e58a1-aa6d-4c69-8568-53aae4e08a9b', '983e7b1d-6bd5-423c-9f42-90476ae97873')


SELECT * FROM manutencao
SELECT * FROM vendedor
SELECT * FROM veiculo
SELECT * FROM fabricante
SELECT * FROM venda
SELECT * FROM cliente

/* Para filtrar um valor na tabela*/
SELECT * FROM veiculo WHERE preco_venda = '20000'

/* Função que calcula a média de uma coluna*/
SELECT AVG(preco_venda) FROM veiculo 

/* Função para somar valores, podendo passar um filtro também*/
SELECT SUM(preco_venda) FROM veiculo WHERE modelo = 'Golf'
SELECT SUM (valor_venda) FROM venda

/* Função para somar o valor de venda da coluna baseado numa condição*/
SELECT SUM(valor_venda) FROM venda WHERE data_venda BETWEEN '2024/11/01' AND '2024/11/25' 

/* Função para ordenar os dados da tabela dado uma condição*/
SELECT * FROM venda ORDER BY valor_venda DESC
SELECT * FROM cliente ORDER BY nome_cliente DESC

/* Função para contar algum dado baseado numa condição, e agrupar os dados iguais.*/
SELECT metodo_pagamento, count(id) FROM venda GROUP BY metodo_pagamento

/*Função para filtrar um dado baseado em uma condição usando o LIKE*/
SELECT * FROM cliente WHERE telefone_cliente LIKE '%65%'

/* Criando um tipo de dado, e alterando uma tabela para inserir uma coluna com esse tipo de dado*/
CREATE TYPE metodo_pagamento AS ENUM ('PIX', 'DINHEIRO', 'BOLETO')
ALTER TABLE venda ADD COLUMN metodo_pagamento metodo_pagamento

/* Inserção de dados na tabela*/
INSERT INTO venda(data_venda, valor_venda, id_vendedor, id_cliente, id_veiculo, metodo_pagamento) VALUES 
('2002/11/02 21:40:21', '45671', '7b8fe8bc-af06-4056-97fd-92acd5d742d0', 'f26e58a1-aa6d-4c69-8568-53aae4e08a9b', '983e7b1d-6bd5-423c-9f42-90476ae97873', 'BOLETO')



INSERT INTO cliente (nome_cliente, cpf, telefone_cliente, email_cliente, endereco_cliente) VALUES
('Ana Oliveira', '12345678901', '(11) 98765-4321', 'ana.oliveira@email.com', 'Rua das Flores, 123, São Paulo, SP'),
('Carlos Silva', '23456789012', '(21) 97654-3210', 'carlos.silva@email.com', 'Av. Brasil, 456, Rio de Janeiro, RJ'),
('Mariana Costa', '34567890123', '(31) 96543-2109', 'mariana.costa@email.com', 'Rua Ceará, 789, Belo Horizonte, MG'),
('João Santos', '45678901234', '(41) 95432-1098', 'joao.santos@email.com', 'Rua Paraná, 1010, Curitiba, PR'),
('Patrícia Almeida', '56789012345', '(51) 94321-0987', 'patricia.almeida@email.com', 'Rua dos Andradas, 202, Porto Alegre, RS'),
('Felipe Pereira', '67890123456', '(61) 93210-9876', 'felipe.pereira@email.com', 'Quadra 204, Bloco E, Brasília, DF'),
('Luciana Lima', '78901234567', '(71) 92109-8765', 'luciana.lima@email.com', 'Avenida Sete de Setembro, 303, Salvador, BA'),
('Rafael Costa', '89012345978', '(81) 91098-7654', 'rafael.costa@email.com', 'Rua do Sol, 404, Recife, PE'),
('Gisele Martins', '90123456789', '(91) 89987-6543', 'gisele.martins@email.com', 'Avenida Beira Mar, 505, Belém, PA'),
('Eduardo Oliveira', '01234567890', '(85) 88876-5432', 'eduardo.oliveira@email.com', 'Rua 15 de Novembro, 606, Fortaleza, CE');

