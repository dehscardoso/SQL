-- Seleciona os produtos de sabor manga ou com tamanho de 700mL
SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] = 'Manga' OR [TAMANHO] = '700 ml' 

-- Seleciona os produtos de sabor manga e com tamanho de 700mL
SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] = 'Manga' AND [TAMANHO] = '700 ml' 

-- Seleciona todos os produtos, exceto os que sejam de sabor manga e de 700mL
SELECT * FROM [TABELA DE PRODUTOS] WHERE 
NOT ([SABOR] = 'Manga' AND [TAMANHO] = '700 ml')

-- Seleciona todos os produtos, exceto os de sabor manga ou de 700mL
SELECT * FROM [TABELA DE PRODUTOS] WHERE 
NOT ([SABOR] = 'Manga' OR [TAMANHO] = '700 ml')

-- Seleciona os produtos de sabor manga e que não sejam de 700mL
SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] = 'Manga' AND NOT ( [TAMANHO] = '700 ml')

-- Seleciona os produtos de sabor manga e laranja
SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] IN ('Manga', 'Laranja')

-- Seleciona os produtos de sabor manga ou laranja
SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] = 'Manga' OR [SABOR] ='Laranja'

-- Seleciona os produtos que não sejam de sabor manga nem laranja
SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] NOT IN ('Manga', 'Laranja')

-- Seleciona todos os produtos, exceto os de sabor manga ou laranja
SELECT * FROM [TABELA DE PRODUTOS] WHERE 
NOT ([SABOR] = 'Manga' OR [SABOR] ='Laranja')

-- Seleciona os produtos que sejam sabor manga e laranja e tenham preço maior que 10
SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] IN ('Manga', 'Laranja') AND [PRECO DE LISTA] > 10

-- Seleciona os produtos de sabor manga e laranja e preço de lista entre 10 e 13
SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] IN ('Manga', 'Laranja') AND [PRECO DE LISTA] BETWEEN 10 AND 13

-- Seleciona os produtos de sabor manga e laranja e preço de lista maior ou igual a 10 
-- e menor ou igual a 13
SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] IN ('Manga', 'Laranja') AND [PRECO DE LISTA] >= 10 AND [PRECO DE LISTA] <= 13