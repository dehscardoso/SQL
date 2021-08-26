--Inserir registro na tabela de produtos
INSERT INTO [TABELA DE PRODUTOS]
([CODIGO DO PRODUTO],[NOME DO PRODUTO],EMBALAGEM,TAMANHO,SABOR,[PRECO DE LISTA])
VALUES ('1040107','Light - 350 ml - Melância', 'Lata', '350 ml','Melância',4.56)

--Inserir dois registros na tabela de vendedores
INSERT INTO [TABELA DE VENDEDORES]
([MATRICULA], [NOME], [PERCENTUAL DE COMISSAO])
VALUES ('00233','José Geraldo da Fonseca',0.1),
       ('00236','Cláudia Morais',0.08)

-- Nessa inserção os dados a serem inseridos devem estar na mesma ordem dos campos da tabela
INSERT INTO [TABELA DE PRODUTOS]
VALUES  ('1004327','Videira do Campo - 1,5L - Melância', 'PET', '1.5L','Melância',19.51)      