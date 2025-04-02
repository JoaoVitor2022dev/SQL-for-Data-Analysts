-- EXERCÍCIOS ########################################################################

-- (Exercício 1) Crie uma coluna calculada com o número de visitas realizadas por cada
-- cliente da tabela sales.customers


SELECT * FROM sales.customers LIMIT 10; 

SELECT * FROM sales.funnel LIMIT 10; 


WITH numero_de_visita AS (
   SELECT 
       brand,
	   COUNT(visit_page_date) 
   FROM sales.funnel
   GROUP BY brand 
)

SELECT 

  first_name,
  numero_de_visita
  
FROM sales.customers AS cus
  LEFT JOIN sales.funnel AS fun
  ON cus.customer_id = fun.customer_id
  GROUP BY first_name;



-----------------------------------------------------------

-- FORMA CORRETA 

with numero_de_visitas as (

	select customer_id, count(*) as n_visitas
	from sales.funnel
	group by customer_id

)

select
	cus.*,
	n_visitas

from sales.customers as cus
left join numero_de_visitas as ndv
	on cus.customer_id = ndv.customer_id
	ORDER BY n_visitas DESC; 





  


  