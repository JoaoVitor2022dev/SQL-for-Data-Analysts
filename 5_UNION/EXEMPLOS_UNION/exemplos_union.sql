-- EXEMPLOS ########################################################################

-- (Exemplo 1) União simples de duas tabelas
-- Una a tabela sales.products com a tabela temp_tables.products_2

select * from sales.products

--  NOVA TABELA, COM OUTRO REGISTRO -- 
select * from temp_tables.products_2


select * from sales.products
UNION ALL
select * from temp_tables.products_2;

-- UNION SERVER PRINCIPALEMNTE PARA UNIR OS DADOS DE DUAS TABELA, SERVE MAIS PARA COLUNAS NOVAS NO DB -- 

