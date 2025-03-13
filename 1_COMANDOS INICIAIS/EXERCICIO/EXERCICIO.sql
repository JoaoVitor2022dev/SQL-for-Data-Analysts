-- EXERCICIOS -- 

-- 1 - selecione os nomes de cidade  distintas que existe no estado de minas gerais em ordem alfabetica 
-- ( dados da tabela sales.custumers )

SELECT * FROM sales.customers LIMIT 10;


-- RESOLUÇÃO DE EXERCICIO

SELECT DISTINCT city 
FROM sales.customers 
WHERE state = 'MG'
ORDER BY city; 


-- (Exercício 2) Selecione o visit_id das 10 compras mais recentes efetuadas
-- (dados da tabela sales.funnel)

-- RESOLUÇÃO DE EXERCICIO

select visit_id
from sales.funnel 
where paid_date is not null
order by paid_date desc
limit 10;


-- (Exercício 3) Selecione todos os dados dos 10 clientes com maior score nascidos
-- após 01/01/2000 (dados da tabela sales.customers)


SELECT * FROM sales.customers;

SELECT * 
FROM sales.customers
WHERE birth_date >= '01/01/2000'
ORDER BY score DESC
LIMIT 10; 





