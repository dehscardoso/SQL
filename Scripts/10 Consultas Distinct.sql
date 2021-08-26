-- Seleciona todas as embalagens e seus respectivos tamanhos da tabela de produtos
SELECT EMBALAGEM, TAMANHO FROM [TABELA DE PRODUTOS]

-- Seleciona apenas um único registro, eliminando repetições na consulta 
SELECT DISTINCT EMBALAGEM, TAMANHO FROM [TABELA DE PRODUTOS]

-- Seleciona apenas um único registro, eliminando repetições na consulta, 
-- apenas para produtos sabor laranja
SELECT DISTINCT EMBALAGEM, TAMANHO FROM [TABELA DE PRODUTOS] 
WHERE [SABOR] = 'Laranja'

-- Seleciona os primeiros três registros 
SELECT TOP 3 * FROM [TABELA DE PRODUTOS]

-- Seleciona os primeiros três registros em que o sabor do produto é laranja
SELECT TOP 3 * FROM [TABELA DE PRODUTOS] WHERE [SABOR] = 'Laranja'

-- Seleciona os três primeiros registros distintos da tabela de produos
SELECT DISTINCT TOP 3 EMBALAGEM, TAMANHO FROM [TABELA DE PRODUTOS]