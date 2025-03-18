
-- (Exercício 1) Conte quantos clientes da tabela sales.customers tem menos de 30 anos 

-- FORMA INCORRETA ABAIXO: 
SELECT 
    COUNT(birth_date)
FROM sales.customers
GROUP BY state
HAVING COUNT(birth_date)  < "1973-01-24"; 


-- FORMA CORRETA DA PESQUISA DE DADOS: 
SELECT COUNT(*)
FROM sales.customers
WHERE ((current_date - birth_date) / 365 ) < 30


-- (Exercício 2) Informe a idade do cliente mais velho e mais novo da tabela sales.customers


-- FORMA INCORRETA:
SELECT 
     MAX(birth_date) AS new_customer,
	 MIN(birth_date) AS old_custumer
FROM sales.customers;


-- FORMA CORRETA: 
SELECT 
     MAX((current_date - birth_date) / 365 ) AS new_customer,
	 MIN((current_date - birth_date) / 365 ) AS old_custumer
FROM sales.customers;


-- (Exercício 3) Selecione todas as informações do cliente mais rico da tabela sales.customers
-- (possívelmente a resposta contém mais de um cliente)


-- FORMA INCORRETA 
SELECT * 
FROM sales.customers
WHERE (
SELECT MAX(income)
FROM sales.customers; 
); 


-- FORMA CORRETA 
select *
from sales.customers
where income = (select max(income) from sales.customers)
