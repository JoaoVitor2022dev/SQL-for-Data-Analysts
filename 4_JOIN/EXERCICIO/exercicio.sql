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