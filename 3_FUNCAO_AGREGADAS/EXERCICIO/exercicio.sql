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



-- (Exercício 4) Conte quantos veículos de cada marca tem registrado na tabela sales.products
-- Ordene o resultado pelo nome da marca


SELECT DISTINCT COUNT(brand)
FROM sales.products
WHERE brand = (SELECT model FROM sales.products);

SELECT * FROM sales.products;



select brand, count(*)
from sales.products
group by brand
order by brand; 

SELECT brand, COUNT(*)
FROM sales.products

-- NESTE CASO O NUMERO DE CARROS DA MESMA MARA FICARIA COMO UMA ÚNICA CONTAGEM, MAIS AGORA ELE FICA AGRUPADO PARA CA
-- CADA UM DOS COM AS INFORMAÇOES DO LADO, ( MODELOS | NUMERO DE MODELOS ).  

GROUP BY brand

-- AGORA COM O ORDER BY ORDENAMOS POR ORDEM ALFABETICA 

ORDER BY brand;


--------------------------------------------------------------

-- (Exercício 5) Conte quantos veículos existem registrados na tabela sales.products LIMIT 10;
-- por marca e ano do modelo. Ordene pela nome da marca e pelo ano do veículo

-- minha forma de fazer a pesquisa em SQL 

SELECT * FROM sales.products LIMIT 10;

SELECT brand,
       model_year, 
	   COUNT(*) AS Numero_de_Carro
FROM sales.products
GROUP BY brand, model_year
ORDER BY brand, Numero_de_Carro DESC; 

-- FORMA DESCRITA PELO EXERCICIO 

select brand, model_year, count(*)
from sales.products
group by brand, model_year
order by brand , model_year

--------------------------------------------------------------------

-- (Exercício 6) Conte quantos veículos de cada marca tem registrado na tabela sales.products
-- e mostre apenas as marcas que contém mais de 10 veículos registrados

-- forma incorreta 

SELECT brand,
       COUNT(*) AS Numero_de_Carro
FROM sales.products
WHERE Numero_de_Carro > 10
GROUP BY brand; 


-- forma correta USANDO O HAVING 

SELECT brand,
       COUNT(*)
FROM sales.products
GROUP BY brand
HAVING COUNT(*) > 10; 










