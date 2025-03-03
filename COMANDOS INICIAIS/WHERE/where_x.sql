-- FILTRA AS COLUNAS NA TABELAS, E TAMBEM FORMA DE CONDIÇÃO -- 

SELECT email, state 
FROM sales.customers
WHERE state = 'SC';

-- FILTAR OS CLIENTES QUE ESTÃO EM SANTA CATARINA E NO MATO GROSSO DO SUL 

SELECT email, state  
FROM sales.customers
WHERE state = 'SC' OR state = 'MS';


-- FILTRO DE CONDIÇÃO COM DATAS, COM UMA ANALISE NO TIME, VERIFICARAM QUE CLIENTE COM A IDADE ACIMA DE 30 ANOS TEM MAIS 
-- PROPENSOS A EFETUAR A COMPRA 
 
SELECT email, state, birth_date  
FROM sales.customers
WHERE (state = 'SC' OR state = 'MS') AND birth_date < '19951228';


SELECT DISTINCT birth_date
FROM sales.customers;