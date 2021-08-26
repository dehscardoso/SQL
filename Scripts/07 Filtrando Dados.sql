-- Consultando matrícula e nome dos vendedores
SELECT [MATRICULA] AS IDENTIFICADOR
      ,[NOME] AS [NOME DO VENDEDOR]
FROM [TABELA DE VENDEDORES]

-- Consultando todos os produtos cadastrados
SELECT *FROM [TABELA DE PRODUTOS]

-- Consultando vendendores com comisssão maior que 10%
SELECT * FROM [TABELA DE VENDEDORES] 
WHERE [PERCENTUAL DE COMISSAO] > 0.10

-- Aumentando em 10% o preço dos produtos que tem sabor limão
UPDATE [TABELA DE PRODUTOS] SET [PRECO DE LISTA] = '1.1' * [PRECO DE LISTA]
WHERE SABOR = 'Limão'

-- Deletando produtos de sabor limão
DELETE FROM [TABELA DE PRODUTOS] WHERE [SABOR]= 'Limão'

-- Aumentando em 10% o percentual de comissão do vendedor de matrícula 00239
UPDATE [TABELA DE VENDEDORES] SET [PERCENTUAL DE COMISSAO] = '1.1' * [PERCENTUAL DE COMISSAO]
WHERE MATRICULA = '00239'

-- Mostra vendedores tem comissão maior que 9% ou a matrícula for igual a 00233
SELECT * FROM [TABELA DE VENDEDORES] 
WHERE MATRICULA = 00233 OR [PERCENTUAL DE COMISSAO] > 0.09

-- Seleciona os clientes que nasceram em 11.09.1995 e antes desta data
SELECT * FROM [TABELA DE CLIENTES] WHERE [DATA DE NASCIMENTO] <= '1995-09-11'

-- Seleciona os clientes que nasceram em 1996
SELECT * FROM [TABELA DE CLIENTES] WHERE YEAR([DATA DE NASCIMENTO]) = 1996

-- Seleciona os clientes que nasceram no mês de dezembro
SELECT * FROM [TABELA DE CLIENTES] WHERE MONTH([DATA DE NASCIMENTO]) = 12

-- Seleciona os clientes que nasceram no dia de vinte
SELECT * FROM [TABELA DE CLIENTES] WHERE DAY([DATA DE NASCIMENTO]) = 20

-- Seleciona os clientes que nasceram dia 29 E moram na Tijuca
SELECT * FROM [TABELA DE CLIENTES] WHERE DAY([DATA DE NASCIMENTO]) = 29 AND BAIRRO = 'Tijuca'

-- Seleciona os clientes que nasceram dia 20 OU moram na Tijuca
SELECT * FROM [TABELA DE CLIENTES] WHERE DAY([DATA DE NASCIMENTO]) = 20 OR BAIRRO = 'Tijuca'

-- Seleciona os produtos de A a L
SELECT * FROM [TABELA DE PRODUTOS] WHERE [EMBALAGEM] <= 'Lata'

-- Seleciona os produtos diferentes de Lata
SELECT * FROM [TABELA DE PRODUTOS] WHERE [EMBALAGEM] <> 'Lata'