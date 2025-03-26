-- (Exercício 1) Identifique quais as marcas de veículo mais visitada na tabela sales.funnel

SELECT * FROM sales.funnel limit 10; 

-- visit_page_date  registro visita -- 

SELECT * FROM sales.products LIMIT 10;

--  model sales.products -- 

SELECT 
	  brand,
	  COUNT(visit_page_date) AS visitas
	  
FROM sales.funnel AS fun

LEFT JOIN sales.products AS prod

ON fun.product_id = prod.product_id
  
  GROUP BY brand
  ORDER BY visitas DESC; 

-- de acordo com os dados aqui, vejo que as tres ´primeiras marcas com mais visitas no nosso website
-- é a FIA, CHEVROLET e VOLKSWAGEN 

--------------------------------------------------------------------------------------------------------

-- (Exercício 2) Identifique quais as lojas de veículo mais visitadas na tabela sales.funnel

SELECT * FROM sales.funnel limit 10; 

SELECT * FROM sales.stores LIMIT 10; 


-- EXTRAÇÃO DE DADOS -- 
SELECT 
   store_name,
   COUNT(visit_page_date) as visitas
   
--  CONECÃO DE COLUNAS -- 
FROM sales.funnel AS registro
  LEFT JOIN sales.stores AS loja  
  ON registro.store_id = loja.store_id

-- ORDERNAR A COLUNA DE LOJAS, E COLOCAR DESCRESENTE --   
  GROUP BY store_name
  ORDER BY visitas DESC;  


  ------------------------------------------------------------------------------------------------------

  -- (Exercício 3) Identifique quantos clientes moram em cada tamanho de cidade (o porte da cidade
-- consta na coluna "size" da tabela temp_tables.regions)

SELECT * FROM sales.customers; 

SELECT * FROM temp_tables.regions; 



SELECT 
    size, 
	COUNT(first_name) as clientes

-- CONEXÃO DE BANCOS DE DADOS, ENTRE O BANCO DE SALES E TEMP_TABLES
FROM sales.customers AS cliente
  LEFT JOIN temp_tables.regions AS maps
  ON LOWER(cliente.city )= LOWER(maps.city) 
  AND LOWER(cliente.state) = LOWER(maps.state)

  -- ORDENAR A CONTAGEM DE REGIONS E COLCOAR EM DESCRESENTE -- 
  GROUP BY size
  ORDER BY clientes DESC;


  






