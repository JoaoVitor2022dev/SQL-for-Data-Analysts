-- PARA QUE SERVE ##################################################################
-- Servem para consultar dados de outras consultas.


-- TIPOS ###########################################################################
-- Subquery no WHERE
-- Subquery com WITH
-- Subquery no FROM
-- Subquery no SELECT


-- EXEMPLOS ########################################################################

-- (Exemplo 1) Subquery no WHERE
-- Informe qual é o veículo mais barato da tabela products


SELECT * FROM sales.products
WHERE price = (SELECT MIN(price) FROM sales.products); 


-- ATENÇÃO SUBQUERY NO WHERE, ELA RETORNA APENAS UMA LINHA. 

-- (Exemplo 2) Subquery com WITH
-- Calcule a idade média dos clientes por status profissional

WITH professional_status AS (
SELECT 
   professional_status,
   (current_date - birth_date)/365 AS idade
FROM sales.customers  
)
SELECT 
    professional_status,
	AVG(idade) AS idade_media
FROM professional_status
GROUP BY professio
nal_status;



-- (Exemplo 3) Subquery no FROM
-- Calcule a média de idades dos clientes por status profissional


SELECT 

    professional_status,
	AVG(idade) AS idade_media
	
FROM 

 -- SUBQUERY DE PESQUISA -- 
   (SELECT 
   professional_status,
   (current_date - birth_date)/365 AS idade
   FROM sales.customers) AS alguma_tabela

GROUP BY professional_status;


-- (Exemplo 4) Subquery no SELECT
-- Na tabela sales.funnel crie uma coluna que informe o nº de visitas acumuladas 
-- que a loja visitada recebeu até o momento



SELECT 
   fun.visit_id,
   fun.visit_page_date, 
   sto.store_name, 

   -- SubQuery para pesquisa a contagem de visitas -- 
   ( SELECT COUNT(*) FROM sales.funnel AS fun2
     WHERE fun2.visit_page_date <= fun.visit_page_date
	   AND  fun2.store_id = fun.store_id
   ) AS visitas_acumuladas
 
-- conexão entre tabelas -- 
FROM sales.funnel AS fun
   LEFT JOIN sales.stores AS sto 
   ON fun.store_id = sto.store_id
ORDER BY store.store_name, fun.visit_page_date;


-- FORMA CORRETA -- 

select
	fun.visit_id,
	fun.visit_page_date,
	sto.store_name,
	(
		select count(*)
		from sales.funnel as fun2
		where fun2.visit_page_date <= fun.visit_page_date
			and fun2.store_id = fun.store_id
	) as visitas_acumuladas
from sales.funnel as fun
left join sales.stores as sto
	on fun.store_id = sto.store_id
order by sto.store_name, fun.visit_page_date;
