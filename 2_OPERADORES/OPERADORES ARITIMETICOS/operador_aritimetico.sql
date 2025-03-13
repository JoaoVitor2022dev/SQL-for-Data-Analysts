-- CRIE UMA COLUNA CALCULADA -- 
-- 1 - CRIE UMA COLUNA CONTENDO A IDADE DO CLIENTE DA TABELA SALES.CUSTUMERS 

SELECT * FROM sales.customers LIMIT 10;

SELECT 
    email, 
    birth_date,
	(current_date - birth_date) / 365 AS idade_do_cliente
FROM sales.customers;


SELECT 
    email, 
    birth_date,
	(current_date - birth_date) / 365 AS "idade do cliente"
FROM sales.customers;


--- EXEMPLO 2 -- 

-- exemplo 2 -  utilização da coluna calculadora nas queries -- 
-- liste os 10 clientes mais novos da 5tabela custumers -- 


SELECT 
    email, 
    birth_date,
	(current_date - birth_date) / 365 AS "idade do cliente"
FROM sales.customers
ORDER BY "idade do cliente";


-- exemplo 3 - criação de colun calculada com strings 
-- crie a coluna "nome_completo" contendo o nome completo do cliente 

SELECT 
    first_name || ' ' || last_name
from sales.customers;	


-- FORMA CLEAN  

SELECT INITCAP(first_name) || ' ' || INITCAP(last_name) AS "Nome Completo"
FROM sales.customers;








