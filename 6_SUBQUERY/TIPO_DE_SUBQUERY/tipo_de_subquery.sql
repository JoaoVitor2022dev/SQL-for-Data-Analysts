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
GROUP BY professional_status;
