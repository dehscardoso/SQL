-- Soma o limite de crédito dos clientes de cada estado e agrupa por estado
SELECT ESTADO,
    SUM([LIMITE DE CREDITO])
FROM [TABELA DE CLIENTES]
GROUP BY ESTADO 


-- Seleciona o estado em que a soma do limite de crédito dos clientes seja
-- maior ou igual a 850000 e agrupa por estado
SELECT ESTADO,
    SUM([LIMITE DE CREDITO])
FROM [TABELA DE CLIENTES]
GROUP BY ESTADO
HAVING SUM([LIMITE DE CREDITO]) >= 850000 


-- Apresenta o preço de lista total para cada embalagem, preço máximo e preço mínimo
SELECT EMBALAGEM,
    SUM([PRECO DE LISTA]) AS 'Total Preço de Lista',
    MAX([PRECO DE LISTA]) AS 'Preço de Lista Max.',
    MIN([PREÇO DE LISTA]) AS 'Preço de Lista Mín.'
FROM [TABELA DE PRODUTOS]
GROUP BY EMBALAGEM 


-- Seleciona o preço máximo e mínimo de lista para os produtos que tenham a soma total
-- do preço de lista menor ou igual a 80
SELECT EMBALAGEM,
    MAX([PRECO DE LISTA]) AS 'Preço de Lista Max.',
    MIN([PRECO DE LISTA]) AS 'Preço de Lista Mín.'
FROM [TABELA DE PRODUTOS]
GROUP BY EMBALAGEM
HAVING SUM([PRECO DE LISTA]) <= 80 


-- Seleciona o preço máximo e mínimo de lista para os produtos que tenham a soma total
-- do preço de lista menor ou igual a 80 e preço máximo de lista maior ou igual a 6
SELECT EMBALAGEM,
    MAX([PRECO DE LISTA]) AS 'Preço de Lista Max.',
    MIN([PRECO DE LISTA]) AS 'Preço de Lista Mín.'
FROM [TABELA DE PRODUTOS]
GROUP BY EMBALAGEM
HAVING SUM([PRECO DE LISTA]) <= 80
    AND MAX([PRECO DE LISTA]) >= 6 
    
    
-- Seleciona os clientes que fizeram mais de 2000 compras em 2016
SELECT CPF,
    COUNT(*) AS 'Total de compras'
FROM [NOTAS FISCAIS]
WHERE YEAR(DATA) = 2016
GROUP BY CPF
HAVING COUNT(*) > 2000