
-- (Exemplo 2) Análise do preço versus o preço médio
-- Calcule, para cada visita ao site, quanto o preço do um veículo visitado pelo cliente
-- estava acima ou abaixo do preço médio dos veículos daquela marca 
-- (levar em consideração o desconto dado no veículo)


SELECT * FROM sales.funnel LIMIT 10; 

SELECT * FROM sales.products LIMIT 10; 

WITH preco_medio AS 
(
      SELECT brand, AVG(price) AS preco_media_da_marca
	  FROM sale.products
	  GROUP BY brand
)

SELECT 
   fun.visit_id,
   fun.visit_page_date, 
   pro.brand, 
   (pro.price * (1 * fun.discount)) AS preco_final,
   (pro.price * (1 * fun.discount) - preco_medio.preco_media_da_marca) AS preco_vs_media
   
-- CONEXÃO DAS COLUNAS PRODUCTS E REGISTROS 
FROM sale.funnel AS fun
  LEFT JOIN sale.products AS pro
  ON fun.product_id = pro.product_id

-- CONEXÃO DA TABELA CRIADA PELA SUBQUERY, 
  LEFT JOIN preco_medio 
  ON pro.brand = preco_medio.brand; 


----------------------------------------------------------------------------

with preco_medio as (

	select brand, avg(price) as preco_medio_da_marca
	from sales.products
	group by brand

)

select
	fun.visit_id,
	fun.visit_page_date,
	pro.brand,
	(pro.price * (1+fun.discount)) as preco_final,
	preco_medio.preco_medio_da_marca,
	((pro.price * (1+fun.discount)) - preco_medio.preco_medio_da_marca) as preco_vs_media

from sales.funnel as fun
left join sales.products as pro
	on fun.product_id = pro.product_id
left join preco_medio
	on pro.brand = preco_medio.brand; 

  
