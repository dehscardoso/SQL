-- Seleciona todos os clientes que tenham Silva no nome, independente da posição
SELECT * FROM [TABELA DE CLIENTES] WHERE [NOME] LIKE '%Silva%'

-- Seleciona todos os nomes que terminam com Silva
SELECT * FROM [TABELA DE CLIENTES] WHERE [NOME] LIKE '%Silva'

-- Seleciona todos os nomes que começam com Marcos
SELECT * FROM [TABELA DE CLIENTES] WHERE [NOME] LIKE 'Marcos%'

-- Seleciona todos os clientes que tenham Silva no nome, independente da posição
-- e que morem no bairro da Tijuca
SELECT * FROM [TABELA DE CLIENTES] WHERE [NOME] LIKE '%Silva%' AND [BAIRRO] = 'Tijuca'