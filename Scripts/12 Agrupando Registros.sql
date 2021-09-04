--
SELECT ESTADO,
    [LIMITE DE CREDITO]
FROM [TABELA DE CLIENTES] 


-- Soma o limite de crédito dos clientes e agrupa por estado
SELECT ESTADO,
    SUM([LIMITE DE CREDITO])
FROM [TABELA DE CLIENTES]
GROUP BY ESTADO 


-- Apresenta a média de limite de crédito dos clientes e agrupa por estado
SELECT ESTADO,
    AVG([LIMITE DE CREDITO])
FROM [TABELA DE CLIENTES]
GROUP BY ESTADO 


-- Apresenta o preço máximo do produto para cada tipo de embalagem
SELECT EMBALAGEM,
    MAX([PREÇO DE LISTA])
FROM [TABELA DE PRODUTOS]
GROUP BY EMBALAGEM 


-- Apresenta o preço mínimo do produto para cada tipo de embalagem
SELECT EMBALAGEM,
    MIN([PREÇO DE LISTA])
FROM [TABELA DE PRODUTOS]
GROUP BY EMBALAGEM 


-- Ordena os produtos por embalagem
SELECT [NOME DO PRODUTO],
    EMBALAGEM
FROM [TABELA DE PRODUTOS]
ORDER BY EMBALAGEM 


-- Conta a quantidade de produtos para cada tipo de embalagem
SELECT EMBALAGEM,
    COUNT(*)
FROM [TABELA DE PRODUTOS]
GROUP BY EMBALAGEM 


-- Soma o limite de crédito para cada bairro do estado de SP
SELECT BAIRRO,
    SUM([LIMITE DE CREDITO]) AS 'Limite de Crédito Total'
FROM [TABELA DE CLIENTES]
WHERE [ESTADO] = 'SP'
GROUP BY BAIRRO 


-- Soma o limite de crédito para cada bairro do estado de SP
-- Apresenta os registros em ordem alfabética reversa de bairro
SELECT BAIRRO,
    SUM([LIMITE DE CREDITO]) AS 'Limite de Crédito Total'
FROM [TABELA DE CLIENTES]
WHERE [ESTADO] = 'SP'
GROUP BY BAIRRO
ORDER BY BAIRRO DESC 


-- Soma o limite de crédito para cada bairro do estado de SP
-- Agrupa por bairro e estado (como foram selecionados dois campos no select, 
-- os dois devem ser especificados no group by) 
SELECT BAIRRO,
    ESTADO,
    SUM([LIMITE DE CREDITO]) AS 'Limite de Crédito Total'
FROM [TABELA DE CLIENTES]
WHERE [ESTADO] = 'SP'
GROUP BY BAIRRO,
    ESTADO