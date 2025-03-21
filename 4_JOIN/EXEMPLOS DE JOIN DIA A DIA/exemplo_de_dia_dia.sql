-- EXERCÍCIOS ########################################################################

-- (Exemplo 1) Identifique qual é o status profissional mais frequente nos clientes 
-- que compraram automóveis no site

SELECT 
   cus.professional_status, 
   COUNT(fun.paid_date) AS pagamentos

FROM sales.funnel AS FUN 
LEFT JOIN sales.customers AS CUS 
   on fun.customer_id = fun.customer_id 

GROUP BY cus.professional_status
ORDER BY pagamentos DESC
   
   LIMIT 10; 

SELECT * FROM sales.funnel; 


-- (Exemplo 2) Identifique qual é o gênero mais frequente nos clientes que compraram
-- automóveis no site. Obs: Utilizar a tabela temp_tables.ibge_genders

SELECT 
     ibge.gender,
	 COUNT(fun.paid_date)

-- SELECIONANDO A TABELA 	 
     FROM sales.funnel AS fun 

-- JOIN EM COLUNAS -- 
LEFT JOIN sales.customers AS cus 
   ON fun.customer_id = cus.customer_id

-- JOIN EM TABELAS --    
LEFT JOIN temp_tables.ibge_genders AS ibge
   ON LOWER(cus.first_name) = ibge.first_name
   
GROUP BY ibge.gender; 

-- 
