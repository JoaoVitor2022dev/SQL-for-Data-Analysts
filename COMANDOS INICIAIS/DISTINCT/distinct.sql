-- tira os dados duplicado da pesquisa -- 

SELECT DISTINCT brand
FROM sales.products;

--  seleção de mais de uma coluna com DISTINCT 
--  liste as marcas e anos de moldeo distintos que contsam na tabela products

SELECT DISTINCT model_year, brand, price
FROM sales.products;



