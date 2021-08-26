-- Classifica os produtos em caro (maior ou igual a 12), em conta 
-- (maior ou igual a sete e menor que doze), ou barato
SELECT [NOME DO PRODUTO],
CASE WHEN [PREÇO DE LISTA] >= 12 THEN 'PRODUTO CARO'
WHEN [PRECO DE LISTA] >= 7 AND [PRECO DE LISTA] < 12 THEN 'PRODUTO EM CONTA'
ELSE 'PRODUTO BARATO' END AS 'Classificação'
FROM
[TABELA DE PRODUTOS]

-- Classifica os produtos em caro (maior ou igual a 12), em conta 
-- (maior ou igual a 7 e menor que 12), ou barato (menor que 7)
-- Agrupa pelo nome do produto em ordem crescente de média de preço
SELECT [NOME DO PRODUTO],
CASE WHEN [PRECO DE LISTA] >= 12 THEN 'PRODUTO CARO'
WHEN [PRECO DE LISTA] >= 7 AND [PRECO DE LISTA] < 12 THEN 'PRODUTO EM CONTA'
ELSE 'PRODUTO BARATO' END AS 'Classificação',
AVG([PRECO DE LISTA]) AS 'Média'
FROM
[TABELA DE PRODUTOS]
GROUP BY [NOME DO PRODUTO],
CASE WHEN [PRECO DE LISTA] >= 12 THEN 'PRODUTO CARO'
WHEN [PRECO DE LISTA] >= 7 AND [PRECO DE LISTA] < 12 THEN 'PRODUTO EM CONTA'
ELSE 'PRODUTO BARATO' END
 
-- Lista o nome do cliente, ano de nascimento e a classificação
-- Se o ano de nascimento do clientes é anterior a 1990, Adulto. Se o ano de nascimento
-- é entre 1990 e 1995 será jovem. Nascidos depois de 1995 são crianças.
SELECT NOME, YEAR([DATA DE NASCIMENTO]) AS 'Ano de Nascimento',
CASE WHEN YEAR([DATA DE NASCIMENTO]) < 1990 THEN 'ADULTO'
WHEN YEAR([DATA DE NASCIMENTO]) BETWEEN 1990 AND 1995 THEN 'JOVEM'
ELSE 'CRIANÇA' END AS 'Classificação'
FROM
[TABELA DE CLIENTES]

-- Quantidade de notas fiscais por ano
SELECT YEAR(DATA) AS 'ANO', COUNT(*) AS 'Quantidade Notas' FROM [NOTAS FISCAIS] GROUP BY YEAR(DATA)

-- Quantidade de notas fiscais por data
SELECT DATA, COUNT(*) AS 'Quantidade de Notas' FROM [NOTAS FISCAIS] GROUP BY DATA