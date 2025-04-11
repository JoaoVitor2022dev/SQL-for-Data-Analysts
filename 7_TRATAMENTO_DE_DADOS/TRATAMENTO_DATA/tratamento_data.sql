-- TIPOS ###########################################################################
-- INTERVAL
-- DATE_TRUNC
-- EXTRACT
-- DATEDIFF

-- EXEMPLOS ########################################################################

-- (Exemplo 1) Soma de datas utilizando INTERVAL
-- Calcule a data de hoje mais 10 unidades (dias, semanas, meses, horas)

-- SOMA DE DIA 
SELECT CURRENT_DATE + 10;

-- SOMA DE SEMANA - RETURN COM DATA E HORA - APENAS TRANSFORME O RESULTADO 
SELECT CURRENT_DATE + INTERVAL '10 weeks'

-- APENAS TRANSFORME O RESULTADO 
SELECT (CURRENT_DATE + INTERVAL '10 weeks')::DATE

-- MESES  
SELECT (CURRENT_DATE + INTERVAL '10 months')::DATE

-- HORAS 
SELECT CURRENT_DATE + INTERVAL '10 hours'

-- (Exemplo 2) Truncagem de datas utilizando DATE_TRUNC
-- Calcule quantas visitas ocorreram por mês no site da empresa

SELECT 
    visit_page_date,
	COUNT(*)
FROM sales.funnel
    GROUP BY visit_page_date 
	ORDER BY visit_page_date DESC; 

-- VERIFICA O NÚMERO DE VISITAS POR MES -- 
SELECT 
   DATE_TRUNC('month', visit_page_date)::date AS visit_page_month,
   COUNT(*)
FROM sales.funnel  
   GROUP BY visit_page_month 
   ORDER BY visit_page_month DESC; 
 
-- (Exemplo 3) Extração de unidades de uma data utilizando EXTRACT
-- Calcule qual é o dia da semana que mais recebe visitas ao site

-- verificar o dia da semana 
SELECT 
    '2022-01-02'::DATE, 
	EXTRACT('dow'FROM '2022-01-30'::DATE)


-- (Exemplo 3) Extração de unidades de uma data utilizando EXTRACT
-- Calcule qual é o dia da semana que mais recebe visitas ao site


SELECT 
   EXTRACT('dow' FROM visit_page_date) AS dia_da_semana, 
   COUNT(*)
FROM sales.funnel
GROUP BY dia_da_semana; 

-- (Exemplo 4) Diferença entre datas com operador de subtração (-) 
-- Calcule a diferença entre hoje e '2018-06-01', em dias, semanas, meses e anos.

SELECT (CURRENT_DATE - '2018-06-01') 
SELECT (CURRENT_DATE - '2018-06-01')/ 7 -- dia 
SELECT (CURRENT_DATE - '2018-06-01')/ 30 -- mes
SELECT (CURRENT_DATE - '2018-06-01')/ 365 -- ano 

SELECT DATEDIFF('weeks', '2018-06-01', CURRENT_DATE)


-- RESUMO --------------------------------------------------------------------------
-- (1) O comando INTERVAL é utilizado para somar datas na unidade desejada. Caso a 
-- unidade não seja informada, o SQL irá entender que a soma foi feita em dias.
-- (2) O comando DATE_TRUNC é utilizado para truncar uma data no início do período
-- (3) O comando EXTRACT é utilizado para extrair unidades de uma data/timestamp
-- (4) O cálculo da diferença entre datas com o operador de subtração (-) retorna  
-- valores em dias. Para calcular a diferença entre datas em outra unidade é necessário
-- fazer uma transformação de unidades (ou criar uma função para isso)
-- (5) Utilize o Guia de comandos para consultar as unidades de data e hora utilizadas 
-- no SQL