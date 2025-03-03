-- PARA QUE SERVE ------------------------------------------------------------------
-- O comando DISTINCT é utilizado para remover linhas duplicadas e mostrar apenas valores únicos.
-- É muito usado na etapa de exploração de bases de dados.

-- SINTAXE ------------------------------------------------------------------------

SELECT DISTINCT coluna_1, coluna_2, coluna_3
FROM schema_1.tabela_1;

-- EXEMPLOS -----------------------------------------------------------------------


-- (Exemplo 1) Seleção de uma coluna sem DISTINCT
-- Lista todas as marcas de carro que constam na tabela products (incluindo duplicadas)

SELECT brand
FROM sales.products;

-- (Exemplo 2) Seleção de uma coluna com DISTINCT
-- Lista apenas as marcas de carro distintas que constam na tabela products

SELECT DISTINCT brand
FROM sales.products;

-- (Exemplo 3) Seleção de mais de uma coluna com DISTINCT
-- Lista as combinações distintas de marcas e anos de modelo da tabela products

SELECT DISTINCT brand, model_year
FROM sales.products;

-- RESUMO -------------------------------------------------------------------------
-- (1) O comando DISTINCT remove linhas duplicadas e exibe apenas valores únicos.
-- (2) É muito utilizado na exploração de dados.
-- (3) Ao selecionar múltiplas colunas, o comando retorna todas as combinações distintas de valores.
