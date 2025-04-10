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









