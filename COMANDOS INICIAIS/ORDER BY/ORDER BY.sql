-- LISTAR PRODUTOS DA TABELA PRODUCT NA ORDEM CRESCENTE COM BASE NO PREÇO 
SELECT * FROM sales.products ORDER BY price DESC;

-- LISTE OS ESTADOS DISTINTOS DA TABELA CUSTUMERS NA ORDEM CRESCENTE 
SELECT DISTINCT state 
FROM sales.customers
ORDER BY STATE; 
