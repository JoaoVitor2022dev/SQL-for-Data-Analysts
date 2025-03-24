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

-- (Exemplo 3) Identifique de quais regiões são os clientes que mais visitam o site
-- Obs: Utilizar a tabela temp_tables.regions

select * from sales.customers limit 10;
select * from temp_tables.regions limit 10;

SELECT * FROM sales.funnel;


SELECT 
     Regiao.region,
     COUNT(fun.visit_page_date) AS Visitas
     
-- Selecionando os campos que deseja extrair e a contagem dos registros de cada tabela de clientes.
    
FROM sales.funnel AS fun
LEFT JOIN sales.customers AS Cliente
    ON fun.customer_id = Cliente.customer_id
       
-- Conexão entre duas tabelas por meio do JOIN. 

LEFT JOIN temp_tables.regions AS Regiao
    ON LOWER(Cliente.city) = LOWER(Regiao.city)
    AND LOWER(Cliente.state) = LOWER(Regiao.state)
    
-- Conexão entre os registros de cidade e estado, com a verificação de que a cidade e o estado são os mesmos. 

GROUP BY Regiao.region
ORDER BY Visitas DESC; 

-- Agrupamento geral baseado no Regiao.region. Quando se usa a função COUNT, é necessário aplicar o agrupamento,
-- caso contrário, ocorrerá um erro na consulta, pois a query não saberá como organizar os dados. 


	   






















