-- PARA QUE SERVEM #################################################################
-- Servem para criar comandos personalizados de scripts usados recorrentemente.


-- EXEMPLOS ########################################################################

-- (Exemplo 1) Crie uma função chamada DATEDIFF para calcular a diferença entre
-- duas datas em dias, semanas, meses, anos

select (current_date - '2018-06-01')
select (current_date - '2018-06-01')/7
select (current_date - '2018-06-01')/30
select (current_date - '2018-06-01')/365

select datediff('weeks', '2018-06-01', current_date)

-- criar função 

CREATE OR REPLACE FUNCTION datediff(unidade varchar, data_inicial date, data_final date)
RETURNS integer
LANGUAGE sql
AS
$$
    SELECT
        CASE 
            WHEN unidade IN ('d', 'day', 'days') THEN (data_final - data_inicial)
            WHEN unidade IN ('w', 'week', 'weeks') THEN (data_final - data_inicial) / 7
            WHEN unidade IN ('m', 'month', 'months') THEN (data_final - data_inicial) / 30
            WHEN unidade IN ('y', 'year', 'years') THEN (data_final - data_inicial) / 365
        END
$$;


select datediff;('year', '2018-06-01', current_date)

-- (Exemplo 2) Delete a função DATEDIFF criada no exercício anterior

DROP FUNCTION datediff;

-- RESUMO ##########################################################################
-- (1) Para criar funções, utiliza-se o comando CREATE FUNCTION
-- (2) Para que o comando funcione é obrigatório informar (a) quais as unidades dos 
-- INPUTS (b) quais as unidades dos OUTPUTS e (c) em qual linguagem a função será escrita
-- (3) O script da função deve estar delimitado por $$
-- (4) Para deletar uma função utiliza-se o comando DROP FUNCTION







