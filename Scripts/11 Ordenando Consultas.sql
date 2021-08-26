-- Ordena os registros da tabela de produtos em ordem crescente pelo preço de lista
SELECT * FROM [TABELA DE PRODUTOS] ORDER BY [PREÇO DE LISTA]

-- Ordena os registros da tabela de produtos em ordem decrescente pelo preço de lista
SELECT * FROM [TABELA DE PRODUTOS] ORDER BY [PREÇO DE LISTA] DESC

-- Ordena alfabeticamente os registros da tabela de produtos 
SELECT * FROM [TABELA DE PRODUTOS] ORDER BY [NOME DO PRODUTO]

-- Ordena alfabeticamente por embalagem e depois por nome do produto
SELECT [EMBALAGEM], [NOME DO PRODUTO] FROM [TABELA DE PRODUTOS] 
ORDER BY [EMBALAGEM], [NOME DO PRODUTO]

-- Mostra os registros em ordem alfabética reversa de embalarem 
-- e alfabeticamente o nome dos produtos
SELECT [EMBALAGEM], [NOME DO PRODUTO] FROM [TABELA DE PRODUTOS] 
ORDER BY [EMBALAGEM] DESC, [NOME DO PRODUTO] ASC